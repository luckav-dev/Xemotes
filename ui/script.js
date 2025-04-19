const emotesContainer = document.getElementById('emotes-container');
const searchInput = document.getElementById('search-input');
const contextMenu = document.getElementById('context-menu');
const addFavoriteBtn = document.getElementById('add-favorite');
const categoryDropdown = document.getElementById('category-dropdown');
const currentCategory = document.getElementById('current-category');
let emotes = [];
let currentCategoryValue = 'all';
let favorites = [];
let selectedEmote = null;
let searchTimeout = null;
let isDropdownOpen = false;

function toggleMenu(visible) {
    const container = document.getElementById('emote-container');
    if (!container) {
        return;
    }
    
    if (visible) {
        container.style.display = 'flex';
        
        container.offsetHeight;
        
        setTimeout(() => {
            container.classList.add('visible');
            
            SetNuiFocus(true, true);
            
            loadEmotes();
            
            setupBasicInteractions();
        }, 10);
    } else {
        container.classList.remove('visible');
        
        setTimeout(() => {
            container.style.display = 'none';
            
            SetNuiFocus(false, false);
        }, 200);
    }
}

function toggleCategoryDropdown() {
    isDropdownOpen = !isDropdownOpen;
    
    const dropdown = document.getElementById('category-dropdown');
    if (dropdown) {
        if (isDropdownOpen) {
            dropdown.classList.add('visible');
        } else {
            dropdown.classList.remove('visible');
        }
    }
}

function loadEmotes(category = 'all') {
    currentCategoryValue = category;
    
    updateCategorySelector(category);
    
    fetch(`https://${GetParentResourceName()}/getEmotes`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            category: category
        })
    })
    .then(response => response.json())
    .then(data => {
        emotes = data.emotes || [];
        favorites = data.favorites || [];
        renderEmotes();
    })
    .catch(error => {
    });
}

function updateCategorySelector(category) {
    const categoryItems = document.querySelectorAll('.category-item');
    let icon = 'home';
    let text = 'Inicio';
    
    categoryItems.forEach(item => {
        if (item.dataset.category === category) {
            icon = item.querySelector('i').textContent;
            text = item.querySelector('span').textContent;
        }
    });
    
    currentCategory.innerHTML = `
        <i class="material-icons">${icon}</i>
        <span>${text}</span>
        <i class="material-icons dropdown-icon">arrow_drop_down</i>
    `;
}

function normalizeText(text) {
    return text.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLowerCase();
}

function truncateText(text, maxLength = 15) {
    if (text.length <= maxLength) return text;
    return text.substring(0, maxLength) + '...';
}

function renderEmotes() {
    const searchTerm = normalizeText(searchInput.value.trim());
    const isSearchMode = searchTerm !== '';
    
    if (isSearchMode) {
        searchInput.classList.add('global-search');
    } else {
        searchInput.classList.remove('global-search');
    }
    
    let filteredEmotes = emotes.filter(emote => {
        if (!searchTerm) return true;
        
        const normalizedName = normalizeText(emote.name);
        const normalizedCommand = normalizeText(emote.command);
        
        return normalizedName.includes(searchTerm) || 
               normalizedCommand.includes(searchTerm) ||
               normalizedName.split(' ').some(part => part.includes(searchTerm)) ||
               normalizedCommand.split(' ').some(part => part.includes(searchTerm)) ||
               searchTerm.length >= 3 && (normalizedName.includes(searchTerm) || normalizedCommand.includes(searchTerm));
    });
    
    if (currentCategoryValue === 'gangsigns' && !isSearchMode) {
        filteredEmotes.sort((a, b) => {
            const aType = a.command.match(/^([a-z]+)/)[0];
            const bType = b.command.match(/^([a-z]+)/)[0];
            
            if (aType !== bType) {
                const typeOrder = {'agsign': 1, 'bgsign': 2, 'gsign': 3};
                return (typeOrder[aType] || 99) - (typeOrder[bType] || 99);
            }
            
            const aNum = parseInt(a.command.match(/\d+/)?.[0] || 0);
            const bNum = parseInt(b.command.match(/\d+/)?.[0] || 0);
            return aNum - bNum;
        });
    }
    
    emotesContainer.innerHTML = '';
    
    if (isSearchMode) {
        emotesContainer.classList.add('search-result');
        
        const searchIndicator = document.createElement('div');
        searchIndicator.className = 'search-results-indicator';
        searchIndicator.textContent = `Búsqueda global: "${searchTerm}"`;
        emotesContainer.appendChild(searchIndicator);
    } else {
        emotesContainer.classList.remove('search-result');
    }

    if (filteredEmotes.length === 0) {
        const noResults = document.createElement('div');
        noResults.className = 'no-results';
        noResults.innerHTML = `
            <i class="material-icons">search_off</i>
            <p>No se encontraron emotes con "${searchInput.value}"</p>
        `;
        emotesContainer.appendChild(noResults);
        return;
    }

    let emotesList = [...filteredEmotes];
    if ((currentCategoryValue === 'favorites' || isSearchMode) && emotesList.length % 2 !== 0) {
        emotesList.push({ isPlaceholder: true });
    }

    const rows = Math.ceil(emotesList.length / 2);
    
    for (let i = 0; i < rows; i++) {
        const rowDiv = document.createElement('div');
        rowDiv.className = 'emotes-grid-row';
        addEmoteToRow(rowDiv, emotesList[i * 2], i * 2);
        if (i * 2 + 1 < emotesList.length) {
            addEmoteToRow(rowDiv, emotesList[i * 2 + 1], i * 2 + 1);
        }
        emotesContainer.appendChild(rowDiv);
    }
    setupTooltipOverlay();
}

function setupContextMenuEvents(emoteItem, emote, isFavorite) {
    emoteItem.addEventListener('contextmenu', (e) => {
        e.preventDefault();
        e.stopPropagation();
        selectedEmote = emote;
        showContextMenu(e.clientX, e.clientY, isFavorite);
    });
}

function addEmoteToRow(rowElement, emote, index) {
    if (emote.isPlaceholder) {
        const placeholderItem = document.createElement('div');
        placeholderItem.className = 'emote-item placeholder';
        placeholderItem.style.visibility = 'hidden';
        rowElement.appendChild(placeholderItem);
        return;
    }

    const emoteItem = document.createElement('div');
    emoteItem.className = 'emote-item';
    emoteItem.dataset.command = emote.command;
    emoteItem.dataset.index = index;
    emoteItem.style.animationDelay = `${index * 0.02}s`;
    const isFavorite = favorites.includes(emote.command);
    const commandText = emote.command.startsWith('/e') ? emote.command : `/e ${emote.command}`;
    const displayName = truncateText(emote.name, 18);
    const tooltip = document.createElement('div');
    tooltip.className = 'emote-tooltip';
    tooltip.innerHTML = `
        <div class="tooltip-name">${emote.name}</div>
        <div class="tooltip-command">${commandText}</div>
    `;
    emoteItem.innerHTML = `
        <div class="emote-name">${displayName}</div>
        ${isFavorite ? '<i class="material-icons favorite-icon">star</i>' : ''}
    `;
    emoteItem.appendChild(tooltip);
    emoteItem.addEventListener('click', (e) => {
        e.preventDefault();
        e.stopPropagation();
        executeEmote(emote.command);
    });
    setupContextMenuEvents(emoteItem, emote, isFavorite);
    emoteItem.addEventListener('mouseenter', (e) => {
        e.stopPropagation();
        document.querySelectorAll('.emote-tooltip').forEach(tip => {
            if (tip !== tooltip) {
                tip.style.opacity = '0';
                tip.style.visibility = 'hidden';
            }
        });
        tooltip.style.opacity = '1';
        tooltip.style.visibility = 'visible';
    });
    emoteItem.addEventListener('mouseleave', (e) => {
        e.stopPropagation();
        tooltip.style.opacity = '0';
        tooltip.style.visibility = 'hidden';
    });
    rowElement.appendChild(emoteItem);
}

function showContextMenu(x, y, isFavorite) {
    const addFavoriteBtn = document.getElementById('add-favorite');
    if (!addFavoriteBtn) {
        return;
    }
    addFavoriteBtn.innerHTML = isFavorite ? 
        '<i class="material-icons">star_border</i><span>Quitar de Favoritos</span>' :
        '<i class="material-icons">star</i><span>Guardar en Favoritos</span>';
    const contextMenu = document.getElementById('context-menu');
    if (!contextMenu) {
        return;
    }
    contextMenu.style.left = `${x}px`;
    contextMenu.style.top = `${y}px`;
    const menuRect = contextMenu.getBoundingClientRect();
    const windowWidth = window.innerWidth;
    const windowHeight = window.innerHeight;
    if (menuRect.right > windowWidth) {
        contextMenu.style.left = `${x - menuRect.width}px`;
    }
    if (menuRect.bottom > windowHeight) {
        contextMenu.style.top = `${y - menuRect.height}px`;
    }
    contextMenu.style.display = 'block';
    contextMenu.offsetHeight;
    contextMenu.classList.add('visible');
    addFavoriteBtn.onclick = function(e) {
        e.preventDefault();
        e.stopPropagation();
        if (selectedEmote && selectedEmote.command) {
            toggleFavorite(selectedEmote.command);
            hideContextMenu();
        }
    };
}

function executeEmote(command) {
    const currentCategory = currentCategoryValue;
    let finalCommand = command;
    fetch(`https://${GetParentResourceName()}/executeEmote`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            command: finalCommand,
            category: currentCategory
        })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            toggleMenu(false);
        }
    })
    .catch(error => {
    });
}

function toggleFavorite(command) {
    fetch(`https://${GetParentResourceName()}/toggleFavorite`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            command: command
        })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error(`Error de red: ${response.status}`);
        }
        return response.json();
    })
    .then(data => {
        if (data && data.success) {
            const index = favorites.indexOf(command);
            if (index > -1) {
                favorites.splice(index, 1);
            } else {
                favorites.push(command);
            }
            renderEmotes();
        }
    })
    .catch(error => {
    });
}

function changeCategory(category) {
    loadEmotes(category);
    isDropdownOpen = false;
    const dropdown = document.getElementById('category-dropdown');
    if (dropdown) {
        dropdown.classList.remove('visible');
    }
    searchInput.value = '';
}

function cancelEmote() {
    fetch(`https://${GetParentResourceName()}/cancelEmote`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
        }
    })
    .catch(error => {
    });
}

document.addEventListener('DOMContentLoaded', () => {
    isDropdownOpen = false;
    if (contextMenu) {
        contextMenu.style.display = 'none';
        contextMenu.classList.remove('visible');
        selectedEmote = null;
    }
    setTimeout(() => {
        loadEmotes();
        setTimeout(() => {
            setupBasicInteractions();
        }, 200);
    }, 100);
    searchInput.addEventListener('input', () => {
        if (searchTimeout) {
            clearTimeout(searchTimeout);
        }
        searchTimeout = setTimeout(() => {
            if (searchInput.value.trim() !== '') {
                fetch(`https://${GetParentResourceName()}/getAllEmotes`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    const searchResults = searchInAllEmotes(data.allEmotes || [], searchInput.value.trim());
                    emotes = searchResults;
                    renderEmotes();
                })
                .catch(error => {
                    renderEmotes();
                });
            } else {
                loadEmotes(currentCategoryValue);
            }
            setTimeout(() => {
                setupBasicInteractions();
            }, 50);
        }, 300);
    });
    document.addEventListener('click', (e) => {
        if (!e.target.closest('#context-menu')) {
            hideContextMenu();
        }
    });
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            e.preventDefault();
            e.stopPropagation();
            if (contextMenu && contextMenu.classList.contains('visible')) {
                hideContextMenu();
            } else {
                toggleMenu(false);
            }
        }
    });
});

function setupBasicInteractions() {
    const oldCurrentCategory = document.getElementById('current-category');
    if (oldCurrentCategory) {
        const newCurrentCategory = oldCurrentCategory.cloneNode(true);
        oldCurrentCategory.parentNode.replaceChild(newCurrentCategory, oldCurrentCategory);
        newCurrentCategory.addEventListener('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            toggleCategoryDropdown();
        });
    }
    document.querySelectorAll('.category-item').forEach(item => {
        const newItem = item.cloneNode(true);
        item.parentNode.replaceChild(newItem, item);
        newItem.addEventListener('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            changeCategory(newItem.dataset.category);
        });
    });
    const closeBtn = document.getElementById('close-btn');
    if (closeBtn) {
        const newCloseBtn = closeBtn.cloneNode(true);
        closeBtn.parentNode.replaceChild(newCloseBtn, closeBtn);
        newCloseBtn.addEventListener('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            toggleMenu(false);
        });
    }
    hideContextMenu();
}

window.addEventListener('message', function(event) {
    try {
        const data = event.data;
        if (data && data.action) {
            switch(data.action) {
                case 'openMenu':
                    toggleMenu(true);
                    break;
                case 'closeMenu':
                    toggleMenu(false);
                    break;
                default:
            }
        }
    } catch (error) {
    }
});

function initContextMenu() {
    const contextMenu = document.getElementById('context-menu');
    const addFavoriteBtn = document.getElementById('add-favorite');
    if (!contextMenu) {
        return;
    }
    if (!addFavoriteBtn) {
        return;
    }
    contextMenu.style.display = 'none';
    contextMenu.classList.remove('visible');
}

document.addEventListener('DOMContentLoaded', function() {
    initContextMenu();
    if (typeof window.GetParentResourceName === 'function') {
    } else {
    }
    const closeBtn = document.getElementById('close-btn');
    if (closeBtn) {
        closeBtn.addEventListener('click', function() {
            toggleMenu(false);
        });
    }
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape') {
            toggleMenu(false);
        }
    });
});

function GetParentResourceName() {
    let resourceName = 'X-Emotes';
    try {
        if (typeof window.GetParentResourceName === 'function') {
            resourceName = window.GetParentResourceName();
        }
    } catch (e) {
    }
    return resourceName;
}

function SetNuiFocus(hasFocus, hasCursor) {
    fetch(`https://${GetParentResourceName()}/setNuiFocus`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hasFocus: hasFocus,
            hasCursor: hasCursor
        })
    }).catch(error => {
    });
}

function createTooltipOverlay() {
    if (document.getElementById('tooltip-overlay')) return;
    const overlay = document.createElement('div');
    overlay.id = 'tooltip-overlay';
    document.body.appendChild(overlay);
    return overlay;
}

function setupTooltipOverlay() {
    const overlay = document.getElementById('tooltip-overlay') || createTooltipOverlay();
    if (overlay.children.length > 0) {
        while (overlay.firstChild) {
            overlay.removeChild(overlay.firstChild);
        }
    }
}

function searchInAllEmotes(allEmotes, searchTerm) {
    const normalizedSearchTerm = normalizeText(searchTerm);
    return allEmotes.filter(emote => {
        const normalizedName = normalizeText(emote.name);
        const normalizedCommand = normalizeText(emote.command);
        return normalizedName.includes(normalizedSearchTerm) || 
               normalizedCommand.includes(normalizedSearchTerm) ||
               normalizedName.split(' ').some(part => part.includes(normalizedSearchTerm)) ||
               normalizedCommand.split(' ').some(part => part.includes(normalizedSearchTerm)) ||
               normalizedSearchTerm.length >= 3 && (normalizedName.includes(normalizedSearchTerm) || normalizedCommand.includes(normalizedSearchTerm));
    });
}

function getCategoryDisplayName(categoryValue) {
    const categoryMap = {
        'all': 'General',
        'dances': 'Bailes',
        'props': 'Objetos',
        'gangsigns': 'Gestos',
        'shared': 'Compartidos',
        'expressions': 'Expresiones',
        'walks': 'Caminatas'
    };
    return categoryMap[categoryValue] || categoryValue;
}

function getCategoryIcon(categoryValue) {
    const iconMap = {
        'all': 'home',
        'dances': 'directions_walk',
        'props': 'shopping_cart',
        'gangsigns': 'person',
        'shared': 'group',
        'expressions': 'tag_faces',
        'walks': 'directions_run'
    };
    return iconMap[categoryValue] || 'home';
}

document.addEventListener('click', function(e) {
    if (isDropdownOpen && !e.target.closest('.category-selector')) {
        isDropdownOpen = false;
        const dropdown = document.getElementById('category-dropdown');
        if (dropdown) {
            dropdown.classList.remove('visible');
        }
    }
});

document.addEventListener('DOMContentLoaded', function() {
    const closeBtn = document.getElementById('close-btn');
    if (closeBtn) {
        closeBtn.addEventListener('click', function() {
            toggleMenu(false);
        });
    }
});

function hideContextMenu() {
    contextMenu.classList.remove('visible');
    setTimeout(() => {
        contextMenu.style.display = 'none';
    }, 200);
}

window.toggleFavorite = toggleFavorite;
window.showContextMenu = showContextMenu;
window.hideContextMenu = hideContextMenu;
window.selectedEmote = null;

window.testFavoriteSystem = function() {
    const testEmote = {
        name: 'Emote de Prueba',
        command: 'dance'
    };
    window.selectedEmote = testEmote;
    const x = window.innerWidth / 2;
    const y = window.innerHeight / 2;
    const isFavorite = favorites.includes(testEmote.command);
    showContextMenu(x, y, isFavorite);
    return "Menú de prueba abierto. Haga clic en Guardar/Quitar favorito.";
};

function populateCategories() {
    const categories = [
        { name: "favoritos", icon: "fas fa-star" },
        { name: "bailes", icon: "fas fa-music" },
        { name: "emotes", icon: "far fa-grin" },
        { name: "gangsigns", icon: "fas fa-hand-rock" },
        { name: "props", icon: "fas fa-cube" },
        { name: "newprops", icon: "fas fa-box" },
        { name: "newemotespack", icon: "fas fa-grin-stars" },
        { name: "oldemotespack", icon: "fas fa-grin-alt" },
        { name: "expression", icon: "fas fa-meh" }
    ];
    let categoriesHTML = '';
    for (const category of categories) {
        const categoryName = getTranslatedCategory(category.name);
        categoriesHTML += `
            <li data-category="${category.name}" class="category-item">
                <i class="${category.icon}"></i>
                <span>${categoryName}</span>
            </li>
        `;
    }
    $('.emote-categories').html(categoriesHTML);
}

function getTranslatedCategory(category) {
    const translations = {
        'favoritos': 'Favoritos',
        'bailes': 'Bailes',
        'emotes': 'Emotes',
        'gangsigns': 'Gestos',
        'props': 'Objetos',
        'newprops': 'Nuevos Objetos',
        'newemotespack': 'Nuevos Emotes',
        'oldemotespack': 'Emotes Clásicos',
        'expression': 'Expresiones'
    };
    return translations[category] || category;
}

function getEmotes(category) {
    $('.emote-list').empty();
    if (category === 'favoritos') {
        displayFavorites();
        return;
    }
    $.post('https://X-Emotes/getEmotes', JSON.stringify({
        type: getCategoryType(category)
    }), function(data) {
        if (!data) {
            return;
        }
        displayEmotes(data, category);
    });
}

function getCategoryType(category) {
    const typeMap = {
        'bailes': 'dances',
        'emotes': 'emotes',
        'gangsigns': 'gangsigns',
        'props': 'props',
        'newprops': 'newprops',
        'newemotespack': 'newemotespack',
        'oldemotespack': 'oldemotespack',
        'expression': 'expression'
    };
    return typeMap[category] || category;
}