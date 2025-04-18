DP = {}

DP.Expressions = {
  ["Angry"] = {"Expression", "mood_angry_1"},
  ["Drunk"] = {"Expression", "mood_drunk_1"},
  ["Dumb"] = {"Expression", "pose_injured_1"},
  ["Electrocuted"] = {"Expression", "electrocuted_1"},
  ["Grumpy"] = {"Expression", "effort_1"},
  ["Grumpy2"] = {"Expression", "mood_drivefast_1"},
  ["Grumpy3"] = {"Expression", "pose_angry_1"},
  ["Happy"] = {"Expression", "mood_happy_1"},
  ["Injured"] = {"Expression", "mood_injured_1"},
  ["Joyful"] = {"Expression", "mood_dancing_low_1"},
  ["Mouthbreather"] = {"Expression", "smoking_hold_1"},
  ["Never Blink"] = {"Expression", "pose_normal_1"},
  ["One Eye"] = {"Expression", "pose_aiming_1"},
  ["Shocked"] = {"Expression", "shocked_1"},
  ["Shocked2"] = {"Expression", "shocked_2"},
  ["Sleeping"] = {"Expression", "mood_sleeping_1"},
  ["Sleeping2"] = {"Expression", "dead_1"},
  ["Sleeping3"] = {"Expression", "dead_2"},
  ["Smug"] = {"Expression", "mood_smug_1"},
  ["Speculative"] = {"Expression", "mood_aiming_1"},
  ["Stressed"] = {"Expression", "mood_stressed_1"},
  ["Sulking"] = {"Expression", "mood_sulk_1"},
  ["Weird"] = {"Expression", "effort_2"},
  ["Weird2"] = {"Expression", "effort_3"},
}

DP.Walks = {
  ["Alien"] = {"move_m@alien"},
  ["Armored"] = {"anim_group_move_ballistic"},
  ["Arrogant"] = {"move_f@arrogant@a"},
  ["Brave"] = {"move_m@brave"},
  ["Casual"] = {"move_m@casual@a"},
  ["Casual2"] = {"move_m@casual@b"},
  ["Casual3"] = {"move_m@casual@c"},
  ["Casual4"] = {"move_m@casual@d"},
  ["Casual5"] = {"move_m@casual@e"},
  ["Casual6"] = {"move_m@casual@f"},
  ["Chichi"] = {"move_f@chichi"},
  ["Confident"] = {"move_m@confident"},
  ["Cop"] = {"move_m@business@a"},
  ["Cop2"] = {"move_m@business@b"},
  ["Cop3"] = {"move_m@business@c"},
  ["Default Female"] = {"move_f@multiplayer"},
  ["Default Male"] = {"move_m@multiplayer"},
  ["Drunk"] = {"move_m@drunk@a"},
  ["Drunk"] = {"move_m@drunk@slightlydrunk"},
  ["Drunk2"] = {"move_m@buzzed"},
  ["Drunk3"] = {"move_m@drunk@verydrunk"},
  ["Femme"] = {"move_f@femme@"},
  ["Fire"] = {"move_characters@franklin@fire"},
  ["Fire2"] = {"move_characters@michael@fire"},
  ["Fire3"] = {"move_m@fire"},
  ["Flee"] = {"move_f@flee@a"},
  ["Franklin"] = {"move_p_m_one"},
  ["Gangster"] = {"move_m@gangster@generic"},
  ["Gangster2"] = {"move_m@gangster@ng"},
  ["Gangster3"] = {"move_m@gangster@var_e"},
  ["Gangster4"] = {"move_m@gangster@var_f"},
  ["Gangster5"] = {"move_m@gangster@var_i"},
  ["Grooving"] = {"anim@move_m@grooving@"},
  ["Guard"] = {"move_m@prison_gaurd"},
  ["Handcuffs"] = {"move_m@prisoner_cuffed"},
  ["Heels"] = {"move_f@heels@c"},
  ["Heels2"] = {"move_f@heels@d"},
  ["Hiking"] = {"move_m@hiking"},
  ["Hipster"] = {"move_m@hipster@a"},
  ["Hobo"] = {"move_m@hobo@a"},
  ["Hurry"] = {"move_f@hurry@a"},
  ["Janitor"] = {"move_p_m_zero_janitor"},
  ["Janitor2"] = {"move_p_m_zero_slow"},
  ["Jog"] = {"move_m@jog@"},
  ["Lemar"] = {"anim_group_move_lemar_alley"},
  ["Lester"] = {"move_heist_lester"},
  ["Lester2"] = {"move_lester_caneup"},
  ["Maneater"] = {"move_f@maneater"},
  ["Michael"] = {"move_ped_bucket"},
  ["Money"] = {"move_m@money"},
  ["Muscle"] = {"move_m@muscle@a"},
  ["Posh"] = {"move_m@posh@"},
  ["Posh2"] = {"move_f@posh@"},
  ["Quick"] = {"move_m@quick"},
  ["Runner"] = {"female_fast_runner"},
  ["Sad"] = {"move_m@sad@a"},
  ["Sassy"] = {"move_m@sassy"},
  ["Sassy2"] = {"move_f@sassy"},
  ["Scared"] = {"move_f@scared"},
  ["Sexy"] = {"move_f@sexy@a"},
  ["Shady"] = {"move_m@shadyped@a"},
  ["Slow"] = {"move_characters@jimmy@slow@"},
  ["Swagger"] = {"move_m@swagger"},
  ["Tough"] = {"move_m@tough_guy@"},
  ["Tough2"] = {"move_f@tough_guy@"},
  ["Trash"] = {"clipset@move@trash_fast_turn"},
  ["Trash2"] = {"missfbi4prepp1_garbageman"},
  ["Trevor"] = {"move_p_m_two"},
  ["Wide"] = {"move_m@bag"},

}

DP.Shared = {

["carry"] = { "missfinale_c2mcs_1", "fin_c2_mcs_1_camman", "Carry", "carry2", AnimationOptions = {
    EmoteMoving = true,
    EmoteLoop = true,
} },
["carry2"] = { "nm", "firemans_carry", "Be Carried", "carry", AnimationOptions = {
    EmoteMoving = false,
    EmoteLoop = true,
    Attachto = true,
    bone = 0,
    xPos = 0.27,
    yPos = 0.10,
    zPos = 0.60,
    xRot = 0.0,
    yRot = 0.0,
    zRot = 10.0,
} },
  ["acouple1"] = {"tigerle@custom@couple@standcuddle_a", "tigerle_couple_standcuddle_a", "Stand Cuddle Male", "acouple2", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Atatchto = true,
        xPos = 0.0,
        yPos = 0.35,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    }},
["acouple2"] = {"tigerle@custom@couple@standcuddle_b", "tigerle_couple_standcuddle_b", "Stand Cuddle Female", "acouple1", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteLoop = true,
        Atatchto = true,
        xPos = 0.0,
        yPos = 0.35,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    }},
    ["receiveblowjob"] = { "misscarsteal2pimpsex", "pimpsex_punter", "Receive Blowjob", "giveblowjob", AnimationOptions = {
      EmoteMoving = false,
      EmoteDuration = 30000,
      SyncOffsetFront = 0.63
  }},
  ["giveblowjob"] = { "misscarsteal2pimpsex", "pimpsex_hooker", "Give Blowjob", "receiveblowjob", AnimationOptions = {
      EmoteMoving = false,
      EmoteDuration = 30000,
      SyncOffsetFront = 0.63
  }},
  ["streetsexmale"] = { "misscarsteal2pimpsex", "shagloop_pimp", "Street Sex Male", "streetsexfemale", AnimationOptions = {
      EmoteMoving = false,
      EmoteLoop = true,
      SyncOffsetFront = 0.50
  }},
  ["streetsexfemale"] = { "misscarsteal2pimpsex", "shagloop_hooker", "Street Sex Female", "streetsexmale", AnimationOptions = {
      EmoteMoving = false,
      EmoteLoop = true,
      SyncOffsetFront = 0.50
  }},
  ["handshake"] = {"mp_ped_interaction", "handshake_guy_a", "Handshake", "handshake2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000,
    SyncOffsetFront = 0.9
  }},
  ["handshake2"] = {"mp_ped_interaction", "handshake_guy_b", "Handshake 2", "handshake", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000
  }},
  ["hug"] = {"mp_ped_interaction", "kisses_guy_a", "Hug", "hug2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteDuration = 5000,
    SyncOffsetFront = 1.05,
  }},
  ["hug2"] = {"mp_ped_interaction", "kisses_guy_b", "Hug 2", "hug", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteDuration = 5000,
    SyncOffsetFront = 1.13
  }},
  ["hug3"] = {"misscarsteal2chad_goodbye", "chad_armsaround_chad", "Hug 3", "hug4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    SyncOffsetFront = 0.05,
  }},
  ["hug4"] = {"misscarsteal2chad_goodbye", "chad_armsaround_girl", "Hug 4", "hug3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    SyncOffsetFront = 0.13
  }},
   ["kiss"] = {"hs3_ext-20", "cs_lestercrest_3_dual-20", "Kiss", "kiss2", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 7500,
       SyncOffsetFront = 0.13
   }},
   ["kiss2"] = {"hs3_ext-20", "csb_georginacheng_dual-20", "Kiss 2", "kiss", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 7500,
       SyncOffsetFront = 0.13
   }},
  ["bro"] = {"mp_ped_interaction", "hugs_guy_a", "Bro", "bro2", AnimationOptions =
  {
    SyncOffsetFront = 1.14
  }},
  ["bro2"] = {"mp_ped_interaction", "hugs_guy_b", "Bro 2", "bro", AnimationOptions =
  {
    SyncOffsetFront = 1.14
  }},
  ["give"] = {"mp_common", "givetake1_a", "Give", "give2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000
  }},
  ["give2"] = {"mp_common", "givetake1_b", "Give 2", "give", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000
  }},
  ["baseball"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_a", "Baseball", "baseballthrow"},
  ["baseballthrow"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_b", "Baseball Throw", "baseball"},
  ["stickup"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Stick Up", "stickupscared", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["stickupscared"] = {"missminuteman_1ig_2", "handsup_base", "Stickup Scared", "stickup", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["punch"] = {"melee@unarmed@streamed_variations", "plyr_takedown_rear_lefthook", "Punch", "punched"},
  ["punched"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_cross_r", "Punched", "punch"},
  ["headbutt"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Headbutt", "headbutted"},
  ["headbutted"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_headbutt", "Headbutted", "headbutt"},
  ["slap2"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_backslap", "Slap 2", "slapped2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
    EmoteDuration = 2000,
  }},
  ["slap"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Slap", "slapped", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
    EmoteDuration = 2000,
  }},
  ["slapped"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_slap", "Slapped", "slap"},
  ["slapped2"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_backslap", "Slapped 2", "slap2"},
  ["receiveblowjob"] = {"misscarsteal2pimpsex", "pimpsex_punter", "Receive Blowjob", "Give Blowjob", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteDuration = 30000,
    SyncOffsetFront = 0.63
  }},
  ["giveblowjob"] = {"misscarsteal2pimpsex", "pimpsex_hooker", "Give Blowjob", "Receive Blowjob", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteDuration = 30000,
    SyncOffsetFront = 0.63
  }},
  ["streetsexmale"] = {"misscarsteal2pimpsex", "shagloop_pimp", "Street Sex Male", "Street Sex Female", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    SyncOffsetFront = 0.50
  }},
  ["streetsexfemale"] = {"misscarsteal2pimpsex", "shagloop_hooker", "Street Sex Female", "Street Sex Male", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    SyncOffsetFront = -0.50
  }},
}

DP.Dances = {

  ["drilldance"] = {"div@woowalk@test", "drilldance", "Drill Dance", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["cripwalk2"] = {"div@woowalk@test", "cripwalk2", "Crip Walk", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["sturdy2"] = {"div@woowalk@test", "sturdy2", "Get Sturdy", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["bloodwalk2"] = {"div@woowalk@test", "bloodwalk2", "Blood Walk", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["blixkytwirl2"] = {"div@woowalk@test", "blixkytwirl2", "Blixky Twirl", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["popdance"] = {"div@woowalk@test", "popdance", "Pop Smoke Dance", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["toprock"] = {"div@woowalk@test", "toprock", "Toprock", AnimationOptions =
  {
      EmoteLoop = true
  }},
  ["catdaddy"] = {"div@woowalk@test", "catdaddy", "Cat Daddy", AnimationOptions =
  {
      EmoteLoop = true
  }},

  ["hiphop_yeah"] = {"custom@hiphop_yeah", "hiphop_yeah", "Hiphop Yeah", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = false,
  }},

    ["dab"] = { "custom@dab", "dab", "Dab", AnimationOptions =
   {
     EmoteLoop = true,
     EmoteMoving = true,
   }},
   ["cantsee"] = { "custom@cant_see", "cant_see", "Can't See", AnimationOptions =
   {
     EmoteLoop = true,
     EmoteMoving = true,
   }},
   ["sheesh"] = {"custom@sheeeeesh", "sheeeeesh", "Sheesh", AnimationOptions =
   {
     EmoteMoving = true,
     EmoteDuration = 8000,
   }},
   ["cdig"] = {"custom@dig", "dig", "Custom Dig", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteDuration = 8000,
   }},
   ["woowalk"] = {"div@woowalk@test", "woowalk", "Woo Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["drilldance"] = {"div@woowalk@test", "drilldance", "Drill Dance", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["cripwalk2"] = {"div@woowalk@test", "cripwalk2", "Crip Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["sturdy2"] = {"div@woowalk@test", "sturdy2", "Get Sturdy", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["bloodwalk2"] = {"div@woowalk@test", "bloodwalk2", "Blood Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["blixkytwirl2"] = {"div@woowalk@test", "blixkytwirl2", "Blixky Twirl", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["armwave"] = {"custom@armwave", "armwave", "Arm Wave", AnimationOptions =
   {
     EmoteLoop = true,
     EmoteMoving = false,
   }},
   ["whatidk"] = {"custom@what_idk", "what_idk", "What? Don't Know", AnimationOptions =
   {
     EmoteLoop = true,
     EmoteMoving = false,
   }},
   ["bellydance"] = {"custom@bellydance", "bellydance", "Belly Dance", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["convulsion"] = {"custom@convulsion", "convulsion", "Convulsion", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["hiphopslide"] = {"custom@hiphop_slide", "hiphop_slide", "HipHop Slide", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["hiphop1"] = {"custom@hiphop1", "hiphop1", "HipHop 1", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["hiphop2"] = {"custom@hiphop2", "hiphop2", "HipHop 2", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["hiphop3"] = {"custom@hiphop3", "hiphop3", "HipHop 3", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = false,
   }},
   ["hiphopold"] = {"custom@hiphop90s", "hiphop90s", "HipHop Old", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   
   
   ["frenegade"] = {"custom@renegade", "renegade", "Renegade", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["fsavage"] = {"custom@savage", "savage", "Savage", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["fsayso"] = {"custom@sayso", "sayso", "Say So", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["ftslide"] = {"custom@toosie_slide", "toosie_slide", "Tootsie Slide", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["fdefaultdance"] = {"custom@dancemoves", "dancemoves", "Default Dance", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["ffloss"] = {"custom@floss", "floss", "Floss", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["forangejustice"] = {"custom@orangejustice", "orangejustice", "Orange Justice", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["takel"] = {"custom@take_l", "take_l", "Take the L", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["discodance"] = {"custom@disco_dance", "disco_dance", "Disco Dance", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},
   ["bopdance"] = {"divined@tdances@new", "dtdance2", "Bop", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["bboydance"] = {"divined@tdances@new", "dtdance3", "BBoy Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["capoeiramove"] = {"divined@tdances@new", "dtdance4", "Capoeira Move", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hiphopdance"] = {"divined@tdances@new", "dtdance5", "Hip Hop Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hipsterdance"] = {"divined@tdances@new", "dtdance6", "Hipster Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hippiedance"] = {"divined@tdances@new", "dtdance7", "Hippie Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hiphoptaunt"] = {"divined@tdances@new", "dtdance8", "Hip Hop Taunt", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hilowave"] = {"divined@tdances@new", "dtdance9", "Hi Lo Wave", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["squaredance"] = {"divined@tdances@new", "dtdance10", "Square Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hotdance"] = {"divined@tdances@new", "dtdance11", "Hot Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["hulahula"] = {"divined@tdances@new", "dtdance12", "Hula-Hula", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["dabloop"] = {"divined@tdances@new", "dtdance13", "Dab Loop", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["kingdance"] = {"divined@tdances@new", "dtdance14", "The King's Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["linedance"] = {"divined@tdances@new", "dtdance15", "Dance Line", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["magicman"] = {"divined@tdances@new", "dtdance16", "Magic Man", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["marat"] = {"divined@tdances@new", "dtdance17", "Marat", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["maskoff"] = {"divined@tdances@new", "dtdance18", "Mask Off", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["mellow"] = {"divined@tdances@new", "dtdance19", "Mellow", AnimationOptions =
   {
         EmoteLoop = true,
     }},
   ["showroomdance"] = {"divined@tdances@new", "dtdance20", "Showroom Dance", AnimationOptions =
   {
         EmoteLoop = true,
   }},
   ["windmillfloss"] = {"divined@tdances@new", "dtdance21", "Windmill Floss", AnimationOptions =
     {
         EmoteLoop = true,
   }},
   ["woahdance"] = {"divined@tdances@new", "dtdance22", "Woah", AnimationOptions =
     {
         EmoteLoop = true,
   }},

   ["footwork"] = {"custom@footwork", "footwork", "Footwork", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["salsatime"] = {"custom@salsatime", "salsatime", "Salsa Time", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["samba"] = {"custom@samba", "samba", "Samba", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["shockdance"] = {"custom@shockdance", "shockdance", "Shock Dance", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["specialdance"] = {"custom@specialdance", "specialdance", "Special Dance", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["toetwist"] = {"custom@toetwist", "toetwist", "Toe twist", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["crossbounce"] = {"custom@crossbounce", "crossbounce", "Cross bounce", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["deskchan"] = {"custom@deskchan", "deskchan", "Deskchan", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["dontstart"] = {"custom@dont_start", "dont_start", "Dont Start", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},  -- 30


   ["rickroll"] = {"custom@rickroll", "rickroll", "Rick Roll", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["clock"] = {"custom@around_the_clock", "around_the_clock", "Around the clock", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["backflip"] = {"custom@backflip", "backflip", "Backflip", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["discodance"] = {"custom@disco_dance", "disco_dance", "Disco Dance", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["electroshuffle"] = {"custom@electroshuffle_original", "electroshuffle_original", "Electro Shuffle", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["electroshuffle2"] = {"custom@electroshuffle", "electroshuffle", "Electro Shuffle 2", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["fresh"] = {"custom@fresh_fortnite", "fresh_fortnite", "Fresh", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["gylphic"] = {"custom@gylphic", "gylphic", "Glyphic", AnimationOptions =
   {
   EmoteMoving = false,
   EmoteLoop = true,
   }},

   ["hitit"] = {"custom@hitit", "hitit", "Hit It", AnimationOptions =
   {
   EmoteMoving = false,
     EmoteLoop = true,
     }},
     ["inparty"] = {"custom@in_da_party", "in_da_party", "In Da Party", AnimationOptions =
     {
      EmoteMoving = false,
      EmoteLoop = true,
     }},
     ["robotdance"] = {"custom@robotdance_fortnite", "robotdance_fortnite", "Robot Dance", AnimationOptions =
     {
      EmoteMoving = false,
      EmoteLoop = true,
      }},
      ["frightfunk"] = {"custom@frightfunk", "frightfunk", "Fright Funk", AnimationOptions =
      {
      EmoteMoving = false,
      EmoteLoop = true,
      }},
      ["gloss"] = {"custom@gloss", "gloss", "Gloss", AnimationOptions =
      {
       EmoteMoving = false,
       EmoteLoop = true,
      }},       -- 50
      ["lastforever"] = {"custom@last_forever", "last_forever", "Last Forever", AnimationOptions =
      {
       EmoteMoving = false,
       EmoteLoop = true,
      }},
      ["smoothmoves"] = {"custom@smooth_moves", "smooth_moves", "Smooth moves", AnimationOptions =
      {
      EmoteMoving = false,
      EmoteLoop = true,
      }},
      ["introducing"] = {"custom@introducing", "introducing", "Introducing...", AnimationOptions =
      {
       EmoteMoving = false,
       EmoteLoop = true,
      }},
      ["salsa"] = {"custom@salsa", "salsa", "Salsa", AnimationOptions =
      {
          EmoteMoving = false,
          EmoteLoop = true,
      }},
      ["gangnamstyle"] = {"custom@gangnamstyle", "gangnamstyle", "Gangnam Style", AnimationOptions =
      {
          EmoteMoving =false,
          EmoteLoop = true
      }},
     ["maraschino"] = {"custom@maraschino", "maraschino", "Maraschino", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true
      }},
      ["downward"] = {"custom@downward_fortnite", "Downward_fortnite", "Downward", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true,
      }},

      ["pullup"] = {"custom@pullup", "pullup", "Pullup", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true,
      }},

      ["rollie"] = {"custom@rollie", "rollie", "Rollie", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true,
      }},

      ["wanna_see_me"] = {"custom@wanna_see_me", "wanna_see_me", "Wanna see me", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true,
      }},

      ["billybounce"] = {"custom@billybounce", "billybounce", "Billy bounce", AnimationOptions =
      {
         EmoteMoving = false,
         EmoteLoop = true,
      }},

   -- Custom Dances: Divine

  ["cdancea"] = {"divined@dances@new", "ddance1", "Custom Dance A", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceb"] = {"divined@dances@new", "ddance2", "Custom Dance B", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancec"] = {"divined@dances@new", "ddance3", "Custom Dance C", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanced"] = {"divined@dances@new", "ddance4", "Custom Dance D", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancee"] = {"divined@dances@new", "ddance5", "Custom Dance E", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancef"] = {"divined@dances@new", "ddance6", "Custom Dance F", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceg"] = {"divined@dances@new", "ddance7", "CustomDance G", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceh"] = {"divined@dances@new", "ddance8", "Custom Dance H", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancei"] = {"divined@dances@new", "ddance9", "Custom Dance I", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancej"] = {"divined@dances@new", "ddance10", "Custom Dance J", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancek"] = {"divined@dances@new", "ddance11", "Custom Dance K", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancel"] = {"divined@dances@new", "ddance12", "Custom Dance L", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancem"] = {"divined@dances@new", "ddance13", "Custom Dance M", AnimationOptions =
  {
        EmoteLoop = true
  }},

  -- Version Two
  ["cdancen"] = {"divined@dancesv2@new", "divdance1", "Custom Dance N", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceo"] = {"divined@dancesv2@new", "divdance2", "Custom Dance O", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancep"] = {"divined@dancesv2@new", "divdance3", "Custom Dance P", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceq"] = {"divined@dancesv2@new", "divdance4", "Custom Dance Q", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancer"] = {"divined@dancesv2@new", "divdance5", "Custom Dance R", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdances"] = {"divined@dancesv2@new", "divdance6", "Custom Dance S", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancet"] = {"divined@dancesv2@new", "divdance7", "Custom Dance T", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdanceu"] = {"divined@dancesv2@new", "divdance8", "Custom Dance U", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancew"] = {"divined@dancesv2@new", "divdance9", "Custom Dance W", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancex"] = {"divined@dancesv2@new", "divdance10", "Custom Dance X", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancey"] = {"divined@dancesv2@new", "divdance13", "Custom Dance Y", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["cdancez"] = {"divined@dancesv2@new", "divdance14", "Custom Dance Z", AnimationOptions =
  {
        EmoteLoop = true
  }},
     -- Divine Breakdance
  ["bdance1"] = {"divined@breakdances@new", "divbdance1", "Break Dance 1", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance3"] = {"divined@breakdances@new", "divbdance2", "Break Dance 3", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance4"] = {"divined@breakdances@new", "divbdance3", "Break Dance 4", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance5"] = {"divined@breakdances@new", "divbdance4", "Break Dance 5", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance6"] = {"divined@breakdances@new", "divbdance5", "Break Dance 6", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance7"] = {"divined@breakdances@new", "divbdance6", "Break Dance 7", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance8"] = {"divined@breakdances@new", "divbdance7", "Break Dance 8", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance9"] = {"divined@breakdances@new", "divbdance8", "Break Dance 9", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_10"] = {"divined@breakdances@new", "divbdance9", "Break Dance 10", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_11"] = {"divined@breakdances@new", "divbdance10", "Break Dance 11", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_12"] = {"divined@breakdances@new", "divbdance11", "Break Dance 12", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_13"] = {"divined@breakdances@new", "divbdance12", "Break Dance 13", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_14"] = {"divined@breakdances@new", "divbdance13", "Break Dance 14", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_15"] = {"divined@breakdances@new", "divbdance14", "Break Dance 15", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_16"] = {"divined@breakdances@new", "divbdance14", "Break Dance 16", AnimationOptions =
  {
        EmoteLoop = true
  }},

     -- Divine Breakdance v3
  ["bdance_17"] = {"divined@brdancesv2@new", "dbrdance1", "Break Dance 17", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_18"] = {"divined@brdancesv2@new", "dbrdance2", "Break Dance 18", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_19"] = {"divined@brdancesv2@new", "dbrdance3", "Break Dance 19", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_20"] = {"divined@brdancesv2@new", "dbrdance4", "Break Dance 20", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_21"] = {"divined@brdancesv2@new", "dbrdance5", "Break Dance 21", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_22"] = {"divined@brdancesv2@new", "dbrdance6", "Break Dance 22", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_23"] = {"divined@brdancesv2@new", "dbrdance7", "Break Dance 23", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_24"] = {"divined@brdancesv2@new", "dbrdance8", "Break Dance 24", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_25"] = {"divined@brdancesv2@new", "dbrdance9", "Break Dance 25", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_26"] = {"divined@brdancesv2@new", "dbrdance10", "Break Dance 26", AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_27"] = {"divined@brdancesv2@new", "dbrdance11", "Break Dance 27" , AnimationOptions =
  {
        EmoteLoop = true
  }},
  ["bdance_28"] = {"divined@brdancesv2@new", "dbrdance12", "Break Dance 28", AnimationOptions =
  {
        EmoteLoop = true
  }},
   -- Divine: Trendy
["banddance"] = {"divined@tdances@new", "dtdance1", "Band Dance", AnimationOptions =
   {
      EmoteLoop = true,
 }},

   ["hiphop_yeah"] = {"custom@hiphop_yeah", "hiphop_yeah", "Hiphop Yeah", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteLoop = false,
   }},
  ["bellydance2"] = {"custom@bellydance2", "bellydance2", "Belly Dance 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["hiphopslide"] = {"custom@hiphop_slide", "hiphop_slide", "HipHop Slide", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
 }},
  ["hiphop1"] = {"custom@hiphop1", "hiphop1", "HipHop 1", AnimationOptions =
  {
   EmoteMoving = false,
   EmoteLoop = true,
  }},
  ["hiphop2"] = {"custom@hiphop2", "hiphop2", "HipHop 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["hiphop3"] = {"custom@hiphop3", "hiphop3", "HipHop 3", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = false,
  }},
  ["hiphopold"] = {"custom@hiphop90s", "hiphop90s", "HipHop Old", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,
  }},
  ["bellydance"] = {"custom@bellydance", "bellydance", "Belly Dance", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
 ["dj"] = {"mini@strip_club@idles@dj@base", "base", "DJ", AnimationOptions =
 {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
 ["drill2"] = {"anim@amb@nightclub@dancers@crowddance_groups@", "hi_dance_crowd_09_v2_male^2", "Drill 12 ", AnimationOptions =
 {
  EmoteLoop = true,
  EmoteMoving = false,
 }},
 ["dancem6"] = {"anim@amb@nightclub@dancers@crowddance_groups@", "hi_dance_crowd_09_v2_male^3", "Dance (Male) 6 ", AnimationOptions =
 {
  EmoteLoop = true,
  EmoteMoving = false,
 }},
 ["dancem7"] = {"anim@amb@nightclub@dancers@crowddance_groups@", "hi_dance_crowd_09_v2_male^4", "Dance (Male) 7 ", AnimationOptions =
 {
  EmoteLoop = true,
  EmoteMoving = false,
 }},
  ["dancem8"] = {"anim@amb@nightclub@dancers@crowddance_groups@", "hi_dance_crowd_09_v2_male^5", "Dance (Male) 8 ", AnimationOptions =
 {
  EmoteLoop = true,
  EmoteMoving = false,
 }},

  ["danceparty"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_li_12_v1_male^2", "Dance (Party) ", AnimationOptions =
  {
   EmoteLoop = true,
   EmoteMoving = false,
 }},
  ["danceparty2"] = {"anim@amb@nightclub@dancers@crowddance_facedj_transitions@", "trans_dance_facedj_li_to_hi_09_v1_male^4", "Dance (Party) 2 ", AnimationOptions =
  {
   EmoteLoop = true,
   EmoteMoving = false,
  }},
  ["drill3"] = {"anim@mp_player_intcelebrationmale@oh_snap", "oh_snap", "Dance New ", AnimationOptions =
 {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["drill"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "mi_dance_prop_13_v1_male^3", "Drill 1", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill2"] = {"anim@amb@nightclub_island@dancers@crowddance_groups@groupd@", "mi_dance_crowd_13_v2_male^1", "Drill 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill3"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "mi_dance_facedj_17_v2_male^4", "Drill 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill4"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "mi_dance_facedj_15_v2_male^4", "Drill 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill5"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_15_v2_male^5", "Drill 5 ", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill6"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_17_male^5", "Drill 6 ", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill7"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_up", "Drill 7 ", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill8"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "med_center", "Drill 8 ", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill9"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_down", "Drill 9", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill10"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_center", "Drill 10", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["drill11"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_left_down", "Drill 11 ", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["monkeyd"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "high_center", "Monkey Dance  ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["monkeyd2"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "high_center_down", "Monkey Dance 2  ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["monkeyd3"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "med_center_down", "Monkey Dance 3  ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["rightdown"] = {"anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@", "med_right_down", "Boxing Dance Solo  ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["lowdance"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "low_center", "Low Dance 2 ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["lowdance2"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "high_center", "Low Dance 1", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["hiphop"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_d@", "ped_a_dance_idle", "Hip Hop Dance ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["hiphop2"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_b@", "ped_a_dance_idle", "Hip Hop Dance ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["hiphop3"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_a@", "ped_a_dance_idle", "Hip Hop Dance ", AnimationOptions =
   {
    EmoteLoop = true
  }},
  ["dance"] = {"anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", "Dance", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance2"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_down", "Dance 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance3"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center", "Dance 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance4"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_up", "Dance 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance5"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "med_center", "Dance 5", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["dance6"] = {"misschinese2_crystalmazemcs1_cs", "dance_loop_tao", "Dance 6", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance7"] = {"misschinese2_crystalmazemcs1_ig", "dance_loop_tao", "Dance 7", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance8"] = {"missfbi3_sniping", "dance_m_default", "Dance 8", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dance9"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", "Dance 9", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef"] = {"anim@amb@nightclub@dancers@solomun_entourage@", "mi_dance_facedj_17_v1_female^1", "Dance F", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", "Dance F2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef4"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^1", "Dance F4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef5"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^3", "Dance F5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancef6"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F6", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceclub"] = {"anim@amb@nightclub_island@dancers@beachdance@", "hi_idle_a_m03", "Dance Club", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub2"] = {"anim@amb@nightclub_island@dancers@beachdance@", "hi_idle_a_m05", "Dance Club 2", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub3"] = {"anim@amb@nightclub_island@dancers@beachdance@", "hi_idle_a_m02", "Dance Club 3", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub4"] = {"anim@amb@nightclub_island@dancers@beachdance@", "hi_idle_b_f01", "Dance Club 4", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub5"] = {"anim@amb@nightclub_island@dancers@club@", "hi_idle_a_f02", "Dance Club 5", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub6"] = {"anim@amb@nightclub_island@dancers@club@", "hi_idle_b_m03", "Dance Club 6", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceclub7"] = {"anim@amb@nightclub_island@dancers@club@", "hi_idle_d_f01", "Dance Club 7", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["dancedrink"] = {"anim@amb@nightclub_island@dancers@beachdanceprop@", "mi_idle_c_m01", "Dance Drink (Beer)", AnimationOptions =
  {
    Prop = 'prop_beer_amopen',
    PropBone = 28422,
    PropPlacement = {0.0, 0.00,0.0, 0.0, 0.0, 20.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink2"] = {"anim@amb@nightclub_island@dancers@beachdanceprop@", "mi_loop_f1", "Dance Drink 2 (Wine)", AnimationOptions =
  {
    Prop = 'p_wine_glass_s',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0,-0.0900, 0.0, 0.0, 0.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink3"] = {"anim@amb@nightclub_island@dancers@beachdanceprop@", "mi_loop_m04", "Dance Drink 3 (Whiskey)", AnimationOptions =
  {
    Prop = 'ba_prop_battle_whiskey_opaque_s',
    PropBone = 28422,
    PropPlacement = {-0.0100, 0.00,0.0, 0.0, 0.0, 10.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink4"] = {"anim@amb@nightclub_island@dancers@beachdanceprops@male@", "mi_idle_b_m04", "Dance Drink 4 (Whiskey)", AnimationOptions =
  {
    Prop = 'ba_prop_battle_whiskey_opaque_s',
    PropBone = 28422,
    PropPlacement = {-0.0100, 0.00,0.0, 0.0, 0.0, 10.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink5"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_female^3", "Dance Drink 5 (Wine)", AnimationOptions =
  {
    Prop = 'p_wine_glass_s',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0,-0.0900, 0.0, 0.0, 0.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink6"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "hi_dance_prop_09_v1_male^3", "Dance Drink 6 (Beer)", AnimationOptions =
  {
    Prop = 'prop_beer_logopen',
    PropBone = 28422,
    PropPlacement = {0.0090, 0.0010,-0.0310, 180.0, 180.0, -69.99},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink7"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "hi_dance_prop_11_v1_female^3", "Dance Drink 7 (Wine)", AnimationOptions =
  {
    Prop = 'p_wine_glass_s',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0,-0.0900, 0.0, 0.0, 0.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dancedrink8"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "hi_dance_prop_11_v1_female^1", "Dance Drink 8 (Wine)", AnimationOptions =
  {
    Prop = 'p_wine_glass_s',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0,-0.0900, 0.0, 0.0, 0.00},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["danceupper"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Upper", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["danceupper2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center_up", "Dance Upper 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["danceshy"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "low_center", "Dance Shy", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceshy2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center_down", "Dance Shy 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceslow"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "low_center", "Dance Slow", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceslow2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center", "Dance Slow 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceslow3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", "Dance Slow 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceslow4"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center", "Dance Slow 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["danceslow7"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_li_12_v1_male^2", "Dance (Slow) 7 ", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
   ["danceslow8"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_li_12_v1_male^5", "Dance (Slow) 8 ", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
   ["danceslow9"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_li_12_v1_male^4", "Dance (Slow) 9 ", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["danceslow10"] = {"anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity", "trans_dance_crowd_mi_to_hi_09_v1_male^4", "Dance (Slow) 10 ", AnimationOptions =
  {
   EmoteLoop = true,
   EmoteMoving = false,
 }},
  ["dancesilly9"] = {"rcmnigel1bnmt_1b", "dance_loop_tyler", "Dance Silly 9", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "Dance Silly", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly2"] = {"move_clown@p_m_zero_idles@", "fidget_short_dance", "Dance Silly 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly3"] = {"move_clown@p_m_two_idles@", "fidget_short_dance", "Dance Silly 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly4"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", "Dance Silly 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly5"] = {"timetable@tracy@ig_5@idle_a", "idle_a", "Dance Silly 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly6"] = {"timetable@tracy@ig_8@idle_b", "idle_d", "Dance Silly 6", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["dancesilly8"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Dance Silly 8", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["dancesilly7"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Silly 7", AnimationOptions =
  {
    EmoteLoop = true
  }},
  ["danceglowstick"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_13_mi_hi_sexualgriding_laz", "Dance Glowsticks", AnimationOptions =
  {
    Prop = 'ba_prop_battle_glowstick_01',
    PropBone = 28422,
    PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
    SecondProp = 'ba_prop_battle_glowstick_01',
    SecondPropBone = 60309,
    SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["danceglowstick2"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_12_mi_hi_bootyshake_laz", "Dance Glowsticks 2", AnimationOptions =
  {
    Prop = 'ba_prop_battle_glowstick_01',
    PropBone = 28422,
    PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
    SecondProp = 'ba_prop_battle_glowstick_01',
    SecondPropBone = 60309,
    SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
    EmoteLoop = true,
  }},
  ["danceglowstick3"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_09_mi_hi_bellydancer_laz", "Dance Glowsticks 3", AnimationOptions =
  {
    Prop = 'ba_prop_battle_glowstick_01',
    PropBone = 28422,
    PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
    SecondProp = 'ba_prop_battle_glowstick_01',
    SecondPropBone = 60309,
    SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
    EmoteLoop = true,
  }},
  ["dancehorse"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_15_handup_laz", "Dance Horse", AnimationOptions =
  {
    Prop = "ba_prop_battle_hobby_horse",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["dancehorse2"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "crowddance_hi_11_handup_laz", "Dance Horse 2", AnimationOptions =
  {
    Prop = "ba_prop_battle_hobby_horse",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
  }},
  ["dancehorse3"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_11_hu_shimmy_laz", "Dance Horse 3", AnimationOptions =
  {
    Prop = "ba_prop_battle_hobby_horse",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
  }},
  ["dj"] = {"anim@amb@nightclub@djs@dixon@", "dixn_dance_cntr_open_dix", "DJ", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["dj2"] = {"anim@amb@nightclub@djs@solomun@", "sol_idle_ctr_mid_a_sol", "DJ 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj3"] = {"anim@amb@nightclub@djs@solomun@", "sol_dance_l_sol", "DJ 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj4"] = {"anim@amb@nightclub@djs@black_madonna@", "dance_b_idle_a_blamadon", "DJ 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj5"] = {"anim@amb@nightclub@djs@dixon@", "dixn_end_dix", "DJ 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj5"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_a_dix", "DJ 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj6"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_b_dix", "DJ 6", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj7"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_g_dix", "DJ 7", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj8"] = {"anim@amb@nightclub@djs@dixon@", "dixn_idle_cntr_gb_dix", "DJ 8", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["dj9"] = {"anim@amb@nightclub@djs@dixon@", "dixn_sync_cntr_j_dix", "DJ 9", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["twerk"] = {"switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", "Twerk", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdance"] = {"mp_safehouse", "lap_dance_girl", "Lapdance"},

  ["lapdance2"] = {"mini@strip_club@private_dance@idle", "priv_dance_idle", "Lapdance 2", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdance3"] = {"mini@strip_club@private_dance@part1", "priv_dance_p1", "Lapdance 3", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdance4"] = {"mini@strip_club@private_dance@part2", "priv_dance_p2", "Lapdance 4", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdance5"] = {"mini@strip_club@private_dance@part3", "priv_dance_p3", "Lapdance 5", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdance6"] = {"oddjobs@assassinate@multi@yachttarget@lapdance", "yacht_ld_f", "Lapdance 6", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdancewith"] = {"mini@strip_club@lap_dance_2g@ld_2g_p3", "ld_2g_p3_s2", "Lapdance With", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdancewith2"] = {"mini@strip_club@lap_dance_2g@ld_2g_p2", "ld_2g_p2_s2", "Lapdance With2", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapdancewith3"] = {"mini@strip_club@lap_dance_2g@ld_2g_p1", "ld_2g_p1_s2", "Lapdance With3", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapchair"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p1", "ld_girl_a_song_a_p1_f", "Lap Chair", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapchair2"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p2", "ld_girl_a_song_a_p2_f", "Lap Chair2", AnimationOptions =
  {
     EmoteLoop = true,
  }},
  ["lapchair3"] = {"mini@strip_club@lap_dance@ld_girl_a_song_a_p3", "ld_girl_a_song_a_p3_f", "Lap Chair3", AnimationOptions =
  {
     EmoteLoop = true,
  }},
}
DP.GangSigns = {
  ["agsign_1"] = {"custom@gsign_01", "gsign_01", "Gang Sign ~p~1", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_2"] = {"custom@gsign_02", "gsign_02", "Gang Sign ~p~2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_3"] = {"custom@gsign_03", "gsign_03", "Gang Sign ~p~3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_4"] = {"custom@gsign_04", "gsign_04", "Gang Sign ~p~4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_5"] = {"custom@gsign_05", "gsign_05", "Gang Sign ~p~5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_6"] = {"custom@gsign_06", "gsign_06", "Gang Sign ~p~6", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_7"] = {"custom@gsign_07", "gsign_07", "Gang Sign ~p~7", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_8"] = {"custom@gsign_08", "gsign_08", "Gang Sign ~p~8", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["agsign_9"] = {"custom@gsign_09", "gsign_09", "Gang Sign ~p~9", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_10"] = {"custom@gsign_10", "gsign_10", "Gang Sign ~p~10", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_11"] = {"custom@gsign_11", "gsign_11", "Gang Sign ~p~11", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_12"] = {"custom@gsign_12", "gsign_12", "Gang Sign ~p~12", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_13"] = {"custom@gsign_13", "gsign_13", "Gang Sign ~p~13", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_14"] = {"custom@gsign_14", "gsign_14", "Gang Sign ~p~14", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_15"] = {"custom@mgsign_01", "mgsign_01", "Gang Sign ~p~15", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_16"] = {"custom@mgsign_02", "mgsign_02", "Gang Sign ~p~16", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_17"] = {"custom@mgsign_03", "mgsign_03", "Gang Sign ~p~17", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_18"] = {"custom@mgsign_04", "mgsign_04", "Gang Sign ~p~18", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["bgsign_19"] = {"custom@gsign_26", "gsign_26", "Gang Sign ~p~19", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["gsign20"] = {"custom@gsign_27", "gsign_27", "Gang Sign ~p~20", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["gsign21"] = {"custom@gsign_28", "gsign_28", "Gang Sign ~p~21", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["gsign22"] = {"custom@gsign_29", "gsign_29", "Gang Sign ~p~22", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign23"] = {"custom@gsign_30", "gsign_30", "Gang Sign ~p~23", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["gsign24"] = {"custom@gsign_31", "gsign_31", "Gang Sign ~p~24", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign25"] = {"custom@gsign_32", "gsign_32", "Gang Sign ~p~25", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign26"] = {"custom@gsign_33", "gsign_33", "Gang Sign ~p~26", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign27"] = {"custom@gsign_34", "gsign_34", "Gang Sign ~p~27", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign28"] = {"custom@gsign_35", "gsign_35", "Gang Sign ~p~28", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign29"] = {"custom@gsign_36", "gsign_36", "Gang Sign ~p~29", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign30"] = {"custom@gsign_37", "gsign_37", "Gang Sign ~p~30", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["gsign31"] = {"anim@mp_player_intupperdock", "idle_a", "Gang Sign ~p~31", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteDuration = 2500,
  }},
  ["gsign32"] = {"mikey@gangsigns@new", "mgangsign_1", "Gang Sign ~p~32", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign33"] = {"mikey@gangsigns@new", "mgangsign_2", "Gang Sign ~p~33", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign34"] = {"mikey@gangsigns@new", "mgangsign_3", "Gang Sign ~p~34", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign35"] = {"mikey@gangsigns@new", "mgangsign_4", "Gang Sign ~p~35", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign36"] = {"mikey@gangsigns@new", "mgangsign_5", "Gang Sign ~p~36", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign37"] = {"mikey@gangsigns@new", "mgangsign_6", "Gang Sign ~p~37", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign38"] = {"mikey@gangsigns@new", "mgangsign_7", "Gang Sign ~p~38", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign39"] = {"mikey@gangsigns@new", "mgangsign_8", "Gang Sign ~p~39", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign40"] = {"mikey@gangsigns@new", "mgangsign_9", "Gang Sign ~p~40", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign41"] = {"mikey@gangsigns@new", "mgangsign_10", "Gang Sign ~p~41", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign42"] = {"mikey@gangsigns@new", "mgangsign_11", "Gang Sign ~p~42", AnimationOptions =
  {
      EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign43"] = {"mp_player_int_uppergang_sign_a", "mp_player_int_gang_sign_a", "Gang Sign ~p~43", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gsign44"] = {"mp_player_int_uppergang_sign_b", "mp_player_int_gang_sign_b", "Gang Sign ~p~44", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},

  ["gsign45"] = {"glizzy@anims@deadly", "glizzy_anim4", "Gang Sign ~p~45", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["gsign46"] = {"glizzy@anims2@deadly", "glizzy_anim6", "Gang Sign ~p~46", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["gsign47"] = {"glizzy@anims2@deadly", "glizzy_anim7", "Gang Sign ~p~47", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["gsign48"] = {"deadly@animation@asset@uppr_000_r", "uppr_000_r", "Gang Sign ~p~48", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["gsign49"] = {"deadly@anims@anim3@deadly4", "deadly4", "Gang Sign ~p~49", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["gsign50"] = {"deadly@anims@anim3@deadly3", "deadly3", "Gang Sign ~p~50", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["gsign51"] = {"deadly@anims@anim3@deadly6", "deadly6", "Gang Sign ~p~51", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
 ["gsign52"] = {"glizzy@updated@anims@deadlyck", "deadlyck", "Gang Sign ~p~52", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign53"] = {"glizzy@updated@anims@deadlychoo", "deadlychoo", "Gang Sign ~p~53", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign54"] = {"glizzy@updated@anims@deadlywhoo", "deadlywhoo", "Gang Sign ~p~54", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign55"] = {"glizzy@updated@anims@deadlysexmoneymurda", "deadlysexmoneymurda", "Gang Sign ~p~55", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign56"] = {"glizzy@updated@anims@deadlyfacehiddingidle", "deadlyfacehiddingidle", "Gang Sign ~p~56", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = false,
 }},
 ["gsign57"] = {"darkcustoma@animation", "darkcustoma_clip", "Gang Sign ~p~57", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign58"] = {"custom@animation", "darkgang_clip", "Gang Sign ~p~58", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign59"] = {"gang@cubandark", "gang_clip", "Gang Sign ~p~59", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign60"] = {"ganga@cubandark", "ganga_clip", "Gang Sign ~p~60", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign61"] = {"gangb@cubandark", "gangb_clip", "Gang Sign ~p~61", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign62"] = {"thewoo@cubandark", "thewoo_clip", "Gang Sign ~p~62", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["gsign63"] = {"darkcustom@animation", "darkcustom_clip", "Gang Sign ~p~63", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},

  ["gsign64"] = {"wrldmods@trippieredd", "trippieredd", "Gang Sign ~p~64", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign65"] = {"animanuel@bry", "animanuel_clip", "Gang Sign ~p~65", AnimationOptions =
   {
      EmoteLoop = true,
      EmoteMoving = false,
   }},
   ["gsign66"] = {"animchimi2@bry", "animchimi2_clip", "Gang Sign ~p~66", AnimationOptions =
   {
      EmoteLoop = true,
      EmoteMoving = false,
   }},
   ["gsign67"] = {"customc@cubandark", "customc_clip", "Gang Sign ~p~67", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = true,
   }},
   ["gsign68"] = {"tresletra@cubandark", "tresletra_clip", "Gang Sign ~p~68", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = true,
   }},
   ["gsign69"] = {"handsign@cubandark", "handsign_clip", "Gang Sign ~p~69", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["gsign70"] = {"custom1@cubandark", "custom1_clip", "Gang Sign ~p~70", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = true,
   }},
   ["gsign71"] = {"custom2@cubandark", "custom2_clip", "Gang Sign ~p~71", AnimationOptions =
   {
    EmoteLoop = true,
    EmoteMoving = true,
   }},
   ["gsign72"] = {"sets3letra@sets", "sets3letra_clip", "Gang Sign ~p~72", AnimationOptions =
   {
      EmoteLoop = true,
      EmoteMoving = false,
   }},
   ["gsign73"] = {"anim@doublerabbit", "rabbit_clip", "Gang Sign ~p~73", AnimationOptions =
   {
      EmoteLoop = true,
      EmoteMoving = false,
   }},
   ["gsign74"] = {"setsmanos@sets", "setsmanos_clip", "Gang Sign ~p~74", AnimationOptions =
   {
      EmoteLoop = true,
      EmoteMoving = false,
   }},
   ["gsign75"] = { "qpacc@gangsign1", "gangsign1_clip", "Gang Sign ~p~75", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign76"] = { "qpacc@gangsign2", "gangsign2_clip", "Gang Sign ~p~76", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign77"] = { "qpacc@gangsign3", "gangsign3_clip", "Gang Sign ~p~77", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign78"] = { "qpacc@gangsign4", "gangsign4_clip", "Gang Sign ~p~78", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign79"] = { "qpacc@gangsign5", "gangsign5_clip", "Gang Sign ~p~79", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign80"] = { "qpacc@gangsign6", "gangsign6_clip", "Gang Sign ~p~80", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign81"] = { "qpacc@gangsign7", "gangsign7_clip", "Gang Sign ~p~81", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign82"] = { "qpacc@gangsign8", "gangsign8_clip", "Gang Sign ~p~82", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign83"] = { "tattooshowinn@animation", "tattooshowinn_clip", "Gang Sign ~p~83", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign84"] = { "chillimannn@animation", "chillimannn_clip", "Gang Sign ~p~84", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign85"] = { "gangpose1@animation", "gangpose1_clip", "Gang Sign ~p~85", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign86"] = { "blooh@animation", "blooh_clip", "Gang Sign ~p~86", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign87"] = { "famf@animation", "famf_clip", "Gang Sign ~p~87", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign88"] = { "fuckb@animation", "fuckb_clip", "Gang Sign ~p~88", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign89"] = { "grabber@animation", "grabber_clip", "Gang Sign ~p~89", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign90"] = { "mfnapk@animation", "mfnapk_clip", "Gang Sign ~p~90", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign91"] = { "neighbour@animation", "neighbour_clip", "Gang Sign ~p~91", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign92"] = { "nonapps@animation", "nonapps_clip", "Gang Sign ~p~92", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign93"] = { "zuna@animation", "zuna_clip", "Gang Sign ~p~93", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign94"] = { "five@nyck", "five_clip", "Gang Sign ~p~94", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign95"] = { "capper@nyck", "capper_clip", "Gang Sign ~p~95", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign96"] = { "pose@nyck", "pose_clip", "Gang Sign ~p~96", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign97"] = { "pose2@nyck", "pose2_clip", "Gang Sign ~p~97", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign98"] = { "pose3@nyck", "pose3_clip", "Gang Sign ~p~98", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign99"] = { "mafiag@nyck", "mafiag_clip", "Gang Sign ~p~99", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_100"] = { "15idk@animation", "15idk_clip", "Gang Sign ~p~100", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_101"] = { "bkcr@animation", "bkcr_clip", "Gang Sign ~p~101", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_102"] = { "bhw@animation", "bhw_clip", "Gang Sign ~p~102", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_103"] = { "99mafia@animation", "99mafia_clip", "Gang Sign ~p~103", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_104"] = { "krank@animation", "krank_clip", "Gang Sign ~p~104", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_105"] = { "mymsign1@animacion", "mymsign1_clip", "Gang Sign ~p~105", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_106"] = { "mymsign20@animacion", "mymsign20_clip", "Gang Sign ~p~106", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_107"] = { "mymsign30@animacion", "mymsign30_clip", "Gang Sign ~p~107", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_108"] = { "cardo@crip_sign_1", "crip_sign_1", "Gang Sign ~p~108", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_109"] = { "cardo@crip_sign_2", "crip_sign_2", "Gang Sign ~p~109", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_110"] = { "cardo@crip_sign_3", "crip_sign_3", "Gang Sign ~p~110", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_111"] = { "cardo@crip_sign_4", "crip_sign_4", "Gang Sign ~p~111", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},
   ["gsign_112"] = { "cardo@crip_sign_5", "crip_sign_5", "Gang Sign ~p~112", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteLoop = true,
   }},

}


DP.Emotes = {
}

DP.OldEmotes = {
  ["jumpingjack"] = {"custom@jumpingjack", "jumpingjack", "Jumping Jack", AnimationOptions =
{
   EmoteMoving = false,
   EmoteLoop = true,
}},
  ["narutorun"] = {"custom@narutorun", "narutorun", "Naruto Run", AnimationOptions =
{
   EmoteMoving = true,
   EmoteLoop = true,
}},
  ["dragonballz"] = {"custom@dragonballz", "dragonballz", "Dragonball Z", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = false,
  }},

  ["corkscrew"] = {"mikey@acrobatics@new", "corkscrew", "Corkscrew", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["corkscrew2"] = {"mikey@acrobatics@new", "corkscrew2", "Corkscrew 2", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["prop_flip"] = {"mikey@acrobatics@new", "prop_flip", "Prop Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["runfrontflip"] = {"mikey@acrobatics@new", "runfrontflip", "Run Front Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["runwallbackflip"] = {"mikey@acrobatics@new", "runwallbackflip", "Run Wall Back Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["spin_kickflip"] = {"mikey@acrobatics@new", "spin_kick_flip", "Spin Kick Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["standingbackflip"] = {"mikey@acrobatics@new", "standingbackflip", "Standing Back Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["steeze_backflip"] = {"mikey@acrobatics@new", "steeze_backflip", "Steeze Back Flip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["twistflip"] = {"mikey@acrobatics@new", "twistflip", "Twistflip", AnimationOptions =
  {
      EmoteLoop = false
  }},
  ["jleaningwallback"] = {"anim@amb@casino@peds@", "amb_world_human_leaning_male_wall_back_mobile_idle_a", "Leaning Wall Back  Male", AnimationOptions =
   {
    Prop = "prop_amb_phone",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
   }},
  ["oob2"] = {"rcmfanatic3leadinoutef_3_mcs_1", "fra_outofbreath_loop", "Out Of Breath 2", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["damn3"] = {"misscommon@response", "damn", "Damn", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jkhaby"] = {"missarmenian3@simeon_tauntsidle_b", "areyounotman", "Khaby  Special", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jdepressed"] = {"oddjobs@bailbond_hobodepressed", "base", "Depressed", AnimationOptions =
   {
    EmoteMoving = true,
   }},
   ["jcarsign"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@bodhi@rds@base", "idle_a", "CarGangSign ~p~ Car", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2500,
   }},
   ["jcarsign2"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@low@ds@base", "idle_a", "CarGangSigns 2  Car", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2500,
   }},
   ["jcarlowrider"] = {"anim@veh@lowrider@low@front_ds@arm@base", "sit", "Lowrider Style  Car ", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
   }},
   ["jcarlowrider2"] = {"anim@veh@lowrider@std@ds@arm@music@mexicanidle_a", "idle", "Lowrider Mexican Style  Car ", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
   }},
  ["jpbox"] = {"mp_am_hold_up", "purchase_beerbox_shopkeeper", "Purchase Box", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteDuration = 2500,
  }},
  ["jch"] = {"amb@code_human_police_investigate@idle_b", "idle_f", "Cop Search", AnimationOptions =
  {
   EmoteMoving = false,
   EmoteDuration = 7000,
  }},
  ["jcheckwatch"] = {"amb@code_human_wander_idles_fat@male@idle_a", "idle_a_wristwatch", "Check Watch  Male", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteDuration = 5000,
  }},
  ["jpicking"] = {"amb@prop_human_movie_bulb@idle_a", "idle_a", "Picking", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteDuration = 2500,
  }},
  ["jgangaim"] = {"combat@aim_variations@1h@gang", "aim_variation_b", "Gang Aim", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["jshowboobs"] = {"mini@strip_club@backroom@", "stripper_b_backroom_idle_b", "Show Boobs", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteDuration = 6000,
  }},
  ["jcleanleg"] = {"mini@strip_club@backroom@", "stripper_c_leadin_backroom_idle_a", "Clean Legs", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteDuration = 6000,
  }},
  ["jshowboobs2"] = {"mini@strip_club@idles@stripper", "stripper_idle_05", "Show Boobs 2", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteDuration = 6000,
  }},
  ["jlockcar"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Lock Car", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteDuration = 2500,
  }},
  ["jselfie5"] = {"cellphone@self", "selfie", "Selfie 3", AnimationOptions =
  {
      EmoteMoving = false,
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
  }},
  ["jselfiewc"] = {"cellphone@self@franklin@", "west_coast", "Selfie West Coast", AnimationOptions =
  {
      EmoteMoving = false,
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
  }},
  ["jselfie3"] = {"cellphone@self@michael@", "finger_point", "Selfie Finger", AnimationOptions =
  {
      EmoteMoving = false,
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
  }},
  ["jselfie4"] = {"cellphone@self@franklin@", "chest_bump", "Selfie Chest Bump", AnimationOptions =
  {
      EmoteMoving = false,
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
  }},
  ["jSelfie1"] = {"cellphone@self@trevor@", "throat_slit", "Selfie", AnimationOptions =
  {
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
      EmoteMoving = false,
  }},
  ["jSelfie2"] = {"cellphone@self@trevor@", "proud_finger", "Selfie2", AnimationOptions =
  {
      Prop = "prop_amb_phone",
      PropBone = 28422,
      PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
      EmoteLoop = true,
      EmoteMoving = false,
  }},
  ["breakdance"] = {"export@breakdance", "breakdance", "Break Dance", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteDuration = 8000,
  }},
  ["sitlow"] = {"anim@veh@lowrider@std@ds@arm@base", "sit_low_lowdoor", "Sit Lowrider", AnimationOptions =
   {
      EmoteLoop = true,
   }},
  ["beast"] = {"anim@mp_fm_event@intro", "beast_transform", "Beast", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 5000,
  }},
  ["chill"] = {"switch@trevor@scares_tramp", "trev_scares_tramp_idle_tramp", "Chill", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cloudgaze"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_girl", "Cloudgaze", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cloudgaze2"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_guy", "Cloudgaze 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["prone"] = {"missfbi3_sniping", "prone_dave", "Prone", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["pullover"] = {"misscarsteal3pullover", "pull_over_right", "Pullover", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1300,
  }},
  ["idle"] = {"anim@heists@heist_corona@team_idles@male_a", "idle", "Idle", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle8"] = {"amb@world_human_hang_out_street@male_b@idle_a", "idle_b", "Idle 8"},
  ["idle9"] = {"friends@fra@ig_1", "base_idle", "Idle 9", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle10"] = {"mp_move@prostitute@m@french", "idle", "Idle 10", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["idle11"] = {"random@countrysiderobbery", "idle_a", "Idle 11", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle2"] = {"anim@heists@heist_corona@team_idles@female_a", "idle", "Idle 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle3"] = {"anim@heists@humane_labs@finale@strip_club", "ped_b_celebrate_loop", "Idle 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle4"] = {"anim@mp_celebration@idles@female", "celebration_idle_f_a", "Idle 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle5"] = {"anim@mp_corona_idles@female_b@idle_a", "idle_a", "Idle 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle6"] = {"anim@mp_corona_idles@male_c@idle_a", "idle_a", "Idle 6", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idle7"] = {"anim@mp_corona_idles@male_d@idle_a", "idle_a", "Idle 7", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idledrunk"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd1", "Idle Drunk", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idledrunk2"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd2", "Idle Drunk 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["idledrunk3"] = {"missarmenian2", "standing_idle_loop_drunk", "Idle Drunk 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["airguitar"] = {"anim@mp_player_intcelebrationfemale@air_guitar", "air_guitar", "Air Guitar"},
  ["airsynth"] = {"anim@mp_player_intcelebrationfemale@air_synth", "air_synth", "Air Synth"},
  ["argue"] = {"misscarsteal4@actor", "actor_berating_loop", "Argue", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["argue2"] = {"oddjobs@assassinate@vice@hooker", "argue_a", "Argue 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bartender"] = {"anim@amb@clubhouse@bar@drink@idle_a", "idle_a_bartender", "Bartender", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["blowkiss"] = {"anim@mp_player_intcelebrationfemale@blow_kiss", "blow_kiss", "Blow Kiss"},
  ["blowkiss2"] = {"anim@mp_player_intselfieblow_kiss", "exit", "Blow Kiss 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000

  }},
  ["curtsy"] = {"anim@mp_player_intcelebrationpaired@f_f_sarcastic", "sarcastic_left", "Curtsy"},
  ["bringiton"] = {"misscommon@response", "bring_it_on", "Bring It On", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000
  }},
  ["comeatmebro"] = {"mini@triathlon", "want_some_of_this", "Come at me bro", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000
  }},
  ["cop2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Cop 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cop3"] = {"amb@code_human_police_investigate@idle_a", "idle_b", "Cop 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cop4"] = {"amb@world_human_car_park_attendant@male@base", "base", "Cop 4", AnimationOptions =
  {
    Prop = "prop_parking_wand_01",
    PropBone = 57005,
    PropPlacement = {0.12, 0.05, 0.0, 80.0, -20.0, 180.0},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarms"] = {"amb@world_human_hang_out_street@female_arms_crossed@idle_a", "idle_a", "Crossarms", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarms2"] = {"amb@world_human_hang_out_street@male_c@idle_a", "idle_b", "Crossarms 2", AnimationOptions =
  {
    EmoteMoving = true,
  }},
  ["crossarms3"] = {"anim@heists@heist_corona@single_team", "single_team_loop_boss", "Crossarms 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarms4"] = {"random@street_race", "_car_b_lookout", "Crossarms 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarms5"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Crossarms 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["foldarms2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Fold Arms 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarms6"] = {"random@shop_gunstore", "_idle", "Crossarms 6", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["foldarms"] = {"anim@amb@business@bgen@bgen_no_work@", "stand_phone_phoneputdown_idle_nowork", "Fold Arms", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["crossarmsside"] = {"rcmnigel1a_band_groupies", "base_m2", "Crossarms Side", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["damn"] = {"gestures@m@standing@casual", "gesture_damn", "Damn", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000
  }},
  ["damn2"] = {"anim@am_hold_up@male", "shoplift_mid", "Damn 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000
  }},
  ["pointdown"] = {"gestures@f@standing@casual", "gesture_hand_down", "Point Down", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000
  }},
  ["surrender"] = {"random@arrests@busted", "idle_a", "Surrender", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["surrender2"] = {"mp_bank_heist_1", "f_cower_02", "Surrender 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["surrender3"] = {"mp_bank_heist_1", "m_cower_01", "Surrender 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["surrender4"] = {"mp_bank_heist_1", "m_cower_02", "Surrender 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["surrender5"] = {"random@arrests", "kneeling_arrest_idle", "Surrender 5", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["surrender6"] = {"rcmbarry", "m_cower_01", "Surrender 6", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["facepalm2"] = {"anim@mp_player_intcelebrationfemale@face_palm", "face_palm", "Facepalm 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 8000
  }},
  ["facepalm"] = {"random@car_thief@agitated@idle_a", "agitated_idle_a", "Facepalm", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 8000
  }},
  ["facepalm3"] = {"missminuteman_1ig_2", "tasered_2", "Facepalm 3", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 8000
  }},
  ["facepalm4"] = {"anim@mp_player_intupperface_palm", "idle_a", "Facepalm 4", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["fallover"] = {"random@drunk_driver_1", "drunk_fall_over", "Fall Over"},
  ["fallover2"] = {"mp_suicide", "pistol", "Fall Over 2"},
  ["fallover3"] = {"mp_suicide", "pill", "Fall Over 3"},
  ["fallover4"] = {"friends@frf@ig_2", "knockout_plyr", "Fall Over 4"},
  ["fallover5"] = {"anim@gangops@hostage@", "victim_fail", "Fall Over 5"},
  ["fallasleep"] = {"mp_sleep", "sleep_loop", "Fall Asleep", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["fightme"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_c", "Fight Me"},
  ["fightme2"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_e", "Fight Me 2"},
  ["finger"] = {"anim@mp_player_intselfiethe_bird", "idle_a", "Finger", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["finger2"] = {"anim@mp_player_intupperfinger", "idle_a_fp", "Finger 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["handshake"] = {"mp_ped_interaction", "handshake_guy_a", "Handshake", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000
  }},
  ["handshake2"] = {"mp_ped_interaction", "handshake_guy_b", "Handshake 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000
  }},
  ["wait"] = {"random@shop_tattoo", "_idle_a", "Wait", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitb"] = {"missbigscore2aig_3", "wait_for_van_c", "Wait B", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitc"] = {"amb@world_human_hang_out_street@female_hold_arm@idle_a", "idle_a", "Wait C", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitd"] = {"amb@world_human_hang_out_street@Female_arm_side@idle_a", "idle_a", "Wait D", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waite"] = {"missclothing", "idle_storeclerk", "Wait E", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitf"] = {"timetable@amanda@ig_2", "ig_2_base_amanda", "Wait F", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitg"] = {"rcmnigel1cnmt_1c", "base", "Wait G", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waith"] = {"rcmjosh1", "idle", "Wait H", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waiti"] = {"rcmjosh2", "josh_2_intp1_base", "Wait I", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitj"] = {"timetable@amanda@ig_3", "ig_3_base_tracy", "Wait J", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitk"] = {"misshair_shop@hair_dressers", "keeper_base", "Wait K", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitl"] = {"rcmjosh1", "keeper_base", "Wait L", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["waitm"] = {"rcmnigel1a", "base", "Wait M", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["hiking"] = {"move_m@hiking", "idle", "Hiking", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["hug"] = {"mp_ped_interaction", "kisses_guy_a", "Hug"},
  ["hug2"] = {"mp_ped_interaction", "kisses_guy_b", "Hug 2"},
  ["hug3"] = {"mp_ped_interaction", "hugs_guy_a", "Hug 3"},
  ["kiss"] = {"hs3_ext-20", "cs_lestercrest_3_dual-20", "kiss"},
  ["kiss2"] = {"hs3_ext-20", "csb_georginacheng_dual-20", "kiss2"},
  ["inspect"] = {"random@train_tracks", "idle_e", "Inspect"},
  ["jazzhands"] = {"anim@mp_player_intcelebrationfemale@jazz_hands", "jazz_hands", "Jazzhands", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 6000,
  }},
  ["jog2"] = {"amb@world_human_jog_standing@male@idle_a", "idle_a", "Jog 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["jog3"] = {"amb@world_human_jog_standing@female@idle_a", "idle_a", "Jog 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["jog4"] = {"amb@world_human_power_walker@female@idle_a", "idle_a", "Jog 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["jog5"] = {"move_m@joy@a", "walk", "Jog 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["jumpingjacks"] = {"timetable@reunited@ig_2", "jimmy_getknocked", "Jumping Jacks", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["kneel2"] = {"rcmextreme3", "idle", "Kneel 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["kneel3"] = {"amb@world_human_bum_wash@male@low@idle_a", "idle_a", "Kneel 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["knock"] = {"timetable@jimmy@doorknock@", "knockdoor_idle", "Knock", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["knock2"] = {"missheistfbi3b_ig7", "lift_fibagent_loop", "Knock 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["knucklecrunch"] = {"anim@mp_player_intcelebrationfemale@knuckle_crunch", "knuckle_crunch", "Knuckle Crunch", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["lean2"] = {"amb@world_human_leaning@female@wall@back@hand_up@idle_a", "idle_a", "Lean 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["lean3"] = {"amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", "Lean 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["lean4"] = {"amb@world_human_leaning@male@wall@back@foot_up@idle_a", "idle_a", "Lean 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["lean5"] = {"amb@world_human_leaning@male@wall@back@hands_together@idle_b", "idle_b", "Lean 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["leanflirt"] = {"random@street_race", "_car_a_flirt_girl", "Lean Flirt", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["leanbar2"] = {"amb@prop_human_bum_shopping_cart@male@idle_a", "idle_c", "Lean Bar 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["leanbar3"] = {"anim@amb@nightclub@lazlow@ig1_vip@", "clubvip_base_laz", "Lean Bar 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["leanbar4"] = {"anim@heists@prison_heist", "ped_b_loop_a", "Lean Bar 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["leanhigh"] = {"anim@mp_ferris_wheel", "idle_a_player_one", "Lean High", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leanhigh2"] = {"anim@mp_ferris_wheel", "idle_a_player_two", "Lean High 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leanside"] = {"timetable@mime@01_gc", "idle_a", "Leanside", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leanside2"] = {"misscarstealfinale", "packer_idle_1_trevor", "Leanside 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leanside3"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "Leanside 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leanside4"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "Leanside 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["leanside5"] = {"rcmjosh2", "josh_2_intp1_base", "Leanside 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["me"] = {"gestures@f@standing@casual", "gesture_me_hard", "Me", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000
  }},
  ["mechanic"] = {"mini@repair", "fixing_a_ped", "Mechanic", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["mechanic2"] = {"amb@world_human_vehicle_mechanic@male@base", "idle_a", "Mechanic 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["mechanic3"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanic 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["mechanic4"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanic 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["medic2"] = {"amb@medic@standing@tendtodead@base", "base", "Medic 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["meditate"] = {"rcmcollect_paperleadinout@", "meditiate_idle", "Meditiate", AnimationOptions = -- CHANGE ME
  {
    EmoteLoop = true,
  }},
  ["meditate2"] = {"rcmepsilonism3", "ep_3_rcm_marnie_meditating", "Meditiate 2", AnimationOptions = -- CHANGE ME
  {
    EmoteLoop = true,
  }},
  ["meditate3"] = {"rcmepsilonism3", "base_loop", "Meditiate 3", AnimationOptions = -- CHANGE ME
  {
    EmoteLoop = true,
  }},
  ["metal"] = {"anim@mp_player_intincarrockstd@ps@", "idle_a", "Metal", AnimationOptions = -- CHANGE ME
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["no"] = {"anim@heists@ornate_bank@chat_manager", "fail", "No", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["no2"] = {"mp_player_int_upper_nod", "mp_player_int_nod_no", "No 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["nosepick"] = {"anim@mp_player_intcelebrationfemale@nose_pick", "nose_pick", "Nose Pick", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["noway"] = {"gestures@m@standing@casual", "gesture_no_way", "No Way", AnimationOptions =
  {
    EmoteDuration = 1500,
    EmoteMoving = true,
  }},
  ["ok"] = {"anim@mp_player_intselfiedock", "idle_a", "OK", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["dock"] = {"anim@mp_player_intincardockstd@rds@", "idle_a", "Dock", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["outofbreath"] = {"re@construction", "out_of_breath", "Out of Breath", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["pickup"] = {"random@domestic", "pickup_low", "Pickup"},
  ["push"] = {"missfinale_c2ig_11", "pushcar_offcliff_f", "Push", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["push2"] = {"missfinale_c2ig_11", "pushcar_offcliff_m", "Push 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["point"] = {"gestures@f@standing@casual", "gesture_point", "Point", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["pushup"] = {"amb@world_human_push_ups@male@idle_a", "idle_d", "Pushup", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["countdown"] = {"random@street_race", "grid_girl_race_start", "Countdown", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["pointright"] = {"mp_gun_shop_tut", "indicate_right", "Point Right", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["salute"] = {"anim@mp_player_intincarsalutestd@ds@", "idle_a", "Salute", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["salute2"] = {"anim@mp_player_intincarsalutestd@ps@", "idle_a", "Salute 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["salute3"] = {"anim@mp_player_intuppersalute", "idle_a", "Salute 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["scared"] = {"random@domestic", "f_distressed_loop", "Scared", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["scared2"] = {"random@homelandsecurity", "knees_loop_girl", "Scared 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["screwyou"] = {"misscommon@response", "screw_you", "Screw You", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["shakeoff"] = {"move_m@_idles@shake_off", "shakeoff_1", "Shake Off", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3500,
  }},
  ["shot"] = {"random@dealgonewrong", "idle_a", "Shot", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sleep"] = {"timetable@tracy@sleep@", "idle_c", "Sleep", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["shrug"] = {"gestures@f@standing@casual", "gesture_shrug_hard", "Shrug", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000,
  }},
  ["shrug2"] = {"gestures@m@standing@casual", "gesture_shrug_hard", "Shrug 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1000,
  }},
  ["sit"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_idle_nowork", "Sit", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit2"] = {"rcm_barry3", "barry_3_sit_loop", "Sit 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit3"] = {"amb@world_human_picnic@male@idle_a", "idle_a", "Sit 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit4"] = {"amb@world_human_picnic@female@idle_a", "idle_a", "Sit 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit5"] = {"anim@heists@fleeca_bank@ig_7_jetski_owner", "owner_idle", "Sit 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit6"] = {"timetable@jimmy@mics3_ig_15@", "idle_a_jimmy", "Sit 6", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit7"] = {"anim@amb@nightclub@lazlow@lo_alone@", "lowalone_base_laz", "Sit 7", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit8"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_jimmy", "Sit 8", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sit9"] = {"amb@world_human_stupor@male@idle_a", "idle_a", "Sit 9", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitlean"] = {"timetable@tracy@ig_14@", "ig_14_base_tracy", "Sit Lean", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitsad"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "Sit Sad", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitscared"] = {"anim@heists@ornate_bank@hostages@hit", "hit_loop_ped_b", "Sit Scared", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitscared2"] = {"anim@heists@ornate_bank@hostages@ped_c@", "flinch_loop", "Sit Scared 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitscared3"] = {"anim@heists@ornate_bank@hostages@ped_e@", "flinch_loop", "Sit Scared 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitdrunk"] = {"timetable@amanda@drunk@base", "base", "Sit Drunk", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchair2"] = {"timetable@ron@ig_5_p3", "ig_5_p3_base", "Sit Chair 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchair3"] = {"timetable@reunited@ig_10", "base_amanda", "Sit Chair 3 (Female)", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchair4"] = {"timetable@ron@ig_3_couch", "base", "Sit Chair 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchair5"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_tracy", "Sit Chair Legs Crossed", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchair6"] = {"timetable@maid@couch@", "base", "Sit Chair Lean Back", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sitchairside"] = {"timetable@ron@ron_ig_2_alt1", "ig_2_alt1_base", "Sit Chair Side", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["situp"] = {"amb@world_human_sit_ups@male@idle_a", "idle_a", "Sit Up", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["clapangry"] = {"anim@arena@celeb@flat@solo@no_props@", "angry_clap_a_player_a", "Clap Angry", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["slowclap3"] = {"anim@mp_player_intupperslow_clap", "idle_a", "Slow Clap 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["clap"] = {"amb@world_human_cheering@male_a", "base", "Clap", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["slowclap"] = {"anim@mp_player_intcelebrationfemale@slow_clap", "slow_clap", "Slow Clap", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["slowclap2"] = {"anim@mp_player_intcelebrationmale@slow_clap", "slow_clap", "Slow Clap 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["smell"] = {"move_p_m_two_idles@generic", "fidget_sniff_fingers", "Smell", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["stickup"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Stick Up", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["stumble"] = {"misscarsteal4@actor", "stumble", "Stumble", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["stunned"] = {"stungun@standing", "damage", "Stunned", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["sunbathe2"] = {"amb@world_human_sunbathe@female@back@base", "base", "Sunbathe 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["t"] = {"missfam5_yoga", "a2_pose", "T", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["t2"] = {"mp_sleep", "bind_pose_180", "T 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["think5"] = {"mp_cp_welcome_tutthink", "b_think", "Think 5", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000,
  }},
  ["think"] = {"misscarsteal4@aliens", "rehearsal_base_idle_director", "Think", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["think3"] = {"timetable@tracy@ig_8@base", "base", "Think 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},

  ["think2"] = {"missheist_jewelleadinout", "jh_int_outro_loop_a", "Think 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["thumbsup3"] = {"anim@mp_player_intincarthumbs_uplow@ds@", "enter", "Thumbs Up 3", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000,
  }},
  ["thumbsup2"] = {"anim@mp_player_intselfiethumbs_up", "idle_a", "Thumbs Up 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["thumbsup"] = {"anim@mp_player_intupperthumbs_up", "idle_a", "Thumbs Up", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["type"] = {"anim@heists@prison_heiststation@cop_reactions", "cop_b_idle", "Type", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["type2"] = {"anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", "Type 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["type3"] = {"mp_prison_break", "hack_loop", "Type 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["type4"] = {"mp_fbi_heist", "loop", "Type 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["warmth"] = {"amb@world_human_stand_fire@male@idle_a", "idle_a", "Warmth", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave4"] = {"random@mugging5", "001445_01_gangintimidation_1_female_idle_b", "Wave 4", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000,
  }},
  ["wave2"] = {"anim@mp_player_intcelebrationfemale@wave", "wave", "Wave 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave3"] = {"friends@fra@ig_1", "over_here_idle_a", "Wave 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave"] = {"friends@frj@ig_1", "wave_a", "Wave", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave5"] = {"friends@frj@ig_1", "wave_b", "Wave 5", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave6"] = {"friends@frj@ig_1", "wave_c", "Wave 6", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave7"] = {"friends@frj@ig_1", "wave_d", "Wave 7", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave8"] = {"friends@frj@ig_1", "wave_e", "Wave 8", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["wave9"] = {"gestures@m@standing@casual", "gesture_hello", "Wave 9", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["whistle"] = {"taxi_hail", "hail_taxi", "Whistle", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 1300,
  }},
  ["whistle2"] = {"rcmnigel1c", "hailing_whistle_waive_a", "Whistle 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 2000,
  }},
  ["yeah"] = {"anim@mp_player_intupperair_shagging", "idle_a", "Yeah", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["lift"] = {"random@hitch_lift", "idle_f", "Lift", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["lol"] = {"anim@arena@celeb@flat@paired@no_props@", "laugh_a_player_b", "LOL", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["lol2"] = {"anim@arena@celeb@flat@solo@no_props@", "giggle_a_player_b", "LOL 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["statue2"] = {"fra_0_int-1", "cs_lamardavis_dual-1", "Statue 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["statue3"] = {"club_intro2-0", "csb_englishdave_dual-0", "Statue 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["passout"] = {"missarmenian2", "drunk_loop", "Passout", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["passout2"] = {"missarmenian2", "corpse_search_exit_ped", "Passout 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["passout3"] = {"anim@gangops@morgue@table@", "body_search", "Passout 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["passout4"] = {"mini@cpr@char_b@cpr_def", "cpr_pumpchest_idle", "Passout 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["passout5"] = {"random@mugging4", "flee_backward_loop_shopkeeper", "Passout 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["petting"] = {"creatures@rottweiler@tricks@", "petting_franklin", "Petting", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["crawl"] = {"move_injured_ground", "front_loop", "Crawl", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["flip2"] = {"anim@arena@celeb@flat@solo@no_props@", "cap_a_player_a", "Flip 2"},
  ["flip"] = {"anim@arena@celeb@flat@solo@no_props@", "flip_a_player_a", "Flip"},
  ["slide"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_a_player_a", "Slide"},
  ["slide2"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_b_player_a", "Slide 2"},
  ["slide3"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_c_player_a", "Slide 3"},
  ["slugger"] = {"anim@arena@celeb@flat@solo@no_props@", "slugger_a_player_a", "Slugger"},
  ["flipoff"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_a_1st", "Flip Off", AnimationOptions =
  {
    EmoteMoving = true,
  }},
  ["flipoff2"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_c_1st", "Flip Off 2", AnimationOptions =
  {
    EmoteMoving = true,
  }},
  ["bow"] = {"anim@arena@celeb@podium@no_prop@", "regal_c_1st", "Bow", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bow2"] = {"anim@arena@celeb@podium@no_prop@", "regal_a_1st", "Bow 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["keyfob"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Key Fob", AnimationOptions =
  {
    EmoteLoop = false,
    EmoteMoving = true,
    EmoteDuration = 1000,
  }},
  ["reaching"] = {"move_m@intimidation@cop@unarmed", "idle", "Reaching", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["twerk"] = {"switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", "Twerk", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["slap"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Slap", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
    EmoteDuration = 2000,
  }},
  ["headbutt"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Headbutt"},
  ["fishdance"] = {"anim@mp_player_intupperfind_the_fish", "idle_a", "Fish Dance", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["peace"] = {"mp_player_int_upperpeace_sign", "mp_player_int_peace_sign", "Peace", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["peace2"] = {"anim@mp_player_intupperpeace", "idle_a", "Peace 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["cpr"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cpr2"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ledge"] = {"missfbi1", "ledge_loop", "Ledge", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["airplane"] = {"missfbi1", "ledge_loop", "Air Plane", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["peek"] = {"random@paparazzi@peek", "left_peek_a", "Peek", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["cough"] = {"timetable@gardener@smoking_joint", "idle_cough", "Cough", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["stretch"] = {"mini@triathlon", "idle_e", "Stretch", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["stretch2"] = {"mini@triathlon", "idle_f", "Stretch 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["stretch3"] = {"mini@triathlon", "idle_d", "Stretch 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["stretch4"] = {"rcmfanatic1maryann_stretchidle_b", "idle_e", "Stretch 4", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["celebrate"] = {"rcmfanatic1celebrate", "celebrate", "Celebrate", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["punching"] = {"rcmextreme2", "loop_punching", "Punching", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["superhero"] = {"rcmbarry", "base", "Superhero", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["superhero2"] = {"rcmbarry", "base", "Superhero 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["mindcontrol"] = {"rcmbarry", "mind_control_b_loop", "Mind Control", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["mindcontrol2"] = {"rcmbarry", "bar_1_attack_idle_aln", "Mind Control 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["clown"] = {"rcm_barry2", "clown_idle_0", "Clown", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["clown2"] = {"rcm_barry2", "clown_idle_1", "Clown 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["clown3"] = {"rcm_barry2", "clown_idle_2", "Clown 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["clown4"] = {"rcm_barry2", "clown_idle_3", "Clown 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["clown5"] = {"rcm_barry2", "clown_idle_6", "Clown 5", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["tryclothes"] = {"mp_clothing@female@trousers", "try_trousers_neutral_a", "Try Clothes", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["tryclothes2"] = {"mp_clothing@female@shirt", "try_shirt_positive_a", "Try Clothes 2", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["tryclothes3"] = {"mp_clothing@female@shoes", "try_shoes_positive_a", "Try Clothes 3", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["nervous2"] = {"mp_missheist_countrybank@nervous", "nervous_idle", "Nervous 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["nervous"] = {"amb@world_human_bum_standing@twitchy@idle_a", "idle_c", "Nervous", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["nervous3"] = {"rcmme_tracey1", "nervous_loop", "Nervous 3", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["uncuff"] = {"mp_arresting", "a_uncuff", "Uncuff", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["namaste"] = {"timetable@amanda@ig_4", "ig_4_base", "Namaste", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["threaten"] = {"random@atmrobberygen", "b_atm_mugging", "Threaten", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["radio"] = {"random@arrests", "generic_radio_chatter", "Radio", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["pull"] = {"random@mugging4", "struggle_loop_b_thief", "Pull", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bird"] = {"random@peyote@bird", "wakeup", "Bird"},
  ["chicken"] = {"random@peyote@chicken", "wakeup", "Chicken", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bark"] = {"random@peyote@dog", "wakeup", "Bark"},
  ["rabbit"] = {"random@peyote@rabbit", "wakeup", "Rabbit"},
  ["spiderman"] = {"missexile3", "ex03_train_roof_idle", "Spider-Man", AnimationOptions =
  {
    EmoteLoop = true,
  }},
  ["boi"] = {"special_ped@jane@monologue_5@monologue_5c", "brotheradrianhasshown_2", "BOI", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 3000,
  }},
  ["adjust"] = {"missmic4", "michael_tux_fidget", "Adjust", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 4000,
  }},
  ["handsup"] = {"missminuteman_1ig_2", "handsup_base", "Hands Up", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["handsup2"] = {"anim@mp_player_intuppersurrender", "idle_a_fp", "Hands Up 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true,
  }},
  ["pee"] = {"misscarsteal2peeing", "peeing_loop", "Pee", AnimationOptions =
  {
    EmoteStuck = true,
    PtfxAsset = "scr_amb_chop",
    PtfxName = "ent_anim_dog_peeing",
    PtfxNoProp = true,
    PtfxPlacement = {-0.05, 0.3, 0.0, 0.0, 90.0, 90.0, 1.0},
    PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
    PtfxWait = 3000,
  }},
  ["valet"] = {"anim@amb@casino@valet_scenario@pose_a@", "base_a_m_y_vinewood_01", "Valet", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["valet2"] = {"anim@amb@casino@valet_scenario@pose_b@", "base_a_m_y_vinewood_01", "Valet 2", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["valet3"] = {"anim@amb@casino@valet_scenario@pose_d@", "base_a_m_y_vinewood_01", "Valet 3", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["hump"] = {"timetable@trevor@skull_loving_bear", "skull_loving_bear", "Hump", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["hump2"] = {"timetable@trevor@skull_loving_bear", "skull_loving_bear", "Hump 2 (Bear)", AnimationOptions =
  {
     Prop = 'prop_mr_raspberry_01',
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["tighten"] = {"timetable@denice@ig_1", "idle_b", "Tigten (Yoga)", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["fspose"] = {"missfam5_yoga", "c2_pose", "F Sex Pose", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,


  }},
  ["fspose2"] = {"missfam5_yoga", "c6_pose", "F Sex Pose 2", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,


  }},
  ["fspose4"] = {"anim@amb@carmeet@checkout_car@", "female_c_idle_d", "F Sex Pose 4", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,


  }},
  ["showerf"] = {"mp_safehouseshower@female@", "shower_enter_into_idle", "Shower Enter Female", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerf2"] = {"mp_safehouseshower@female@", "shower_idle_a", "Shower Female", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerf3"] = {"mp_safehouseshower@female@", "shower_idle_b", "Shower Female 2", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerm"] = {"mp_safehouseshower@male@", "male_shower_idle_a", "Shower Enter Male", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerm2"] = {"mp_safehouseshower@male@", "male_shower_idle_b", "Shower Male 2", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerm3"] = {"mp_safehouseshower@male@", "male_shower_idle_c", "Shower Male 3", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["showerm4"] = {"mp_safehouseshower@male@", "male_shower_idle_d", "Shower Male 4", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["picklock"] = {"missheistfbisetup1", "hassle_intro_loop_f", "Picklock", AnimationOptions =
  {
     EmoteMoving = true,
     EmoteLoop = true,

  }},
  ["cleanhands"] = {"missheist_agency3aig_23", "urinal_sink_loop", "Clean Them Filthy Hands", AnimationOptions =
  {
     EmoteMoving = true,
     EmoteLoop = true,

  }},
  ["cleanface"] = {"switch@michael@wash_face", "loop_michael", "Clean Your Face", AnimationOptions =
  {
     EmoteMoving = true,
     EmoteLoop = true,

  }},
  ["buzz"] = {"anim@apt_trans@buzzer", "buzz_reg", "Buzz Door", AnimationOptions =
  {
     EmoteLoop = false,
     EmoteMoving = false,

  }},
  ["piss"] = {"missbigscore1switch_trevor_piss", "piss_loop", "Piss (Male)", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["dig"] = {"custom@dig", "dig", "Dig", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["whatidk"] = {"custom@what_idk", "what_idk", "What Idk", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["pick"] = {"custom@pickfromground", "pickfromground", "Pick From Ground", AnimationOptions =
  {
     EmoteMoving = false,
     EmoteLoop = true,

  }},
  ["dab"] = {"custom@dab", "dab", "Dab", AnimationOptions =
    {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["sheesh"] = {"custom@sheeeeesh", "sheeeeesh", "Sheeeeesh", AnimationOptions =
    {
      EmoteMoving = true,
      EmoteLoop = true,
  }},
  ["bellydance"] = {"custom@bellydance", "bellydance", "Belly Dance", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["convulsion"] = {"custom@convulsion", "convulsion", "Convulsion", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose1"] = {"custom@female_pose_1", "female_pose_1", "Pose 1", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose2"] = {"custom@female_pose_2", "female_pose_2", "Pose 2", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose3"] = {"custom@female_pose_3", "female_pose_3", "Pose 3", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose4"] = {"custom@male_pose_1", "male_pose_1", "Pose 4", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose5"] = {"custom@male_pose_2", "male_pose_2", "Pose 5", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pose6"] = {"custom@male_pose_3", "male_pose_3", "Pose 6", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["pluck"] = {"custom@pluck_fruits", "pluck_fruits", "Pluck Fruits", AnimationOptions =
   {
      EmoteMoving = false,
      EmoteLoop = true,
   }},

   ["waiter"] = {"custom@waiter", "waiter", "Waiter", AnimationOptions =
   {
      EmoteMoving = true,
      EmoteLoop = true,
   }},



  ["atm"] = {"Scenario", "PROP_HUMAN_ATM", "ATM"},
  ["bbq"] = {"MaleScenario", "PROP_HUMAN_BBQ", "BBQ"},
  ["bumbin"] = {"Scenario", "PROP_HUMAN_BUM_BIN", "Bum Bin"},
  ["bumsleep"] = {"Scenario", "WORLD_HUMAN_BUM_SLUMPED", "Bum Sleep"},
  ["cheer"] = {"Scenario", "WORLD_HUMAN_CHEERING", "Cheer"},
  ["chinup"] = {"Scenario", "PROP_HUMAN_MUSCLE_CHIN_UPS", "Chinup"},
  ["cop"] = {"Scenario", "WORLD_HUMAN_COP_IDLES", "Cop"},
  ["drilling"] = {"Scenario", "WORLD_HUMAN_CONST_DRILL", "Construction Drilling"},
  ["filmshocking"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Film Shocking"},
  ["flex"] = {"Scenario", "WORLD_HUMAN_MUSCLE_FLEX", "Flex"},
  ["guard"] = {"Scenario", "WORLD_HUMAN_GUARD_STAND", "Guard"},
  ["garden"] = {"Scenario", "WORLD_HUMAN_GARDENER_PLANT", "Gardening"},
  ["hammer"] = {"Scenario", "WORLD_HUMAN_HAMMERING", "Hammer"},
  ["hangout"] = {"Scenario", "WORLD_HUMAN_HANG_OUT_STREET", "Hangout"},
  ["impatient"] = {"Scenario", "WORLD_HUMAN_STAND_IMPATIENT", "Impatient"},
  ["janitor"] = {"Scenario", "WORLD_HUMAN_JANITOR", "Janitor"},
  ["jog"] = {"Scenario", "WORLD_HUMAN_JOG_STANDING", "Jog"},
  ["kneel"] = {"Scenario", "CODE_HUMAN_MEDIC_KNEEL", "Kneel"},
  ["lean"] = {"Scenario", "WORLD_HUMAN_LEANING", "Lean"},
  ["leanbar"] = {"Scenario", "PROP_HUMAN_BUM_SHOPPING_CART", "Lean Bar"},
  ["lookout"] = {"Scenario", "CODE_HUMAN_CROSS_ROAD_WAIT", "Lookout"},
  ["maid"] = {"Scenario", "WORLD_HUMAN_MAID_CLEAN", "Maid"},
  ["medic"] = {"Scenario", "CODE_HUMAN_MEDIC_TEND_TO_DEAD", "Medic"},
  ["musician"] = {"MaleScenario", "WORLD_HUMAN_MUSICIAN", "Musician"}, -- Ambient Music Doesn't Seem To Work For Female, Hence It's Male Only
  ["notepad2"] = {"Scenario", "CODE_HUMAN_MEDIC_TIME_OF_DEATH", "Notepad 2"},
  ["parkingmeter"] = {"Scenario", "PROP_HUMAN_PARKING_METER", "Parking Meter"},
  ["party"] = {"Scenario", "WORLD_HUMAN_PARTYING", "Party"},
  ["texting"] = {"Scenario", "WORLD_HUMAN_STAND_MOBILE", "Texting"},
  ["prosthigh"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", "Prostitue High"},
  ["prostlow"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", "Prostitue Low"},
  ["puddle"] = {"Scenario", "WORLD_HUMAN_BUM_WASH", "Puddle"},
  ["record"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Record"},

  -- Sitchair is a litte special, since you want the player to be seated correctly.
  -- So we set it as "ScenarioObject" and do TaskStartScenarioAtPosition() instead of "AtPlace"

  ["sitchair"] = {"ScenarioObject", "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", "Sit Chair"},
  ["smoke"] = {"Scenario", "WORLD_HUMAN_SMOKING", "Smoke"},
  ["smokeweed"] = {"MaleScenario", "WORLD_HUMAN_DRUG_DEALER", "Smoke Weed (Male)"}, -- Male
  ["smokepot"] = {"Scenario", "WORLD_HUMAN_SMOKING_POT", "Smoke Weed (Female)"}, -- Female
  ["statue"] = {"Scenario", "WORLD_HUMAN_HUMAN_STATUE", "Statue"},

  ["weld"] = {"Scenario", "WORLD_HUMAN_WELDING", "Weld"},

  -- CASINO DLC EMOTES (Requires gamebuild 2060 or higher)
  ["karate"] = {"anim@mp_player_intcelebrationfemale@karate_chops", "karate_chops", "Karate"},
  ["karate2"] = {"anim@mp_player_intcelebrationmale@karate_chops", "karate_chops", "Karate 2"},
  ["cutthroat"] = {"anim@mp_player_intcelebrationmale@cut_throat", "cut_throat", "Cut Throat"},
  ["cutthroat2"] = {"anim@mp_player_intcelebrationfemale@cut_throat", "cut_throat", "Cut Throat 2"},
  ["mindblown"] = {"anim@mp_player_intcelebrationmale@mind_blown", "mind_blown", "Mind Blown", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 4000
  }},
  ["mindblown2"] = {"anim@mp_player_intcelebrationfemale@mind_blown", "mind_blown", "Mind Blown 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 4000
  }},
  ["boxing"] = {"anim@mp_player_intcelebrationmale@shadow_boxing", "shadow_boxing", "Boxing", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 4000
  }},
  ["boxing2"] = {"anim@mp_player_intcelebrationfemale@shadow_boxing", "shadow_boxing", "Boxing 2", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 4000
  }},
  ["stink"] = {"anim@mp_player_intcelebrationfemale@stinker", "stinker", "Stink", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["think4"] = {"anim@amb@casino@hangout@ped_male@stand@02b@idles", "idle_a", "Think 4", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["adjusttie"] = {"clothingtie", "try_tie_positive_a", "Adjust Tie", AnimationOptions =
  {
    EmoteMoving = true,
    EmoteDuration = 5000
  }},
  ["jreactiona"] = {"random@shop_robbery_reactions@", "absolutely", "Reaction Absolutely", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactanger"] = {"random@shop_robbery_reactions@", "anger_a", "Reaction Anger", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactwhy"] = {"random@shop_robbery_reactions@", "is_this_it", "Reaction Why", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactscrew"] = {"random@shop_robbery_reactions@", "screw_you", "Reaction Screw You", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactshock"] = {"random@shop_robbery_reactions@", "shock", "Reaction Shock", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactgoodc"] = {"missclothing", "good_choice_storeclerk", "Reaction Good Choice", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jtrynewc"] = {"clothingtie", "try_tie_neutral_c", "Try New Clothes", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jtrynewc2"] = {"clothingtie", "try_tie_neutral_d", "Try New Clothes 2", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreacteasy"] = {"gestures@m@car@std@casual@ds", "gesture_easy_now", "Reaction Easy Now", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreact─▒will"] = {"gestures@m@car@std@casual@ds", "gesture_i_will", "Reaction I will", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactnoway"] = {"gestures@m@car@std@casual@ds", "gesture_no_way", "Reaction No Way", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactbye"] = {"gestures@f@standing@casual", "gesture_bye_hard", "Reaction Bye Hard", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreacthello"] = {"gestures@f@standing@casual", "gesture_hello", "Reaction Hello", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
      ["jlookatplayer"] = {"friends@frl@ig_1", "look_lamar", "Look At Player", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
     ["jreactgreat"] = {"mp_cp_welcome_tutgreet", "greet", "Great", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jfakepunch"] = {"missarmenian2", "fake_punch_walk_by_lamar", "Fake Punch", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
      ["jreactdamn"] = {"missheist_jewel", "damn", "Reaction Damn", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
     ["jimtellingyou"] = {"missheist_jewel", "im_telling_you", "I'm telling you", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jreactno"] = {"missheist_jewel", "despair", "Reaction No", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jdontkillme"] = {"missheist_jewel", "manageress_kneel_loop", "Dont Kill Me", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jbangbang"] = {"anim@mp_player_intcelebrationfemale@bang_bang", "bang_bang", "Bang Bang", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jtryshirtn"] = {"clothingshirt", "try_shirt_negative_a", "Try Shirt Negative", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jtryshirtp"] = {"clothingshirt", "try_shirt_positive_a", "Try Shirt Positive", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
      ["jtryshoes"] = {"clothingshoes", "try_shoes_positive_d", "Try Shoes", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
    ["jtryshoes2"] = {"clothingshoes", "try_shoes_positive_c", "Try Shoes 2", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
    ["joverhere"] = {"friends@fra@ig_1", "over_here_idle_a", "Over Here", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
    ["jwashingface"] = {"missmic2_washing_face", "michael_washing_face", "Washing Face", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
    ["jlastday"] = {"misstrevor1", "ortega_outro_loop_ort", "Last Day", AnimationOptions =
   {
    EmoteLoop = true,
   }},
    ["jtryg"] = {"mp_clothing@female@glasses", "try_glasses_positive_a", "Try Glasses  Female", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
    ["jpickup"] = {"pickup_object", "pickup_low", "Pick Up", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jstretchl"] = {"switch@franklin@bed", "stretch_long", "Stretch Long", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jhos"] = {"amb@world_human_hang_out_street@male_a@idle_a", "idle_a", "Hang Out Street  Male", AnimationOptions =
   {
    EmoteLoop = true,
   }},
   ["jhos2"] = {"amb@world_human_hang_out_street@male_c@base", "base", "Hang Out Street 2  Male", AnimationOptions =
   {
    EmoteLoop = true,
   }},
   ["jguardaim"] = {"guard_reactions", "1hand_aiming_cycle", "Guard Aim", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jgready"] = {"switch@franklin@getting_ready", "002334_02_fras_v2_11_getting_dressed_exit", "Getting Ready", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jlao"] = {"move_clown@p_m_two_idles@", "fidget_look_at_outfit", "Look At Outfits", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 6000,
   }},
   ["jtoilet"] = {"switch@trevor@on_toilet", "trev_on_toilet_loop", "Have A Shit", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jtoilet2"] = {"timetable@trevor@on_the_toilet", "trevonlav_struggleloop", "Have A Shit 2", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jcovermale2"] = {"amb@code_human_cower@male@base", "base", "Cover  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jvalet"] = {"anim@amb@world_human_valet@normal@base@", "base_a_m_y_vinewood_01", "Valet", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jvalet2"] = {"anim@amb@world_human_valet@formal_right@base@", "base_a_m_y_vinewood_01", "Valet 2", AnimationOptions =
   {
    EmoteMoving = true,
    EmoteLoop = true,
   }},
   ["jsunbathem"] = {"amb@world_human_sunbathe@male@back@idle_a", "idle_c", "Sunbathe  Male", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
   }},
   ["jsunbathem2"] = {"amb@world_human_sunbathe@male@front@base", "base", "Sunbathe 2  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jleancar"] = {"anim@scripted@carmeet@tun_meet_ig2_race@", "base", "Lean Car", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["jcheckout"] = {"anim@amb@carmeet@checkout_car@male_a@idles", "idle_b", "Check Out  Female", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jcheckout2"] = {"anim@amb@carmeet@checkout_car@male_c@idles", "idle_a", "Check Out 2  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jcheckout"] = {"anim@amb@carmeet@checkout_car@female_d@base", "base", "Check Out 3  Female", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jreadmessages"] = {"anim@amb@carmeet@take_photos@male_a@base", "base", "Read Messages  Male", AnimationOptions =
   {
       EmoteMoving = false,
       Prop = "prop_amb_phone",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
   }},
   ["jreadmessages2"] = {"anim@amb@carmeet@take_photos@female_b@base", "base", "Read Messages 2  Female", AnimationOptions =
   {
       EmoteMoving = false,
       Prop = "prop_amb_phone",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
   }},
   ["jlistenmusic"] = {"anim@amb@carmeet@listen_music@male_a@trans", "a_trans_d", "Listen Music", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jogger"] = {"move_f@jogger", "idle", "Jogger  Female", AnimationOptions =
   {
       EmoteDuration = 2500,
       EmoteMoving = true,
   }},
   ["jogger2"] = {"move_m@jogger", "idle", "Jogger  Male", AnimationOptions =
   {
       EmoteDuration = 2500,
       EmoteMoving = true,
   }},
   ["jwtf"] = {"mini@triathlon", "wot_the_fuck", "Wot The Fuck", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jucdt"] = {"mini@triathlon", "u_cant_do_that", "U Cant Do That", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jwarmup"] = {"mini@triathlon", "ig_2_gen_warmup_01", "Warmup", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jwarmup2"] = {"mini@triathlon", "ig_2_gen_warmup_02", "Warmup 2", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jwarmup3"] = {"mini@triathlon", "jog_idle_f", "Warmup 3", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jwarmup4"] = {"mini@triathlon", "jog_idle_e", "Warmup 4", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jhmassage"] = {"missheistfbi3b_ig8_2", "cpr_loop_paramedic", "Heart Massage", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jpassout"] = {"missheistfbi3b_ig8_2", "cower_loop_victim", "Pass Out", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jddealer"] = {"amb@world_human_drug_dealer_hard@male@base", "base", "Drug Dealer  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jswatch"] = {"amb@world_human_strip_watch_stand@male_c@idle_a", "idle_b", "Watch Strip  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jcheckw"] = {"amb@world_human_bum_wash@male@high@base", "base", "Check Water", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jwaitt"] = {"oddjobs@taxi@", "idle_a", "Wait Taxi", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
   }},
   ["jnoway"] = {"oddjobs@towingpleadingbase", "base", "No Way", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jtsomething"] = {"oddjobs@bailbond_hobohang_out_street_c", "idle_c", "Tell Something", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jlfh"] = {"oddjobs@assassinate@old_lady", "looking_for_help", "Looking For Help", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jmstretch"] = {"oddjobs@assassinate@multi@", "idle_a", "Muscle Stretch", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jdj"] = {"anim@mp_player_intcelebrationmale@dj", "dj", "DJ", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jdj2"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_cdj_left_a_12", "DJ 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jdj3"] = {"anim@amb@nightclub@djs@switch@dixn_djset_switchover@", "dix_end_bg_female1", "DJ 3", AnimationOptions =
   {
    EmoteLoop = true,
   }},
   ["jdj4"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj_transitions@from_low_intensity", "trans_dance_facedj_li_to_mi_11_v1_male^3", "DJ 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jlmic"] = {"anim@veh@lowrider@std@ds@arm@music@hiphopidle_a", "idle", "Listen Music In Car", AnimationOptions =
   {
    EmoteMoving = true,
    EmoteDuration = 2500,
   }},
   ["jgotc"] = {"random@getawaydriver@thugs", "base_a", "Get Off The Car", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = false,
   }},
   ["jvsad"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "Very Sad", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jdgrave"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Digging Grave", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = 'prop_tool_shovel006',
       PropBone = 28422,
       PropPlacement = {0.0, 0.1, -0.6, 0.0, 0.0, 180.0},
   }},
   ["jbow3"] = {"missheistdockssetup1ig_10@base", "talk_pipe_base_worker1", "Bend Over Wait", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 2500,
   }},
   ["jweeding"] = {"anim@amb@drug_field_workers@weeding@male_a@base", "base", "Weeding  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jlookplan"] = {"missheist_agency2aig_4", "look_plan_c_worker2", "Look Plan", AnimationOptions =
   {
    EmoteMoving = false,
    EmoteDuration = 5000,
   }},
   ["jgangdrink"] = {"amb@world_human_drinking_fat@beer@male@base", "base", "Gang Drink", AnimationOptions =
   {
       Prop = 'prop_cs_beer_bot_40oz_03',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["jgangdrink"] = {"amb@world_human_drinking_fat@beer@male@idle_a", "idle_b", "Gang Drink 2", AnimationOptions =
   {
       Prop = 'prop_cs_beer_bot_40oz_03',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["jmleaning"] = {"amb@world_human_leaning@male@wall@back@mobile@base", "base", "Mobile Leaning  Male", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "prop_anim_cash_pile_01",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
   }},
   ["jthanks"] = {"random@arrests", "thanks_male_05", "Thanks", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jtextingmale"] = {"amb@world_human_stand_mobile_fat@male@text@base", "base", "Texting  Male", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
       Prop = "prop_amb_phone",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
   }},

   ["jffb"] = {"timetable@trevor@skull_loving_bear", "skull_loving_bear", "F*ck From Behind", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jsitchair7"] = {"timetable@reunited@ig_10", "isthisthebest_jimmy", "Sit Chair 7", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jsitchair8"] = {"timetable@michael@on_sofabase", "sit_sofa_base", "Sit Chair 8", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["sitchair11"] = {"timetable@trevor@smoking_meth@base", "base", "Sit Chair 11", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["sitchair10"] = {"timetable@tracy@ig_7@base", "base", "Sit Chair 10", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jstandingt"] = {"amb@world_human_bum_standing@twitchy@base", "base", "Standing Twitchy", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jstandingfit"] = {"amb@world_human_jog_standing@male@fitbase", "base", "Standing Fit", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jstandingm"] = {"anim@amb@casino@hangout@ped_male@stand@03b@base", "base", "Standing  Male", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["jstandingf"] = {"anim@amb@casino@hangout@ped_female@stand@02a@base", "base", "Standing  Female", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["copsearch"] = {"custom@police", "police", "Cop Search", AnimationOptions =
   {
     EmoteMoving = false,
     EmoteDuration = 8000,
   }},
   ["sus"] = {"custom@suspect", "suspect", "Suspect", AnimationOptions =
   {
     EmoteMoving = false,
   }},
   ["pickfromground"] = {"custom@pickfromground", "pickfromground", "Pick From Ground", AnimationOptions =
   {
     EmoteLoop = true,
     EmoteMoving = false,
   }},
}
DP.NewEmotes = {

["anewsuty1"] = { "suty@femalepose1", "suty_femaleclip", "Female Pose 1 ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["anewsuty2"] = { "suty@femalepose2", "suty_femaleclip2", "Female Pose 2 ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["anewsuty3"] = { "suty@femalepose3", "suty_femaleclip3", "Female Pose 3 ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["anewsuty4"] = { "suty@femalepose4", "suty_femaleclip4", "Female Pose 4 ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},


["floorselfie2"] = {"anim@selfie_knees_cute", "knees_cute_clip", "Cute Floor Selfie 2", AnimationOptions =
{
        EmoteLoop = true,
        EmoteMoving = false,
  Prop = 'prop_amb_phone',
  PropBone = 0,
  PropPlacement = {0.22, 0.36, 0.58, 14.0000, 11.0000, -20.0000},
}},

["heartsign"] = { "fingerrheart@animation", "fingerrheart_clip", "Heart Sign", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},

["coupleliftm"] = { "couple_lift_m@machineanimz", "couple_lift_m_clip", "Couple Lift Male", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["coupleliftf"] = { "couple_lift_f@machineanimz", "couple_lift_f_clip", "Couple Lift Female", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},

["couplehug1"] = {"couple_bonnet_f@machineanimz", "couple_bonnet_f_clip", "Couple Hug Female", AnimationOptions =
{
        EmoteLoop = true,
        EmoteMoving = false,
}},
["couplehug2"] = {"couple_bonnet_m@machineanimz", "couple_bonnet_m_clip", "Couple Hug Male", AnimationOptions =
{
        EmoteLoop = true,
        EmoteMoving = false,
}},

["lookback1"] = { "bfflookback1@animation", "bfflookback1_clip", "Look Back 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["lookback2"] = { "bfflookback2@animation", "bfflookback2_clip", "Look Back 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},

["bffcasualpose1"] = { "bffcasualpose1@animation", "bffcasualpose1_clip", "Bff Casual Pose 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["bffcasualpose2"] = { "bffcasualpose2@animation", "bffcasualpose2_clip", "Bff Casual Pose 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},

["bfffun1"] = { "bfffun1@animation", "bfffun1_clip", "Bff Fun 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["bfffun2"] = { "bfffun2@animation", "bfffun2_clip", "Bff Fun 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},

["bffhandhold1"] = { "bffhandhold1@animation", "bffhandhold1_clip", "Bff Hand Hold 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["bffhandhold2"] = { "bffhandhold2@animation", "bffhandhold2_anim", "Bff Hand Hold 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
------------
["piggyback1"] = { "mggypiggypair1@animation", "mggypiggypair1_clip", "Piggy Back 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["piggyback2"] = { "mggypiggypair2@animation", "mggypiggypair2_clip", "Piggy Back 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
------------
["followme1"] = { "dollie_mods@follow_me_001", "follow_me_001", "Follow Me 1", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
["followme2"] = { "dollie_mods@follow_me_002", "follow_me_002", "Follow Me 2", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
------------
["barbiepose1"] = { "barbiepose@1", "barbie1", "Barbie Pose 1", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
["barbiepose2"] = { "barbiepose@w4", "barbie4", "Barbie Pose 2", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
["barbiepose3"] = { "barbiepose@w5", "barbie5", "Barbie Pose 3", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
["barbiepose4"] = { "barbiepose@w6", "barbie6", "Barbie Pose 4", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
["raisingpaw"] = { "boomer@raising_paws", "base", "Raising Paws(Dog)", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},
------------
  ["holdhip1"] = { "holdhip@animation", "holdhip_clip", "Hold Hip 1", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["holdhip2"] = { "holdhipb@animation", "holdhipb_clip", "Hold Hip 2", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["holdass1"] = { "holdass@animation", "holdass_clip", "Hold Ass 1", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["holdass2"] = { "holdassb@animation", "holdassb_clip", "Hold Ass 2", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["coupleseat1"] = { "coupleseat1@animation", "coupleseat1_clip", "Couple Seat 1", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["coupleseat2"] = { "coupleseat1b@animation", "coupleseat1b_clip", "Couple Seat 2", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},

["sitchain"] = {"yovngbry@bry", "yovngbry_clip", "Sit Grabbing Chain", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
}},
["bmxcup"] = {"bmxcupaimingbylit@animation", "bmxcupaimingbylit_clip", "BMX Cup & Gun", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
Prop = 'p_amb_coffeecup_01',
PropBone = 18905,
PropPlacement = {0.1100, 0.0000, 0.0400, -105.0203062, -0.2597819, -4.9658816},
}},
["postedup"] = {"posteduplit@animation", "posteduplit_clip", "Posted Up", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["cselfief2"] = {"coupleselfiefemalev2bylit@animation", "coupleselfiefemalev2bylit_clip", "Couple Selfie Female 2", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["cselfiem2"] = {"coupleselfiemalev2bylit@animation", "coupleselfiemalev2bylit_clip", "Couple Selfie Male 2", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
Prop = 'prop_amb_phone',
PropBone = 0,
PropPlacement = {-0.1067, 0.3511, 0.5008, -0.9781519, -11.9982247, 0.2079016},
}},
["cselfief"] = {"femaleselfiebylit@animation", "femaleselfiebylit_clip", "Couple Selfie Female 1", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
Prop = 'prop_amb_phone',
PropBone = 0,
PropPlacement = {-0.1340, 0.1870, 0.6160, 0, 3, 0},
}},
["cselfiem"] = {"selfiemalebylit@animation", "selfiemalebylit_clip", "Couple Selfie Male 1", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["cselfiem2"] = {"couple_mirror_selfie2_m@machineanimz", "couple_mirror_selfie2_m_clip", "Mirror Selfie Male", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
}},
["cselfief2"] = {"couple_mirror_selfie2_f@machineanimz", "couple_mirror_selfie2_f_clip", "Mirror Selfie Female", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "prop_amb_phone",
   PropBone = 36029,
   PropPlacement = {0.10, 0.05, 0.01, -129.0000, -26.0000, -2.0000},
}},
["couplef1"] = {"timetable@trevor@ig_1", "ig_1_thedontknowwhy_patricia", "Couple Female 1", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplem1"] = {"timetable@trevor@ig_1", "ig_1_thedontknowwhy_trevor", "Couple Male 1", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplef2"] = {"timetable@trevor@ig_1", "ig_1_therearejustsomemoments_patricia", "Couple Female 2", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplem2"] = {"timetable@trevor@ig_1", "ig_1_therearejustsomemoments_trevor", "Couple Male 2", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplef3"] = {"timetable@trevor@ig_1", "ig_1_thedesertissobeautiful_patricia", "Couple Female 3", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplem3"] = {"timetable@trevor@ig_1", "ig_1_thedesertissobeautiful_trevor", "Couple Male 3", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["couplem4"] = {"timetable@trevor@ig_1", "ig_1_base_trevor", "Couple Male 4", AnimationOptions =
{
 EmoteMoving = false,
EmoteLoop = true,
}},
["couplef4"] = {"timetable@trevor@ig_1", "ig_1_base_patricia", "Couple Female 4", AnimationOptions =
{
EmoteMoving = false,
EmoteLoop = true,
}},
["pockets"] = {"bzzz@animations@hands", "bz_hands", "Hands in pockets", AnimationOptions =
{
 EmoteMoving = false, -- or true if you want to walk
 EmoteLoop = true,
}},
---------------
["rabbitanim"] = {"rabbitanim@animation", "rabbitanim_clip", "Rabbit Anim", AnimationOptions =
{
 EmoteMoving = false, -- or true if you want to walk
 EmoteLoop = true,
}},
---------------
["standingp"] = {"standingposeanim@animation", "standingposeanim_clip", "Standing Pose Female", AnimationOptions =
{
 EmoteMoving = false, -- or true if you want to walk
 EmoteLoop = true,
}},
------
["cutie1"] = {"syx@cute01", "cute01", "Cutie 1", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["cutie2"] = {"syx@cute02", "cute02", "Cutie 2", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["cutie3"] = {"syx@cute03", "cute03", "Cutie 3", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["cutie4"] = {"syx@cute04", "cute04", "Cutie 4", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
 ["cutie5"] = {"syx@cute05", "cute05", "Cutie 5", AnimationOptions =
 {
     EmoteLoop = true,
     EmoteMoving = true,
 }},
---------------
["hoe1"] = {"hoe@anim", "hoe_clip", "Hoe New Animation 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["hoe2"] = {"hoe2@anim", "hoe2_clip", "Hoe New Animation 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
---------------
["newpose"] = {"bag@animation", "bag_clip", "New Bag Pose", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,

}},
["newpose2"] = {"seat1@animation", "seat1_clip", "New Bag Pose 2", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,

}},
["newpose4"] = {"wristcheck@animation", "wristcheck_clip", "New Bag Pose 3", AnimationOptions =
{
  EmoteLoop = true,
  EmoteMoving = false,

}},

---------------
["tiedup"] = {"random@burial", "b_burial", "Tied up", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,

}},
---------------
["friend1"] = {"littlespoon@friendship001", "friendship001", "Friend Pose Female 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend2"] = {"littlespoon@friendship002", "friendship002", "Friend Pose Male 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend3"] = {"littlespoon@friendship003", "friendship003", "Friend Pose Female 3", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend4"] = {"littlespoon@friendship004", "friendship004", "Friend Pose Male 4", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend5"] = {"littlespoon@friendship005", "friendship005", "Friend Pose Female 5", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend6"] = {"littlespoon@friendship006", "friendship006", "Friend Pose Male 6", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend7"] = {"littlespoon@friendship007", "friendship007", "Friend Pose Female 7", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend8"] = {"littlespoon@friendship008", "friendship008", "Friend Pose Male 8", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend9"] = {"littlespoon@friendship009", "friendship009", "Friend Pose Female 9", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend_10"] = {"littlespoon@friendship010", "friendship010", "Friend Pose Male 10", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend_11"] = {"littlespoon@friendship011", "friendship011", "Friend Pose Male Female", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["friend_12"] = {"littlespoon@friendship012", "friendship012", "Friend Pose Male 12", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
---------------
  ["sexpose1"] = {"littlespoon@desire001", "desire001", "Sex Pose 1", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose2"] = {"littlespoon@desire002", "desire002", "Sex Pose 2 ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose3"] = {"littlespoon@desire003", "desire003", "Sex Pose 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose4"] = {"littlespoon@desire004", "desire004", "Sex Pose 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose5"] = {"littlespoon@desire005", "desire005", "Sex Pose 5", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose6"] = {"littlespoon@desire006", "desire006", "Sex Pose 6", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose7"] = {"littlespoon@desire007", "desire007", "Sex Pose 7", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose8"] = {"littlespoon@desire008", "desire008", "Sex Pose 8", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose9"] = {"littlespoon@desire009", "desire009", "Sex Pose 9", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose_10"] = {"littlespoon@desire010", "desire010", "Sex Pose 10", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose_11"] = {"littlespoon@desire011", "desire011", "Sex Pose 11", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexpose_12"] = {"littlespoon@desire012", "desire012", "Sex Pose 12", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ---------------

  ["sexy1"] = {"littlespoon@intimacy001", "intimacy001", "~g~Sex Animation 1 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy2"] = {"littlespoon@intimacy002", "intimacy002", "~g~Sex Animation 2 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy3"] = {"littlespoon@intimacy003", "intimacy003", "~g~Sex Animation 3 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy4"] = {"littlespoon@intimacy004", "intimacy004", "~g~Sex Animation 4 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy5"] = {"littlespoon@intimacy005", "intimacy005", "~g~Sex Animation 5 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy6"] = {"littlespoon@intimacy006", "intimacy006", "~g~Sex Animation 6 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["sexy7"] = {"littlespoon@intimacy007", "intimacy007", "~g~Sex Animation 7 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
---------------
["sexyp1"] = {"littlespoon@sexy001", "sexy001", "Sexy Pose 1", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp2"] = {"littlespoon@sexy002", "sexy002", "Sexy Pose 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp3"] = {"littlespoon@sexy003", "sexy003", "Sexy Pose 3", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp4"] = {"littlespoon@sexy004", "sexy004", "Sexy Pose 4", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp5"] = {"littlespoon@sexy005", "sexy005", "Sexy Pose 5", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp6"] = {"littlespoon@sexy006", "sexy006", "Sexy Pose 6", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp7"] = {"littlespoon@sexy007", "sexy007", "Sexy Pose 7", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp8"] = {"littlespoon@sexy008", "sexy008", "Sexy Pose 8", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp9"] = {"littlespoon@sexy009", "sexy009", "Sexy Pose 9", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp_10"] = {"littlespoon@sexy010", "sexy010", "Sexy Pose 10", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp_11"] = {"littlespoon@sexy011", "sexy011", "Sexy Pose 11", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["sexyp_12"] = {"littlespoon@sexy012", "sexy012", "Sexy Pose 12", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
  ["npose1"] = {"littlespoon@friendship001", "friendship001", "Pose 1", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose2"] = {"littlespoon@friendship002", "friendship002", "Pose 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose3"] = {"littlespoon@friendship003", "friendship003", "Pose 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose4"] = {"littlespoon@friendship004", "friendship004", "Pose 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose5"] = {"littlespoon@friendship005", "friendship005", "Pose 5", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose6"] = {"littlespoon@friendship006", "friendship006", "Pose 6", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose7"] = {"littlespoon@friendship007", "friendship007", "Pose 7", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose8"] = {"littlespoon@friendship008", "friendship008", "Pose 8", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose9"] = {"littlespoon@friendship009", "friendship009", "Pose 9", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose_10"] = {"littlespoon@friendship010", "friendship010", "Pose 10", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose_11"] = {"littlespoon@friendship011", "friendship011", "Pose 11", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose_12"] = {"littlespoon@friendship012", "friendship012", "Pose 12", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose_13"] = {"littlespoon@lcdncover_f", "lcdncover_f", "Pose 13", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["npose_14"] = {"littlespoon@lcdncover_m", "lcdncover_m", "Pose 14", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nselfie1"] = {"littlespoon@selfie001", "selfie001", "Selfie Pose", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_amb_phone',
    PropBone = 64081,
    PropPlacement = {0.0200, 0.0500, 0.0400, -34.544931, 37.6155915, 64.2097433},
  }},
  ["nselfie2"] = {"littlespoon@selfie002", "selfie002", "Selfie Pose 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_amb_phone',
    PropBone = 57005,
    PropPlacement = {0.1620, 0.0200, -0.0290, -146.4512684, -141.1529737, 43.1619586},
  }},
  ["nselfie3"] = {"littlespoon@selfie003", "selfie003", "Selfie Pose 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_amb_phone',
    PropBone = 6286,
    PropPlacement = {0.0900, 0.0100, -0.0400, -90, 180, 65.9999961},
  }},
  ["nselfie4"] = {"littlespoon@selfie004", "selfie004", "Selfie Pose 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nselfie5"] = {"littlespoon@selfie005", "selfie005", "Selfie Pose 5", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga"] = {"littlespoon@yoga001", "yoga001", "Yoga Pose", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga2"] = {"littlespoon@yoga002", "yoga002", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga3"] = {"littlespoon@yoga003", "yoga003", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga4"] = {"littlespoon@yoga004", "yoga004", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga5"] = {"littlespoon@yoga005", "yoga005", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga6"] = {"littlespoon@yoga006", "yoga006", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga7"] = {"littlespoon@yoga007", "yoga007", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga8"] = {"littlespoon@yoga008", "yoga008", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["nyoga9"] = {"littlespoon@yoga009", "yoga009", "Yoga Pose ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
---------------
  ["sensual1"] = {"littlespoon@sensual001", "sensual001", "Sensual Pose 1 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual2"] = {"littlespoon@sensual002", "sensual002", "Sensual Pose 2 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual3"] = {"littlespoon@sensual003", "sensual003", "Sensual Pose 3 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual4"] = {"littlespoon@sensual004", "sensual004", "Sensual Pose 4 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual5"] = {"littlespoon@sensual005", "sensual005", "Sensual Pose 5 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual6"] = {"littlespoon@sensual006", "sensual006", "Sensual Pose 6 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual7"] = {"littlespoon@sensual007", "sensual007", "Sensual Pose 7 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual8"] = {"littlespoon@sensual008", "sensual008", "Sensual Pose 8 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual9"] = {"littlespoon@sensual009", "sensual009", "Sensual Pose 9 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["sensual_10"] = {"littlespoon@sensual010", "sensual010", "Sensual Pose 10 ~p~Explicit", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
---------------
  ["randompose1"] = {"lunyx@rgmp01", "rgmp01", "Random Pose 1", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose2"] = {"lunyx@rgmp02", "rgmp02", "Random Pose 2", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose3"] = {"lunyx@rgmp03", "rgmp03", "Random Pose 3", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose4"] = {"lunyx@rgmp04", "rgmp04", "Random Pose 4", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose5"] = {"lunyx@rgmp05", "rgmp05", "Random Pose 5", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose6"] = {"lunyx@rgmp06", "rgmp06", "Random Pose 6", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose7"] = {"lunyx@rgmp07", "rgmp07", "Random Pose 7", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["randompose8"] = {"lunyx@random@v3@pose001", "random@v3@pose001", "Random Pose 8", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose9"] = {"lunyx@random@v3@pose002", "random@v3@pose002", "Random Pose 9", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_10"] = {"lunyx@random@v3@pose003", "random@v3@pose003", "Random Pose 10", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},

["randompose_11"] = {"lunyx@random@v3@pose004", "random@v3@pose004", "Random Pose 11", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},

["randompose_12"] = {"lunyx@random@v3@pose005", "random@v3@pose005", "Random Pose 12", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},

["randompose_13"] = {"lunyx@random@v3@pose006", "random@v3@pose006", "Random Pose 13", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_14"] = {"lunyx@random@v3@pose007", "random@v3@pose007", "Random Pose 14", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_15"] = {"lunyx@random@v3@pose008", "random@v3@pose008", "Random Pose 15", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_16"] = {"lunyx@random@v3@pose009", "random@v3@pose009", "Random Pose 16", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_17"] = {"lunyx@random@v3@pose010", "random@v3@pose010", "Random Pose 17", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_18"] = {"lunyx@random@v3@pose011", "random@v3@pose011", "Random Pose 18", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_19"] = {"lunyx@random@v3@pose012", "random@v3@pose012", "Random Pose 19", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_20"] = {"lunyx@random@v3@pose013", "random@v3@pose013", "Random Pose 20", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_21"] = {"lunyx@random@v3@pose014", "random@v3@pose014", "Random Pose 21", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_22"] = { "randompose1@anim", "randompose1_clip", "Random Pose 22", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},

["randompose_23"] = { "mggyhang3@animation", "mggyhang3_clip", "Random Pose 23", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
}},

["randompose_24"] = {"lunyx@random@v3@pose017", "random@v3@pose017", "Random Pose 24", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_25"] = {"lunyx@random@v3@pose018", "random@v3@pose018", "Random Pose 25", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["randompose_26"] = {"lunyx@random@v3@pose019", "random@v3@pose019", "Random Pose 26", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},
---------------
  ["femalepose1"] = {"drillz@headtilt_anim", "headtilt_clip", "Female Pose 1", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose2"] = {"drillz@laydown_anim", "laydown_clip", "Female Pose 2", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose3"] = {"drillz@selfiewall_anim", "selfiewall_clip", "Female Pose 3", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose4"] = {"drillz@leanfemalesit_anim", "leanfemalesit_clip", "Female Pose 4", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose5"] = {"drillz@ruby_anim", "ruby_clip", "Female Pose 5", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose6"] = {"posefemale@sets", "posefemale_clip", "Female Pose 6", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose7"] = {"femalefingers@sets", "femalefingers_clip", "Female Pose 7", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalepose8"] = { "pose5@anim", "pose5_clip", "Female Pose 8", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalepose9"] = { "export@poseboo17", "poseboo17", "Female Pose 9", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalepose_10"] = { "export@poseboo11", "poseboo11", "Female Pose 10", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalepose_11"] = { "export@poseboo10", "poseboo10", "Female Pose 11", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalepose_12"] = { "slavepose@anim", "slavepose_clip", "Female Pose 12", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalepose_13"] = { "arron@simspose1", "simspose1", "Female Pose 13", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_14"] = { "arron@simspose2", "simspose2", "Female Pose 14", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_15"] = { "arron@simspose3", "simspose3", "Female Pose 15", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_16"] = { "arron@simspose4", "simspose4", "Female Pose 16", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_17"] = { "arron@simspose5", "simspose5", "Female Pose 17", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_18"] = { "femalepose1@animation", "femalepose1_clip", "Female Pose 18", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_19"] = { "cardo@beach_model_1", "beach_model_1", "Female Pose 19 ~y~(New", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_20"] = { "cardo@beach_model_2", "beach_model_2", "Female Pose 20 ~y~(New", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_21"] = { "cardo@beach_model_3", "beach_model_3", "Female Pose 21 ~y~(New", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_22"] = { "cardo@beach_model_4", "beach_model_4", "Female Pose 22 ~y~(New", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
  ["femalepose_23"] = { "cardo@beach_model_5", "beach_model_5", "Female Pose 23 ~y~(New", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},
   ["femalesit1"] = {"femalesit@sets", "femalesit_clip", "Female Sit 1", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalesit2"] = {"timetable@reunited@ig_10", "base_tracy", "Female Sit 2", AnimationOptions =
  {
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["femalesit3"] = { "mggyhang1@animation", "mggyhang1_clip", "Female Sit 3", AnimationOptions =
  {
      EmoteMoving = false,
      EmoteLoop = true,
  }},
  ["femalesit4"] = { "mggyhang2@animation", "mggyhang2_clip", "Female Sit 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
  }},

  ["femalesit5"] = {"lunyx@random@v3@pose015", "random@v3@pose015", "Female Sit 5", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = false,
  }},

  ["femalesit6"] = {"lunyx@random@v3@pose016", "random@v3@pose016", "Female Sit 6", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = false,
  }},

}
DP.NewPropEmotes = { -- By Suty

["asutynew1"] = {"suty@pose", "suty_clip", "Standing Holding Lean & Cigar ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "prop_cigar_02",
   PropBone = 4154,
   PropPlacement = {-0.0400, -0.0300, 0.0900, 83.8384317, 97.3282027, 10.1808259},
   SecondProp = "ng_proc_sodabot_01a",
   SecondPropBone = 6286,
   SecondPropPlacement = {0.1000, -0.0900, -0.2200, -59.7712571, -66.6567642, -55.4559913},
}},
["asutynew2"] = {"suty@pose2", "suty_clip2", "Holding Draco & Glock ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_pi_combatpistol",
   PropBone = 36029,
   PropPlacement = {0.12, 0.04, 0.04, -132.0000, -21.0000, 7.0000},
   SecondProp = "w_ar_assaultrifle_smg",
   SecondPropBone = 6286,
   SecondPropPlacement = {0.11, 0.03, 0.01, -79.0000, -11.0000, -1.0000},
   ThirdProp = "w_ar_assaultrifle_smg_mag1",
   ThirdPropBone = 6286,
   ThirdPropPlacement = {0.23, 0.08, 0.05, -78.0000, -10.0000, -6.0000},
}},
["asutynew3"] = {"suty@pose3", "suty_pose3clip", "Holding 2 Glocks ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_pi_combatpistol",
   PropBone = 6286,
   PropPlacement = {0.12, 0.03, -0.03, -67.0000, 9.0000, -2.0000},
   SecondProp = "w_pi_combatpistol_mag2",
   SecondPropBone = 6286,
   SecondPropPlacement = {0.06, 0.05, -0.01, -65.0000, 6.0000, 4.0000},
   ThirdProp = "w_pi_combatpistol",
   ThirdPropBone = 36029,
   ThirdPropPlacement = {0.12, 0.02, 0.02, -110.0000, 1.0000, -6.0000},
   FourthProp = "w_pi_combatpistol_mag2",
   FourthPropBone = 36029,
   FourthPropPlacement = {0.07, 0.05, 0.01, -112.0000, 4.0000, -2.0000},
}},
["asutynew5"] = { "suty@pose4", "suty_pose4clip", "Holding Money ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = 'bkr_prop_cutter_moneypage',
  PropBone = 0,
  PropPlacement = {0.02, 0.28, 0.37, -13.0000, 14.0000, -8.0000},
}},
["asutynew7"] = {"suty@pose5", "suty_poseclip5", "Holding Gun 1 ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_pi_combatpistol",
   PropBone = 36029,
   PropPlacement = {0.10, 0.02, -0.03, -77.0000, 56.0000, 7.0000},
   SecondProp = "w_pi_combatpistol_mag2",
   SecondPropBone = 36029,
   SecondPropPlacement = {0.08, 0.05, 0.02, -75.0000, 55.0000, 2.0000},
}},
["asutynew8"] = {"suty@pose6", "suty_clip6", "Holding Gun 2 ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_pi_combatpistol",
   PropBone = 36029,
   PropPlacement = {0.11, 0.03, 0.02, -97.0000, 0.0000, 0.0000},
}},
["asutynew9"] = {"suty@pose7", "suty_clip7", "Holding Rifle ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_ar_carbineriflemk2",
   PropBone = 0,
   PropPlacement = {-0.03, 0.22, 0.17, 0.0000, -27.0000, 1.0000},
   SecondProp = "w_ar_carbineriflemk2_mag1",
   SecondPropBone = 0,
   SecondPropPlacement = {0.00, 0.22, 0.19, 0.0000, -25.0000, 0.0000},
}},
["asutynew_10"] = {"suty@sitpose1", "suty_sitclip", "Seated With 2 Guns ~p~New", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
   Prop = "w_pi_combatpistol",
   PropBone = 57005,
   PropPlacement = {0.18, 0.03, -0.01, -59.0000, 9.0000, -13.0000},
   SecondProp = "w_pi_combatpistol_mag2",
   SecondPropBone = 64081,
   SecondPropPlacement = {0.00, -0.01, 0.10, -11.0000, -1.0000, -159.0000},
   ThirdProp = "w_sb_compactsmg",
   ThirdPropBone = 46078,
   ThirdPropPlacement = {-0.16, 0.11, 0.02, -170.0000, 7.0000, -7.0000},
   FourthProp = "w_sb_compactsmg_mag1",
   FourthPropBone = 46078,
   FourthPropPlacement = {-0.12, 0.11, -0.01, -172.0000, 7.0000, -7.0000},
}},
["asutynew_11"] = { "suty@sitpose2", "suty_sitposeclip2", "Seated In Hoop ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = 'prop_bskball_01',
  PropBone = 6286,
  PropPlacement = {0.04, -0.01, -0.11, -13.0000, -100.0000, -176.0000},
}},
["asutynew_12"] = { "suty@sitpose3", "suty_sitposeclip3", "Seated Selfie ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = 'prop_amb_phone',
  PropBone = 36029,
  PropPlacement = {0.12, 0.03, 0.01, -114.0000, -25.0000, -37.0000},
}},
["asutynew_14"] = { "suty@sitpose4", "suty_sitposeclip4", "Seated Holding Money ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = 'bkr_prop_cutter_moneypage',
  PropBone = 0,
  PropPlacement = {0.10, 0.47, 0.14, 67.0000, 0.0000, -198.0000},
}},
["asutynew_15"] = { "suty@sitpose5", "suty_sitclip5", "~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["asutynew_16"] = { "suty@sitpose6", "suty_sitclip6", "Fingers Pointing Head ~p~New", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
---------
["sitphone2"] = { "mx@pose4", "mx_clippose4", "Sit Phone 2", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = "prop_amb_phone",
  PropBone = 36029,
  PropPlacement = {0.08, 0.02, 0.02, -98.0000, -25.0000, -1.0000},
}},
["kneelball"] = { "mx@pose3", "mx_clippose3", "Kneel With Ball", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = "prop_bskball_01",
  PropBone = 6286,
  PropPlacement = {0.07, 0.02,-0.21, 177.0000, 62.0000, 9.0000},
}},
---------
["fselfie1"] = {"anim@fuck_you_selfie", "fuck_you_selfie_clip", "Fuck You Selfie ", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = false,
}},
["fselfie2"] = { "selfie2@anim", "selfie2_clip", "Female Selfie 2", AnimationOptions =
{
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = "prop_amb_phone",
    PropBone = 64097,
    PropPlacement = {0.0100, 0.0300, 0.0100, 54.2218826, -38.3389247, 19.5401294},
}},
["fselfie3"] = { "mggyselfie1@animation", "mggyselfie1_clip", "Female Selfie 3", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["fselfie4"] = { "mggyselfie2@animation", "mggyselfie2_clip", "Female Selfie 4", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
}},
["fselfie5"] = { "mggyselfie4@animation", "mggyselfie4_clip", "Female Selfie 5", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = "prop_amb_phone",
  PropBone = 36029,
  PropPlacement = {0.0900, 0.0100, 0.0300, -96.0709109, 5.2148816, -64.121046},
}},
---------

["poselual"] = {"letra@animation", "letra_clip", "3 Letra Pose", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["poseNew"] = {"kdesinganim@animation", "kdesinganim_clip", "Pose New Gang", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["poseNew2"] = {"kdesinganim2@animation", "kdesinganim2_clip", "Pose New Gang 2", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["darkm23"] = {"lean3@cubandark", "lean3_clip", "dark 23", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["darkm22"] = {"lean@cubandark", "lean_clip", "dark 22", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},

["darkm21"] = {"lean2@cubandark", "lean2_clip", "dark 21", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},
["darkl18"] = {"cashholdb@cubandark", "cashholdb_clip", "dark 18", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},
  ["leancookiebag"] = {"amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", "Lean Cookie Bag", AnimationOptions =
  {
    Prop = 'bkr_prop_meth_bigbag_01a',
    PropBone =  0,
    PropPlacement = {0.470, 0.000, -0.935, 0.612, 0.000, 176.950},
    EmoteLoop = true,
    EmoteMoving = false,

  }},
  ["sitcash"] = {"timetable@ron@ig_3_couch", "base", "Sitting In Cash", AnimationOptions =
{
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = 'ex_prop_exec_cashpile',
  PropBone = 0,
  PropPlacement = {0.0000, 0.0000, -0.4600, -5.0000, 0.0000, 0.0000},
  SecondProp = "ex_prop_exec_cashpile",
  SecondPropBone = 0,
  SecondPropPlacement = {0.0000, 0.0300, -0.2700, -6.0000, 0.0000, 0.0000},
  ThirdProp = 'p_amb_coffeecup_01',
  ThirdPropBone = 0,
  ThirdPropPlacement = {-0.1100, 0.4900, -0.5700, -7.000, -1.0000, 0.0000},
  FourthProp = 'bkr_prop_meth_bigbag_01a',
  FourthPropBone = 0,
  FourthPropPlacement = {0.04, 0.3500, -0.6400, -7.000, -1.0000, 0.0000},
  FifthProp = "w_pi_appistol",
  FifthPropBone = 57005,
  FifthPropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
}},

["jaimingsuitcase"] = {"guard_reactions", "1hand_aiming_cycle", "Aiming & Suitcase Supreme", AnimationOptions =
{
  Prop = "prop_suitcase_02",
  PropBone = 35502,
  PropPlacement = {0.830, 0.000, 0.370, 0.000, 0.000, 49.700,},
  EmoteLoop = true,
  EmoteMoving = false,
}},

["standingwithmoney"] = {"custom@gsign_26", "gsign_26", "Standing with Money", AnimationOptions =
{
  Prop = "xs_prop_arena_cash_pile_m",
  PropBone = 28422,
  PropPlacement = {0.070, 0.000, -0.015, 36.774, 0.000, 104.057},
  EmoteLoop = true,
  EmoteMoving = false,
}},

["supremepack"] = {"syx@cute05", "cute05", "Supreme Pack Pose", AnimationOptions =
{
  Prop = "prop_suitcase_02",
  PropBone = 24806,
  PropPlacement = {-0.425,  0.000,  0.405, 0.000, 0.000, 0.000},
  SecondProp = "prop_tool_nailgun",
  SecondPropBone = 36029,
  SecondPropPlacement = {0.11, 0.01, 0.001, -120.0, 0.0, 0.0},
  ThirdProp = "prop_boxing_glove_01",
  ThirdPropBone = 24806,
  ThirdPropPlacement = {-0.390, 0.095, 0.855, 0.000, 0.000, 0.000,},
  FourthProp = 'v_res_skateboard',
  FourthPropBone = 24806,
  FourthPropPlacement = {-0.780, 0.060, 0.585, -2.300, -70.800, 19.800},
  EmoteLoop = true,
  EmoteMoving = false,
}},
  ["zl1"] = {"missbigscore2aig_3", "wait_for_van_c", "~y~Zl1", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_anim_cash_pile_02',
    PropBone = 18905,
    PropPlacement = {0.0700, 0.0700, 0.0, 50.0, 100.0, 0.0},
    SecondProp = 'ng_proc_sodabot_01a',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.40, -0.14, 0.0256, 690.0, 999.0, 10.0},
    ThirdProp = 'p_amb_coffeecup_01',
    ThirdPropBone = 52301,
    ThirdPropPlacement = {0.2, 0.04, -0.2, -110.0, 100.0, 0.0},
  }},

  ["zl2"] = {"amb@world_human_stupor@male@idle_a", "idle_a", "~y~Zl2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'bkr_prop_bkr_cashpile_07',
    PropBone = 18905,
    PropPlacement = {-0.5, 0.00, 0.1, -162.0, 22.0, -60.0},
    SecondProp = "w_pi_appistol",
    SecondPropBone = 57005,
    SecondPropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
    ThirdProp = 'p_amb_coffeecup_01',
    ThirdPropBone = 18905,
    ThirdPropPlacement = {0.187, 0.41, -0.0050, -162.0, 22.0, -60.0},
  }},
  ["zl3"] = {"timetable@ron@ig_3_couch", "base", "~y~Zl3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ex_prop_exec_cashpile',
    PropBone = 0,
    PropPlacement = {0.0000, 0.0000, -0.4600, -5.0000, 0.0000, 0.0000},
    SecondProp = "ex_prop_exec_cashpile",
    SecondPropBone = 0,
    SecondPropPlacement = {0.0000, 0.0300, -0.2700, -6.0000, 0.0000, 0.0000},
    ThirdProp = 'p_amb_coffeecup_01',
    ThirdPropBone = 0,
    ThirdPropPlacement = {-0.1100, 0.4900, -0.5700, -7.000, -1.0000, 0.0000},
    FourthProp = 'ng_proc_sodabot_01a',
    FourthPropBone = 0,
    FourthPropPlacement = {0.04, 0.3500, -0.6400, -7.000, -1.0000, 0.0000},
    FifthProp = "w_pi_appistol",
    FifthPropBone = 57005,
    FifthPropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
  }},
  ["zl4"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_jimmy", "~y~Zl4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ex_cash_pile_8',
    PropBone = 0,
    PropPlacement = {0.0000, -0.4300, 0.2900, 235.0000, 180.0000, 0.0000},
    SecondProp = "ex_cash_pile_07",
    SecondPropBone = 0,
    SecondPropPlacement = {0.0000, 0.0000, -0.2400, -55.0000, 0.0000, 0.0000},
    ThirdProp = "w_pi_appistol",
    ThirdPropBone = 57005,
    ThirdPropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
    FourthProp = "ng_proc_sodabot_01a",
    FourthPropBone = 18905,
    FourthPropPlacement = {0.0800, -0.2100, 0.0300, -85.000, 30.000, -9.0000},
    FifthProp = "w_ar_assaultrifle",
    FifthPropBone = 0,
    FifthPropPlacement = {-0.3500, 0.1900, -0.4000, 30.0000, -90.0000, -30.000},
    SixthProp = "p_amb_coffeecup_01",
    SixthPropBone = 51826,
    SixthPropPlacement = {0.2600, -0.0800, -0.2100, -119.0000, -10.0000, 0.0000},
    SeventhProp = "prop_bottle_cognac",
    SeventhPropBone = 0,
    SeventhPropPlacement = {0.4100, -0.1700, 0.0200, -55.0000, 1.0000, 0.0000},
  }},
  ["zl5"] = {"mikey@gangsigns@new", "mgangsign_5", "~y~Zl10", AnimationOptions =
  {
    Prop = 'prop_cash_pile_01',
    PropBone =  18905, --lefthand
    PropPlacement = {0.1299, 0.0050, 0.0279, -74.5674, 12/4571, 11.3780},
    SecondProp = "w_pi_appistol",
    SecondPropBone = 57005,
    SecondPropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["zl6"] = {"amb@world_human_tourist_map@male@base", "base", "~y~Zl6", AnimationOptions =
  {
    Prop = 'prop_tourist_map_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    SecondProp = 'ng_proc_sodabot_01a',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.10, -0.19, 0.19, -130.0, 0.0, -10.0},
    EmoteMoving = false,
    EmoteLoop = true
  }},
  ["zl7"] = {"combat@aim_variations@1h@gang", "aim_variation_a", "~y~Zl7", AnimationOptions =
  {
    Prop = 'ng_proc_sodabot_01a',
    PropBone = 18905,
    PropPlacement = {0.08, -0.08, 0.29, -160.0, 0.0, -10.0},
    SecondProp = 'w_pi_appistol',
    SecondPropBone = 57005, --righthand
    SecondPropPlacement = {0.15, 0.021, -0.004, -70.0, -5.0, -21.0},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["zl8"] = {"amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", "~y~Zl8", AnimationOptions =
  {
    Prop = "w_pi_appistol",
    PropBone = 57005,
    PropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
    SecondProp = 'p_amb_coffeecup_01',
    SecondPropBone =    63931,
    SecondPropPlacement = {0.5421, 0.1414, 0.2841, 8.3638, -70.2173, -20.4633},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["zl9"] = {"mikey@gangsigns@new", "mgangsign_11", "~y~Zl9", AnimationOptions =
  {
    Prop = "w_pi_appistol",
    PropBone = 57005,
    PropPlacement = {0.1750, 0.0381, -0.0083, -78.0000, 2.0000, -2.0200},
    SecondProp = "prop_whiskey_bottle",
    SecondPropBone = 35502,
    SecondPropPlacement = {0.2000, -0.1100, -0.0100, -1.2000, -0.5100, 38.4900},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
---------
["bmaletalv"] = {"move_weapon@jerrycan@generic", "idle", "Bag LV", AnimationOptions =
{
  Prop = "w_am_case",
  PropBone = 57005,
  PropPlacement = {0.05, 0.0, -0.01, 0.0, 280.0, 85.0},
  EmoteLoop = true,
  EmoteMoving = true,
}},
["bmaletagucci"] = {"move_weapon@jerrycan@generic", "idle", "Bag Gucci", AnimationOptions =
{
  Prop = "prop_ld_suitcase_02",
  PropBone = 57005,
  PropPlacement = {0.05, 0.0, -0.01, 0.0, 280.0, 85.0},
  EmoteLoop = true,
  EmoteMoving = true,
}},
["bmaletalv2"] = {"move_weapon@jerrycan@generic", "idle", "Bag Supreme", AnimationOptions =
{
  Prop = "prop_ld_case_01",
  PropBone = 57005,
  PropPlacement = {0.05, 0.0, -0.01, 0.0, 280.0, 85.0},
  EmoteLoop = true,
  EmoteMoving = true,
}},
["bmaletabape"] = {"move_weapon@jerrycan@generic", "idle", "Bag Bape", AnimationOptions =
{
  Prop = "w_am_brfcase",
  PropBone = 57005,
  PropPlacement = {0.05, 0.0, -0.01, 0.0, 280.0, 85.0},
  EmoteLoop = true,
  EmoteMoving = true,
}},
---------
  ["sitphone"] = {"anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@", "smokers_cough_lazyworker", "Sit Phone", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_amb_phone',
    PropBone = 18905,
    PropPlacement = {0.1510,0.0380, 0.0530, -139.4206316, -54.950468, -0.0952977},
  }},
  ["maletin"] = {"anim@heists@box_carry@", "idle", "Maletin", AnimationOptions =
  {
    Prop = "prop_cash_case_01",
    PropBone = 60309,
    PropPlacement = {0.1470, -0.0400, 0.2330, -118.7058686, 105.9926812, 7.1854654},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["holdcash1"] = {"cashholda@cubandark", "cashholda_clip", "Holding Cash 1", AnimationOptions =
  {
      Prop = 'xs_prop_arena_cash_pile_l',
      PropBone = 18905,
      PropPlacement = {0.14, 0.05, 0.02, 90.0, 70.0, 30.0},
      SecondProp = 'xs_prop_arena_cash_pile_l',
      SecondPropBone = 18905,
      SecondPropPlacement = {0.14, 0.05, 0.02, 90.0, 70.0, 50.0},
      EmoteLoop = true,
      EmoteMoving = false,
  }},

  ["holdcash2"] = {"cashhold@cubandark", "cashhold_clip", "Holding Cash 2", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = false,
    Prop = 'prop_anim_cash_pile_02',
    PropBone = 57005,
    PropPlacement = {0.1170, 0.0130, -0.0370, -39.2518698, -97.6537339, 14.2410057},
    SecondProp = "prop_anim_cash_pile_02",
    SecondPropBone = 57005,
    SecondPropPlacement = {0.0780, 0.0310, -0.0480, -39.2518698, -97.6537339, 14.2410057},
    ThirdProp = "prop_anim_cash_pile_02",
    ThirdPropBone = 57005,
    ThirdPropPlacement = {0.0570, 0.0630, -0.0630, -37.9301127, -104.0946249, 5.2251117},
    FourthProp = "prop_anim_cash_pile_02",
    FourthPropBone = 57005,
    FourthPropPlacement = {0.0250, 0.0850, -0.0690, -35.236408, -102.0868933, 7.9283443},
    FifthProp = "prop_anim_cash_pile_02",
    FifthPropBone = 57005,
    FifthPropPlacement = {-0.0150, 0.0950, -0.0820, -35.236408, -102.0868933, 7.9283443},
    SixthProp = "prop_anim_cash_pile_02",
    SixthPropBone = 57005,
    SixthPropPlacement = {-0.0430, 0.1250, -0.0930, -36.1860851, -104.928339, 3.9954916},
  }},
  ["holdcash3"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Cash 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_anim_cash_pile_02',
    PropBone = 18905,
    PropPlacement = {0.0700, 0.0700, 0.0, 50.0, 100.0, 0.0},
    SecondProp = 'prop_anim_cash_pile_02',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.04, 0.097, 0.0, 50.0, 100.0, 0.0},
  }},
  ["holdcash4"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Cash 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ex_prop_exec_cashpile',
    PropBone = 18905,
    PropPlacement = {-0.1, 0.23, 0.0, 0.0, 180.0, 45.0},
  }},
  ["holdcash5"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Cash 5", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ex_prop_exec_cashpile',
    PropBone = 18905,
    PropPlacement = {-0.1, 0.23, 0.0, 0.0, 180.0, 45.0},
    SecondProp = 'ba_prop_battle_champ_closed',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.29, -0.089, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdcash6"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Cash 6", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_anim_cash_pile_02',
    PropBone = 18905,
    PropPlacement = {0.0700, 0.0700, 0.0, 50.0, 100.0, 0.0},
    SecondProp = 'ba_prop_club_water_bottle',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.32, -0.13, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdcash7"] = {"westmoney@cubandark", "westmoney_clip", "Holding Cash 7", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = false,
      Prop = "prop_anim_cash_pile_02",
      PropBone = 18905,
      PropPlacement = {0.1099, 0.0020, 0.0330, -12.9012696, -40.7532567, -15.4144695},
      SecondProp = "prop_anim_cash_pile_02",
      SecondPropBone = 18905,
      SecondPropPlacement = {0.0860, 0.0090, 0.0630, -9.0311834, -41.188485, -5.8060636},
      ThirdProp = "prop_anim_cash_pile_02",
      ThirdPropBone = 18905,
      ThirdPropPlacement = {0.0480, 0.0170, 0.0900, -12.522179, -44.7599048, -14.439615},
      FourthProp = "prop_anim_cash_pile_02",
      FourthPropBone = 18905,
      FourthPropPlacement = {0.0240, 0.0190, 0.1240, -12.0240058, -42.1956919, -6.6845601},
      FifthProp = "prop_anim_cash_pile_02",
      FifthPropBone = 18905,
      FifthPropPlacement = {-0.0030, 0.0390, 0.1540, -13.3443174, -36.965014, 3.9730373},
  }},
  ["holdcash8"] = {"holdcash@bry", "holdcash_clip", "Holding Cash 8", AnimationOptions =
{
   EmoteLoop = true,
   EmoteMoving = true,
   Prop = "prop_anim_cash_pile_02",
   PropBone = 57005,
   PropPlacement = {0.1270, 0.0120, -0.0250, 18.8885807, 14.183658, 2.8947588},
}},
  ["holdchamp"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Champ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ba_prop_battle_champ_closed',
    PropBone = 18905,
    PropPlacement = {0.29, -0.089, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdchamp2"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Champ 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ba_prop_battle_champ_closed_02',
    PropBone = 18905,
    PropPlacement = {0.29, -0.089, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdchamp3"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Champ 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ba_prop_battle_champ_closed_03',
    PropBone = 18905,
    PropPlacement = {0.29, -0.089, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdball"] = {"darkmoneyhold@animation", "hold_clip", "Holding Ball", AnimationOptions =
  {
      Prop = "prop_bskball_01",
      PropBone = 0,
      PropPlacement = {-0.2900, -0.0100, 0.6100, 100.3452698, 2.6639877, -14.7668903},
      EmoteLoop = true,
      EmoteMoving = false,
  }},

  ["holdball2"] = { "mx@pose2", "mx_clippose2", "Holding Ball 2", AnimationOptions =
  {
  EmoteMoving = false,
  EmoteLoop = true,
  Prop = "prop_bskball_01",
  PropBone = 6286,
  PropPlacement = {0.05, -0.01,-0.14, -12.0000, 119.0000, 191.0000},
  }},
  ["holdbottle"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Bottle ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ba_prop_club_water_bottle',
    PropBone = 18905,
    PropPlacement = {0.32, -0.13, 0.0206, 230.0, 130.0, -40.0},
  }},
  ["holdbottle2"] = {"missbigscore2aig_3", "wait_for_van_c", "Holding Bottle 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'p_whiskey_bottle_s',
    PropBone = 18905,
    PropPlacement = {0.25, -0.099, 0.0606, 230.0, 130.0, -40.0},
  }},
  ["holdlean"] = {"crossfinger@animation", "crossfinger_clip", "Holding Lean Bottle", AnimationOptions =
  {
    Prop = "ng_proc_sodabot_01a",
    PropBone = 57005,
    PropPlacement = {0.1000, -0.1150, -0.0390, -85.4981235, 0.3139048, -5.9877287},
    EmoteLoop = true,
    EmoteMoving = false,

  }},
  ["holdlean2"] = {"darkfinguer@animation", "darkfinguer_clip", "Holding Lean 2", AnimationOptions =
  {
      Prop = 'p_amb_coffeecup_01',
      PropBone = 28422,
      PropPlacement = {0.06, 0.03, -0.04, -90.0, -50.0, -20.0},
      EmoteLoop = true,
      EmoteMoving = true,
  }},
  ["holdmoneygun"] = {"darkmoneypack@animation", "money_clip", "Holding Money Gun & Cash", AnimationOptions =
  {
    EmoteLoop = true,
    EmoteMoving = true,
    Prop = "prop_tool_nailgun",
    PropBone = 57005,
    PropPlacement = {0.1670, 0.0280, -0.0070, -68.000001, 0, 0},
    SecondProp = "prop_anim_cash_pile_02",
    SecondPropBone = 18905,
    SecondPropPlacement = {0.0480, 0.0780, 0.2050, 105.5206015, -88.2938324, -71.4963754},
    ThirdProp = "prop_anim_cash_pile_02",
    ThirdPropBone = 18905,
    ThirdPropPlacement = {0.0600, 0.0670, 0.1660, 66.2605582, 98.3726411, 70.4009634},
    FourthProp = "prop_anim_cash_pile_02",
    FourthPropBone = 18905,
    FourthPropPlacement = {0.0720, 0.0590, 0.1260, 59.4417515, 107.1630021, 66.3325017},
    FifthProp = "prop_anim_cash_pile_02",
    FifthPropBone = 18905,
    FifthPropPlacement = {0.1040, 0.0250, 0.0550, 153.2064739, -30.8942932, -38.0181542},
    SixthProp = "prop_anim_cash_pile_02",
    SixthPropBone = 18905,
    SixthPropPlacement = {0.1050, -0.0030, 0.0199, 154.7743706, -20.0520064, -10.8391654},
    SeventhProp = "prop_anim_cash_pile_02",
    SeventhPropBone = 18905,
    SeventhPropPlacement = {0.0930, 0.0500, 0.0880, 59.4417515, 107.1630021, 66.3325017},
  }},
  ["holdcigar"] = {"smoke@cubandark", "smoke_clip", "Holding Cigar", AnimationOptions =
  {
      EmoteLoop = true,
      EmoteMoving = true,
      Prop = "prop_cigar_03",
      PropBone = 6286,
      PropPlacement = {0.0840, 0.0610, -0.0330, 8.4120895, 92.4863735, -79.5128453},
  }},
  ["sitbottle"] = {"timetable@ron@ig_3_couch", "base", "Sit Bottle 1", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'ba_prop_club_water_bottle',
    PropBone = 18905,
    PropPlacement = {0.3400, -0.0006, 0.1206, 170.0, 61.0, 189.2814},
  }},
  ["sitbottle2"] = {"anim@amb@business@cfm@cfm_machine_no_work@", "hanging_out_operator", "Sit Bottle 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_cs_script_bottle_01',
    PropBone = 18905,
    PropPlacement = {0.2200, -0.0006, 0.0706, 160.0, 45.0, 200.2814},
  }},
  ["sitbottle3"] = {"timetable@ron@ig_3_couch", "base", "Sit Bottle 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_cs_script_bottle_01',
    PropBone = 18905,
    PropPlacement = {0.2200, -0.0006, 0.0706, 160.0, 45.0, 200.2814},
  }},
  ["sitbottle4"] = {"timetable@ron@ig_3_couch", "base", "Sit Bottle 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'p_whiskey_bottle_s',
    PropBone = 18905,
    PropPlacement = {0.2200, -0.0006, 0.0706, 160.0, 45.0, 200.2814},
  }},
  ["sitbottle5"] = {"timetable@ron@ig_3_couch", "base", "Sit Bottle 5", AnimationOptions =
{
  Prop = "prop_cs_script_bottle",
  PropBone = 28422,
  PropPlacement = {0.1, 0.0, -0.1, 0.0, 0.3, 0.3},
  EmoteLoop = true,
  EmoteMoving = false,
}},
["sitbottle6"] = {"timetable@trevor@smoking_meth@base", "base", "Sit Bottle 6", AnimationOptions =
  {
  Prop = "ng_proc_sodabot_01a",
  PropBone = 57005,
  PropPlacement = {0.105, 0.000,-0.300,  -6.100, 5.300, 7.000},
  EmoteLoop = true,
  EmoteMoving = false,
}},

["sitbeer1"] = {"timetable@ron@ig_3_couch", "base", "Sit Beer & Rifle 1", AnimationOptions =
  {
    Prop = 'prop_amb_beer_bottle',
    PropBone = 18905,
    PropPlacement = {0.2200, -0.0006, 0.0706, 160.0, 45.0, 200.2814},
    SecondProp = 'w_ar_assaultrifle',
    SecondPropBone = 51826,
    SecondPropPlacement = {0.2000, 0.1600, -0.2310, 7.0000, -87.0000, -6.5000},
    EmoteLoop = true,
    EmoteMoving = false,
  }},

  ["sitrifle2"] = {"timetable@amanda@drunk@base", "base", "Sit Rifle 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'w_ar_assaultrifle',
    PropBone = 46078,
    PropPlacement = {-0.2400, -0.2100, 0.2500, -135.0, 45.0, 50.0},
  }},
  ["sitrifle3"] = {"anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@", "smokers_cough_lazyworker", "Sit Rifle 3", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'w_ar_carbinerifle',
    PropBone = 46078,
    PropPlacement = {-0.3400, 0.07, 0.26, 180.0, 50.0, 10.0},
    SecondProp = 'prop_amb_phone',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.1510,0.0380, 0.0530, -139.4206316, -54.950468, -0.0952977},
  }},
  ["sitrifle4"] = {"anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@", "sleep_cycle_lazyworker", "Sit Rifle 4", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'w_ar_assaultrifle',
    PropBone = 46078,
    PropPlacement = {-0.3400, 0.07, 0.26, 180.0, 50.0, 10.0},
  }},
  ["sitpistol"] = {"anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@", "sleep_cycle_lazyworker", "Sit Pistol ", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'w_pi_combatpistol',
    PropBone = 46078,
    PropPlacement = {-0.3400, 0.02, 0.36, 180.0, 60.0, 17.0},
    SecondProp = 'prop_anim_cash_pile_02',
    SecondPropBone = 46078,
    SecondPropPlacement = {-0.099, 0.099, 0.03, 100.0, 90.0, 20.0},
  }},
  ["sitpistol2"] = {"anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@", "smokers_cough_lazyworker", "Sit Pistol 2", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'w_pi_combatpistol',
    PropBone = 46078,
    PropPlacement = {-0.3400, 0.02, 0.36, 180.0, 65.0, 17.0},
    SecondProp = 'prop_amb_phone',
    SecondPropBone = 18905,
    SecondPropPlacement = {0.1510,0.0380, 0.0530, -139.4206316, -54.950468, -0.0952977},
    ThirdProp = 'prop_anim_cash_pile_02',
    ThirdPropBone = 46078,
    ThirdPropPlacement = {-0.099, 0.099, 0.03, 100.0, 90.0, 20.0},
  }},
  ["sitcash"] = {"anim@heists@heist_safehouse_intro@variations@male@tv", "tv_part_one_loop", "Sit Cash", AnimationOptions =
  {
     Prop = "prop_anim_cash_pile_02",
     PropBone = 57005,
     PropPlacement = {0.0990, 0.0170,-0.0300, -64.760, -109.544, 18.717},
     EmoteLoop = true,
     EmoteMoving = false,
 }},
----------------
["gunshake"] = {"glizzy@updated@anims@deadlyglock", "deadly1", "Glock Shake", AnimationOptions =
{
   Prop = "prop_space_pistol",
   PropBone = 64097,
   PropPlacement = {0.0, -0.09, -0.1, -270.8, 90.0, 0.5},
--//  PropPlacement = {0.0├╝st, 90.0sa─ƒ, 0.1alt, -6.8, 90.0, 3.5},
   EmoteLoop = true,
  }},
  ["skate"] = {"move_weapon@jerrycan@generic", "idle", "Skate", AnimationOptions =
  {
    Prop = "v_res_skateboard",
    PropBone = 28422,
    PropPlacement = {0.33, 0.0, 0.0, 2.36, -181.0, 0.30},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["muerte"] = {"missarmenian2", "drunk_loop", "Muerte", AnimationOptions =
  {
    EmoteMoving = false,
    EmoteLoop = true,
    Prop = 'prop_cs_bowie_knife',
    PropBone = 31086,
    PropPlacement = {-0.4, 0.1, -0.3, 0.0, 0.0, 0.0},
  }},

}
DP.PropEmotes = {
  ["cane"] = {"missheistdocksprep1hold_cellphone", "static", "Cane", AnimationOptions =
  {
      Prop = "prop_cs_walking_stick",
      PropBone = 57005,
      PropPlacement = {0.15, 0.05, -0.03, 0.0, 266.0, 180.0},
      EmoteLoop = true,
      EmoteMoving = true,
  }},

  ["megaphone"] = {"molly@megaphone", "megaphone_clip", "Megaphone", AnimationOptions =
  {
      Prop = "prop_megaphone_01",
      PropBone = 28422,
      PropPlacement = {0.050000, 0.054000, -0.0060, -71.885498, -13.088900, -16.0242},
      EmoteLoop = true,
      EmoteMoving = true,
  }},

  ["jdgrave1"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Digging Grave", AnimationOptions =
  {
      EmoteMoving = true,
      EmoteLoop = true,
      Prop = 'prop_tool_shovel006',
      PropBone = 28422,
      PropPlacement = {0.0, 0.1, -0.6, 0.0, 0.0, 180.0},
   }},

  ["umbrella"] = {"rcmnigel1d", "base_club_shoulder", "Umbrella", AnimationOptions =
  {
    Prop = "p_amb_brolly_01",
    PropBone = 28422,
    PropPlacement = {0.0700, 0.0100, 0.1100, 2.3402393, -150.9605721, 57.3374916},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ['umbrella2'] = { 'rcmnigel1d', 'base_club_shoulder', 'Umbrella 2', AnimationOptions = {
    Prop = 'p_amb_brolly_01',
    PropBone = 28422,
    PropPlacement = { 0.0700, 0.0100, 0.1100, 2.3402393, -150.9605721, 57.3374916 },
    EmoteLoop = true,
    EmoteMoving = true,
} },
  ["gift"] = {"bz@give_love@anim", "bz_give", "Gift", AnimationOptions =
   {
       Prop = "bz_prop_gift",
       PropBone = 57005,
       PropPlacement = {0.15, -0.08, -0.08, -60.0, -120.0, 40.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["gift2"] = {"bz@give_love@anim", "bz_give", "Gift 2", AnimationOptions =
   {
       Prop = "bz_prop_gift2",
       PropBone = 57005,
       PropPlacement = {0.15, -0.08, -0.08, -60.0, -120.0, 40.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["milka"] = {"bz@give_love@anim", "bz_give", "Milka", AnimationOptions =
   {
       Prop = "bz_prop_milka",
       PropBone = 57005,
       PropPlacement = {0.12, -0.05, -0.14, -19.0, -109.0, 40.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["jewel"] = {"bz@give_love@anim", "bz_give", "Jewel", AnimationOptions =
   {
       Prop = "bz_prop_jewel",
       PropBone = 57005,
       PropPlacement = {0.13, 0.0, -0.19, -38.0, -120.0, 40.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},

  ---
  ------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
  ---

  ["notepad"] = {"missheistdockssetup1clipboard@base", "base", "Notepad", AnimationOptions =
  {
    Prop = 'prop_notepad_01',
    PropBone = 18905,
    PropPlacement = {0.1, 0.02, 0.05, 10.0, 0.0, 0.0},
    SecondProp = 'prop_pencil_01',
    SecondPropBone = 58866,
    SecondPropPlacement = {0.11, -0.02, 0.001, -120.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["box"] = {"anim@heists@box_carry@", "idle", "Box", AnimationOptions =
  {
    Prop = "hei_prop_heist_box",
    PropBone = 60309,
    PropPlacement = {0.025, 0.08, 0.255, -145.0, 290.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["rose"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Rose", AnimationOptions =
  {
    Prop = "prop_single_rose",
    PropBone = 18905,
    PropPlacement = {0.13, 0.15, 0.0, -100.0, 0.0, -20.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["smoke2"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_c", "Smoke 2", AnimationOptions =
  {
    Prop = 'prop_cs_ciggy_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["smoke3"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
  {
    Prop = 'prop_cs_ciggy_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["smoke4"] = {"amb@world_human_smoking@female@idle_a", "idle_b", "Smoke 4", AnimationOptions =
  {
    Prop = 'prop_cs_ciggy_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bong"] = {"anim@safehouse@bong", "bong_stage3", "Bong", AnimationOptions =
  {
    Prop = 'hei_heist_sh_bong_01',
    PropBone = 18905,
    PropPlacement = {0.10,-0.25,0.0,95.0,190.0,180.0},
  }},
  ["fishing1"] = {"amb@world_human_stand_fishing@idle_a", "idle_a", "Fishing1", AnimationOptions =
  {
    Prop = 'prop_fishing_rod_01',
    PropBone = 60309,
    PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["fishing2"] = {"amb@world_human_stand_fishing@idle_a", "idle_b", "Fishing2", AnimationOptions =
  {
    Prop = 'prop_fishing_rod_01',
    PropBone = 60309,
    PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["fishing3"] = {"amb@world_human_stand_fishing@idle_a", "idle_c", "Fishing3", AnimationOptions =
  {
    Prop = 'prop_fishing_rod_01',
    PropBone = 60309,
    PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
    EmoteLoop = true,
    EmoteMoving = false,
  }},
  ["suitcase"] = {"move_weapon@jerrycan@generic", "idle", "Suitcase", AnimationOptions =
  {
    Prop = "prop_ld_suitcase_01",
    PropBone = 57005,
    PropPlacement = {0.35, 0.0, 0.0, 0.0, 266.0, 90.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["suitcase2"] = {"move_weapon@jerrycan@generic", "idle", "Suitcase 2", AnimationOptions =
  {
    Prop = "prop_security_case_01",
    PropBone = 57005,
    PropPlacement = {0.13, 0.0, -0.01, 0.0, 280.0, 90.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["boombox"] = {"move_weapon@jerrycan@generic", "idle", "Boombox", AnimationOptions =
  {
    Prop = "prop_boombox_01",
    PropBone = 57005,
    PropPlacement = {0.27, 0.0, 0.0, 0.0, 263.0, 58.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["toolbox"] = {"move_weapon@jerrycan@generic", "idle", "Toolbox", AnimationOptions =
  {
    Prop = "prop_tool_box_04",
    PropBone = 28422,
    PropPlacement = {0.3960,0.0410,-0.0030, -90.00, 0.0, 90.00},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["toolbox2"] = {"move_weapon@jerrycan@generic", "idle", "Toolbox 2", AnimationOptions =
  {
    Prop = "imp_prop_tool_box_01a",
    PropBone = 28422,
    PropPlacement = {0.3700,0.0200, 0.0, 90.00, 0.0, -90.00},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["gbag"] = {"missfbi4prepp1", "_idle_garbage_man", "Garbage Bag", AnimationOptions =
  {
    Prop = "prop_cs_street_binbag_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0400, -0.0200, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beerbox"] = {"move_weapon@jerrycan@generic", "idle", "Beer Box 1", AnimationOptions =
  {
    Prop = "v_ret_ml_beerdus",
    PropBone = 57005,
    PropPlacement = {0.22, 0.0, 0.0, 0.0, 266.0, 48.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beerbox2"] = {"move_weapon@jerrycan@generic", "idle", "Beer Box 2", AnimationOptions =
  {
    Prop = "v_ret_ml_beeram",
    PropBone = 57005,
    PropPlacement = {0.22, 0.0, 0.0, 0.0, 266.0, 48.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beerbox3"] = {"move_weapon@jerrycan@generic", "idle", "Beer Box 3", AnimationOptions =
  {
    Prop = "v_ret_ml_beerpride",
    PropBone = 57005,
    PropPlacement = {0.22, 0.0, 0.0, 0.0, 266.0, 48.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beerbox4"] = {"move_weapon@jerrycan@generic", "idle", "Beer Box 4", AnimationOptions =
  {
    Prop = "v_ret_ml_beerbar",
    PropBone = 57005,
    PropPlacement = {0.22, 0.0, 0.0, 0.0, 266.0, 60.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["mugshot"] = {"mp_character_creation@customise@male_a", "loop", "Mugshot", AnimationOptions =
  {
    Prop = 'prop_police_id_board',
    PropBone = 58868,
    PropPlacement = {0.12, 0.24, 0.0, 5.0, 0.0, 70.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
  {
    Prop = 'p_amb_coffeecup_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["whiskey"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
  {
    Prop = 'prop_drink_whisky',
    PropBone = 28422,
    PropPlacement = {0.01, -0.01, -0.06, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["whiskeyb"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_a", "Whiskey Bottle", AnimationOptions =
  {
    Prop = 'ba_prop_battle_whiskey_bottle_2_s',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.05, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},

  ["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
  {
    Prop = 'prop_amb_beer_bottle',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.06, 0.0, 15.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["cup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cup", AnimationOptions =
  {
    Prop = 'prop_plastic_cup_02',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
  {
    Prop = 'prop_amb_donut',
    PropBone = 18905,
    PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
    EmoteMoving = true,
  }},
  ["burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger", AnimationOptions =
  {
    Prop = 'prop_cs_burger_01',
    PropBone = 18905,
    PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
    EmoteMoving = true,
  }},
  ["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
  {
    Prop = 'prop_sandwich_01',
    PropBone = 18905,
    PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
    EmoteMoving = true,
  }},
  ["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda", AnimationOptions =
  {
    Prop = 'prop_ecola_can',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ego Bar", AnimationOptions =
  {
    Prop = 'prop_choc_ego',
    PropBone = 60309,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteMoving = true,
  }},
  ["candy"] = {"mp_player_inteat@pnq", "loop", "Candy", AnimationOptions =
  {
    Prop = 'prop_candy_pqs',
    PropBone = 60309,
    PropPlacement = {-0.0300, 0.0180, 0.0, 180.0, 180.0, -88.099},
    EmoteMoving = true,
  }},
  ["wine"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Wine", AnimationOptions =
  {
    Prop = 'prop_drink_redwine',
    PropBone = 18905,
    PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["flute"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Flute", AnimationOptions =
  {
    Prop = 'prop_champ_flute',
    PropBone = 18905,
    PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["champagne"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Champagne", AnimationOptions =
  {
    Prop = 'prop_drink_champ',
    PropBone = 18905,
    PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
  {
    Prop = 'prop_cigar_02',
    PropBone = 47419,
    PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
    EmoteMoving = true,
    EmoteDuration = 2600
  }},
  ["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
  {
    Prop = 'prop_cigar_01',
    PropBone = 47419,
    PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
    EmoteMoving = true,
    EmoteDuration = 2600
  }},
  ["guitar"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar", AnimationOptions =
  {
    Prop = 'prop_acc_guitar_01',
    PropBone = 24818,
    PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["guitar2"] = {"switch@trevor@guitar_beatdown", "001370_02_trvs_8_guitar_beatdown_idle_busker", "Guitar 2", AnimationOptions =
  {
    Prop = 'prop_acc_guitar_01',
    PropBone = 24818,
    PropPlacement = {-0.05, 0.31, 0.1, 0.0, 20.0, 150.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["guitarelectric"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar Electric", AnimationOptions =
  {
    Prop = 'prop_el_guitar_01',
    PropBone = 24818,
    PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["guitarelectric2"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar Electric 2", AnimationOptions =
  {
    Prop = 'prop_el_guitar_03',
    PropBone = 24818,
    PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["book"] = {"cellphone@", "cellphone_text_read_base", "Book", AnimationOptions =
  {
    Prop = 'prop_novel_01',
    PropBone = 6286,
    PropPlacement = {0.15, 0.03, -0.065, 0.0, 180.0, 90.0}, -- This positioning isnt too great, was to much of a hassle
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["bouquet"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bouquet", AnimationOptions =
  {
    Prop = 'prop_snow_flower_02',
    PropBone = 24817,
    PropPlacement = {-0.29, 0.40, -0.02, -90.0, -90.0, 0.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["teddy"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Teddy", AnimationOptions =
  {
    Prop = 'v_ilev_mr_rasberryclean',
    PropBone = 24817,
    PropPlacement = {-0.20, 0.46, -0.016, -180.0, -90.0, 0.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["backpack"] = {"move_p_m_zero_rucksack", "nill", "Backpack", AnimationOptions =
  {
    Prop = 'p_michael_backpack_s',
    PropBone = 24818,
    PropPlacement = {0.07, -0.11, -0.05, 0.0, 90.0, 175.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["clipboard"] = {"missfam4", "base", "Clipboard", AnimationOptions =
  {
    Prop = 'p_amb_clipboard_01',
    PropBone = 36029,
    PropPlacement = {0.16, 0.08, 0.1, -130.0, -50.0, 0.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["map"] = {"amb@world_human_tourist_map@male@base", "base", "Map", AnimationOptions =
  {
    Prop = 'prop_tourist_map_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteMoving = true,
    EmoteLoop = true
  }},
  ["map2"] = {"amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", "Map 2", AnimationOptions =
  {
    Prop = "prop_tourist_map_01",
    PropBone = 28422,
    PropPlacement = {-0.05, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beg"] = {"amb@world_human_bum_freeway@male@base", "base", "Beg", AnimationOptions =
  {
    Prop = 'prop_beggers_sign_03',
    PropBone = 58868,
    PropPlacement = {0.19, 0.18, 0.0, 5.0, 0.0, 40.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["makeitrain"] = {"anim@mp_player_intupperraining_cash", "idle_a", "Make It Rain", AnimationOptions =
  {
    Prop = 'prop_anim_cash_pile_01',
    PropBone = 60309,
    PropPlacement = {0.0, 0.0, 0.0, 180.0, 0.0, 70.0},
    EmoteMoving = true,
    EmoteLoop = true,
    PtfxAsset = "scr_xs_celebration",
    PtfxName = "scr_xs_money_rain",
    PtfxPlacement = {0.0, 0.0, -0.09, -80.0, 0.0, 0.0, 1.0},
    PtfxInfo = Config.Languages[Config.MenuLanguage]['makeitrain'],
    PtfxWait = 500,
  }},
  ["camera"] = {"amb@world_human_paparazzi@male@base", "base", "Camera", AnimationOptions =
  {
    Prop = 'prop_pap_camera_01',
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
    PtfxAsset = "scr_bike_business",
    PtfxName = "scr_bike_cfid_camera_flash",
    PtfxPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0},
    PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
    PtfxWait = 200,
  }},
  ["champagnespray"] = {"anim@mp_player_intupperspray_champagne", "idle_a", "Champagne Spray", AnimationOptions =
  {
    Prop = 'ba_prop_battle_champ_open',
    PropBone = 28422,
    PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
    EmoteMoving = true,
    EmoteLoop = true,
    PtfxAsset = "scr_ba_club",
    PtfxName = "scr_ba_club_champagne_spray",
    PtfxPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    PtfxInfo = Config.Languages[Config.MenuLanguage]['spraychamp'],
    PtfxWait = 500,
  }},
  ["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
  {
    Prop = 'p_cs_joint_02',
    PropBone = 47419,
    PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
    EmoteMoving = true,
    EmoteLoop = true,
    EmoteDuration = 2600
  }},
  ["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
  {
    Prop = 'prop_amb_ciggy_01',
    PropBone = 47419,
    PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
    EmoteMoving = true,
    EmoteDuration = 2600
  }},
  ["brief3"]  = {"move_weapon@jerrycan@generic", "idle", "Brief 3", AnimationOptions =
  {
    Prop = "prop_ld_case_01",
    PropBone = 57005,
    PropPlacement = {0.12, 0.0, 0.0, 0.0, 255.0, 80.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tablet"] = {"amb@world_human_tourist_map@male@base", "base", "Tablet", AnimationOptions =
  {
    Prop = "prop_cs_tablet",
    PropBone = 28422,
    PropPlacement = {0.0, -0.03, 0.0, 20.0, -90.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tablet2"] = {"amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", "Tablet 2", AnimationOptions =
  {
    Prop = "prop_cs_tablet",
    PropBone = 28422,
    PropPlacement = {-0.05, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["phonecall"] = {"cellphone@", "cellphone_call_listen_base", "Phone Call", AnimationOptions =
  {
    Prop = "prop_phone_ing",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["phonecall2"] = {"random@kidnap_girl", "ig_1_girl_on_phone_loop", "Phone Call 2", AnimationOptions =
  {
    Prop = "prop_phone_ing",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["phone"] = {"cellphone@", "cellphone_text_read_base", "Phone", AnimationOptions =
  {
    Prop = "prop_phone_cs_frank",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["clean"] = {"timetable@floyd@clean_kitchen@base", "base", "Clean", AnimationOptions =
  {
    Prop = "prop_sponge_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["clean2"] = {"amb@world_human_maid_clean@", "base", "Clean 2", AnimationOptions =
  {
    Prop = "prop_sponge_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["clean3"] = {"switch@franklin@cleaning_car", "001946_01_gc_fras_v2_ig_5_base", "Clean 3", AnimationOptions =
   {
    Prop = "prop_sponge_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
}},
  ["protest"] = {"rcmnigel1d", "base_club_shoulder", "protest", AnimationOptions =
  {
    Prop = "prop_cs_protest_sign_01",
    PropBone = 57005,
    PropPlacement = {0.1820, 0.2400, 0.0600, -69.3774235, 5.9142048, -13.9572354},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["binoculars"] = {"amb@world_human_binoculars@male@idle_b", "idle_f", "Binoculars", AnimationOptions =
  {
    Prop = "prop_binoc_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["binoculars2"] = {"amb@world_human_binoculars@male@idle_a", "idle_c", "Binoculars 2", AnimationOptions =
  {
    Prop = "prop_binoc_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tennisplay"] = {"move_weapon@jerrycan@generic", "idle", "Tennis Play", AnimationOptions =
  {
    Prop = "prop_tennis_bag_01",
    PropBone = 57005,
    PropPlacement = {0.27, 0.0, 0.0, 91.0, 0.0, -82.9999951},
    SecondProp = 'prop_tennis_rack_01',
    SecondPropBone = 60309,
    SecondPropPlacement = {0.0800, 0.0300, 0.0, -130.2907295, 3.8782324, 6.588224},
    EmoteLoop = true,
    EmoteMoving = true,


  }},
  ["weights"] = {"amb@world_human_muscle_free_weights@male@barbell@base", "base", "Weights", AnimationOptions =
  {
    Prop = "prop_curl_bar_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["weights2"] = {"amb@world_human_muscle_free_weights@male@barbell@idle_a", "idle_d", "Weights 2", AnimationOptions =
  {
    Prop = "prop_curl_bar_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["fuel"] = {"weapons@misc@jerrycan@", "fire", "fuel", AnimationOptions =
  {
    Prop = "w_am_jerrycan",
    PropBone = 57005,
    PropPlacement = {0.1800, 0.1300, -0.2400, -165.8693883, -11.2122753, -32.9453021},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["fuelcarry"] = {"weapons@misc@jerrycan@franklin", "idle", "Fuel Carry", AnimationOptions =
  {
    Prop = "w_am_jerrycan",
    PropBone = 28422,
    PropPlacement = {0.26, 0.050, 0.0300, 80.00, 180.000, 79.99},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["hitchhike"] = {"random@hitch_lift", "idle_f", "Hitchhike", AnimationOptions =
  {
    Prop = "w_am_jerrycan",
    PropBone = 18905,
    PropPlacement = {0.32, -0.0100, 0.0, -162.423, 74.83, 58.79},
    SecondProp = 'prop_michael_backpack',
    SecondPropBone = 40269,
    SecondPropPlacement = {-0.07, -0.21, -0.11, -144.93, 117.358, -6.16},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign"] = {"rcmnigel1d", "base_club_shoulder", "Steal Stop Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_01a",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign2"] = {"rcmnigel1d", "base_club_shoulder", "Steal Yield Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_02a",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign3"] = {"rcmnigel1d", "base_club_shoulder", "Steal Hospital Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_03d",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign4"] = {"rcmnigel1d", "base_club_shoulder", "Steal Parking Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_04a",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign5"] = {"rcmnigel1d", "base_club_shoulder", "Steal Parking Sign ~p~2 ", AnimationOptions =
  {
    Prop = "prop_sign_road_04w",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign6"] = {"rcmnigel1d", "base_club_shoulder", "Steal Pedestrian Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_05a",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign7"] = {"rcmnigel1d", "base_club_shoulder", "Steal Street Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_road_05t",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign8"] = {"rcmnigel1d", "base_club_shoulder", "Steal Freeway Sign ~p~", AnimationOptions =
  {
    Prop = "prop_sign_freewayentrance",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["ssign9"] = {"rcmnigel1d", "base_club_shoulder", "Steal Stop Sign ~p~Snow ", AnimationOptions =
  {
    Prop = "prop_snow_sign_road_01a",
    PropBone = 60309,
    PropPlacement = {-0.1390, -0.9870, 0.4300, -67.3315314, 145.0627869, -4.4318885},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["conehead"] = {"move_m@drunk@verydrunk_idles@", "fidget_07", "Cone Head ", AnimationOptions =
  {
    Prop = "prop_roadcone02b",
    PropBone = 31086,
    PropPlacement = {0.0500, 0.0200, -0.000, 30.0000004, 90.0, 0.0},
    --
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray", AnimationOptions =
  {
    Prop = "prop_food_bs_tray_03",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray2"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 2", AnimationOptions =
  {
    Prop = "prop_food_bs_tray_02",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray3"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 3", AnimationOptions =
  {
    Prop = "prop_food_cb_tray_02",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray4"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 4", AnimationOptions =
  {
    Prop = "prop_food_tray_02",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray5"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 5", AnimationOptions =
  {
    Prop = "prop_food_tray_03",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray6"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 6", AnimationOptions =
  {
    Prop = "prop_food_bs_tray_02",
    PropBone = 57005,
    PropPlacement = {0.2500, 0.1000, 0.0700,-110.5483936, 73.3529273, -16.338362},
    SecondProp = 'prop_food_bs_tray_03',
    SecondPropBone =18905,
    SecondPropPlacement = {0.2200, 0.1300, -0.1000, -127.7725487, 110.2074758, -3.5886263},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray7"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 7", AnimationOptions =
  {
    Prop = "prop_food_cb_tray_02",
    PropBone = 57005,
    PropPlacement = {0.2500, 0.1000, 0.0700,-110.5483936, 73.3529273, -16.338362},
    SecondProp = 'prop_food_cb_tray_02',
    SecondPropBone =18905,
    SecondPropPlacement = {0.2200, 0.1300, -0.1000, -127.7725487, 110.2074758, -3.5886263},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtray8"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 8", AnimationOptions =
  {
    Prop = "prop_food_tray_02",
    PropBone = 57005,
    PropPlacement = {0.2500, 0.1000, 0.0700,-110.5483936, 73.3529273, -16.338362},
    SecondProp = 'prop_food_tray_03',
    SecondPropBone =18905,
    SecondPropPlacement = {0.2200, 0.1300, -0.1000, -127.7725487, 110.2074758, -3.5886263},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodtraytray9"] = {"anim@heists@box_carry@", "idle", "Carry Food Tray 9", AnimationOptions =
  {
    Prop = "prop_food_tray_02",
    PropBone = 57005,
    PropPlacement = {0.2500, 0.1000, 0.0700,-110.5483936, 73.3529273, -16.338362},
    SecondProp = 'prop_food_tray_02',
    SecondPropBone =18905,
    SecondPropPlacement = {0.2200, 0.1300, -0.1000, -127.7725487, 110.2074758, -3.5886263},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carrypizza"] = {"anim@heists@box_carry@", "idle", "Carry Pizza Box", AnimationOptions =
  {
    Prop = "prop_pizza_box_02",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.1000, -0.1590,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carrypizza2"] = {"anim@heists@box_carry@", "idle", "Carry Pizza Box 2", AnimationOptions =
  {
    Prop = "prop_pizza_box_01",
    PropBone = 28422,
    PropPlacement = {0.0100, -0.1000, -0.1590,20.0000007, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodbag"] = {"move_weapon@jerrycan@generic", "idle", "Carry Food Bag", AnimationOptions =
  {
    Prop = "prop_food_bs_bag_01",
    PropBone = 57005,
    PropPlacement = {0.3300, 0.0, -0.0300, 0.0017365, -79.9999997, 110.0651988},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodbag2"] = {"move_weapon@jerrycan@generic", "idle", "Carry Food Bag 2", AnimationOptions =
  {
    Prop = "prop_food_cb_bag_01",
    PropBone = 57005,
    PropPlacement = {0.3800, 0.0, -0.0300, 0.0017365, -79.9999997, 110.0651988},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["carryfoodbag3"] = {"move_weapon@jerrycan@generic", "idle", "Carry Food Bag 3", AnimationOptions =
  {
    Prop = "prop_food_bag1",
    PropBone = 57005,
    PropPlacement = {0.3800, 0.0, -0.0300, 0.0017365, -79.9999997, 110.0651988},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag"] = {"anim@scripted@freemode@postertag@graffiti_spray@male@", "shake_can_male", "Tagging Shake Can Male", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag2"] = {"anim@scripted@freemode@postertag@graffiti_spray@heeled@", "shake_can_female", "Tagging Shake Can Female", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag3"] = {"anim@scripted@freemode@postertag@graffiti_spray@male@", "spray_can_var_01_male", "Tagging Male 1", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag4"] = {"anim@scripted@freemode@postertag@graffiti_spray@male@", "spray_can_var_02_male", "Tagging Male 2", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag5"] = {"anim@scripted@freemode@postertag@graffiti_spray@heeled@", "spray_can_var_01_female", "Tagging Female 1", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["tag6"] = {"anim@scripted@freemode@postertag@graffiti_spray@heeled@", "spray_can_var_02_female", "Tagging Female 2", AnimationOptions =
  {
    Prop = "prop_cs_spray_can",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0700, 0.0017365, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["beans"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "Beans", AnimationOptions =
  {
    Prop = "h4_prop_h4_caviar_tin_01a",
    PropBone = 60309,
    PropPlacement = {0.0, 0.0300, 0.0100,0.0,0.0,0.0},
    SecondProp = 'h4_prop_h4_caviar_spoon_01a',
    SecondPropBone = 28422,
    SecondPropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["newscam"] = {"missfinale_c2mcs_1", "fin_c2_mcs_1_camman", "News Camera", AnimationOptions =
  {
    Prop = "prop_v_cam_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0300, 0.0100,0.0,0.0,0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["newsmic"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "News Microphone", AnimationOptions =
  {
    Prop = "p_ing_microphonel_01",
    PropBone = 4154,
    PropPlacement = {-0.00, -0.0200, 0.1100, 0.00, 0.0, 60.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
   ["newsmic2"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Hold a microphone 2", AnimationOptions =
   {
       Prop = "prop_microphone_02",
       PropBone = 18905,
       PropPlacement = {0.11, 0.03, 0.03, -100.0, 0.0, -10.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},

  ["newsbmic"] = {"missfra1", "mcs2_crew_idle_m_boom", "News Boom Microphone", AnimationOptions =
  {
    Prop = "prop_v_bmike_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["leafblower"] = {"amb@world_human_gardener_leaf_blower@base", "base", "Leaf Blower", AnimationOptions =
  {
    Prop = "prop_leaf_blower_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["bbqf"] = {"amb@prop_human_bbq@male@idle_a", "idle_b", "BBQ (Female)", AnimationOptions =
  {
    Prop = "prop_fish_slice_01",
    PropBone = 28422,
    PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true,
    EmoteMoving = true,
  }},
  ["pump"] = {"missfbi4prepp1", "idle", "Pumpkin", AnimationOptions =
  {
     Prop = "prop_veg_crop_03_pump",
     PropBone = 28422,
     PropPlacement = {0.0200, 0.0600, -0.1200, 0.0, 0.0, 0.0},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["pump2"] = {"anim@heists@box_carry@", "idle", "Pumpkin 2", AnimationOptions =
  {
     Prop = "prop_veg_crop_03_pump",
     PropBone = 28422,
     PropPlacement = {0.0100, -0.16000, -0.2100, 0.0, 0.0, 0.0},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["mop"] = {"missfbi4prepp1", "idle", "Mop", AnimationOptions =
  {
     Prop = "prop_cs_mop_s",
     PropBone = 28422,
     PropPlacement = {-0.0200,-0.0600,-0.2000, -13.377, 10.3568, 17.9681},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["mop2"] = {"move_mop", "idle_scrub_small_player", "Mop 2", AnimationOptions =
  {
     Prop = "prop_cs_mop_s",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, 0.1200, 0.0, 0.0, 0.0},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["jerkf"] = {"switch@trevor@jerking_off", "trev_jerking_off_loop", "JerkOff! Female", AnimationOptions =
  {
     Prop = 'prop_cs_dildo_01',
     PropBone = 28422,
     PropPlacement = {0.09, 0.05, -0.03, 90.0, 80.0, 30.0},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["rake"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Rake", AnimationOptions =
  {
     Prop = "prop_tool_rake",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["rake2"] = {"anim@amb@drug_field_workers@rake@male_a@idles", "idle_b", "Rake 2", AnimationOptions =
  {
     Prop = "prop_tool_rake",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["rake3"] = {"anim@amb@drug_field_workers@rake@male_b@base", "base", "Rake 3", AnimationOptions =
  {
     Prop = "prop_tool_rake",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["rake4"] = {"anim@amb@drug_field_workers@rake@male_b@idles", "idle_d", "Rake 4", AnimationOptions =
  {
     Prop = "prop_tool_rake",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["broom"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Broom", AnimationOptions =
  {
     Prop = "prop_tool_broom",
     PropBone = 28422,
     PropPlacement = {-0.0100, 0.0400, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["broom2"] = {"anim@amb@drug_field_workers@rake@male_a@idles", "idle_b", "Broom 2", AnimationOptions =
  {
     Prop = "prop_tool_broom",
     PropBone = 28422,
     PropPlacement = {-0.0100, 0.0400, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["broom3"] = {"anim@amb@drug_field_workers@rake@male_b@base", "base", "Broom 3", AnimationOptions =
  {
     Prop = "prop_tool_broom",
     PropBone = 28422,
     PropPlacement = {-0.0100, 0.0400, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["broom4"] = {"anim@amb@drug_field_workers@rake@male_b@idles", "idle_d", "Broom 4", AnimationOptions =
  {
     Prop = "prop_tool_broom",
     PropBone = 28422,
     PropPlacement = {-0.0100, 0.0400, -0.0300, 0.0, 0.0, 0.0},
     EmoteLoop = true,
  }},
  ["champw"] = {"anim@move_f@waitress", "idle", "Champagne Waiter", AnimationOptions =
  {
     Prop = "vw_prop_vw_tray_01a",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, 0.0100,0.0,0.0,0.0},
     SecondProp = 'prop_champ_cool',
     SecondPropBone = 28422,
     SecondPropPlacement = {0.0,0.0,0.010,0.0,0.0,0.0},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["shit"] = {"missfbi3ig_0", "shit_loop_trev", "Shit", AnimationOptions =
  {
     Prop = "prop_toilet_roll_01",
     PropBone = 28422,
     PropPlacement = {0.0700, -0.02000, -0.2100, 0,0, 0.0, 0.0},
     SecondProp = 'prop_big_shit_01',
     SecondPropBone = 0,
     SecondPropPlacement = {-0.0100, 0.0600, -0.1550, 101.3015175, 7.3512213,-29.2665794},
     EmoteLoop = true,
     EmoteMoving = false,
  }},
  ["dig"] = {"random@burial", "a_burial", "Dig", AnimationOptions =
  {
     Prop = "prop_tool_shovel",
     PropBone = 28422,
     PropPlacement = {0.0, 0.0, 0.24, 0,0, 0.0, 0.0},
     SecondProp = 'prop_ld_shovel_dirt',
     SecondPropBone = 28422,
     SecondPropPlacement = {0.0,0.0,0.24,0.0,0.0,0.0},
     EmoteLoop = true,
     EmoteMoving = false,
 }},
  ["bongos"] = {"amb@world_human_musician@bongos@male@base", "base", "Bongo Drums", AnimationOptions =
  {
     Prop = "prop_bongos_01",
     PropBone = 60309,
     PropPlacement = {0.0,0.0,0.0, 0.0, 0.0, 0.0},
     EmoteLoop = true,
     EmoteMoving = true,
 }},
  ["medbag"] = {"move_weapon@jerrycan@generic", "idle", "Medic Bag", AnimationOptions =
  {
     Prop = "xm_prop_x17_bag_med_01a",
     PropBone = 57005,
     PropPlacement = {0.3900,-0.0600, -0.0600, -100.00, -180.00, -78.00},
     EmoteLoop = true,
     EmoteMoving = true,
 }},
  ["dufbag"] = {"move_weapon@jerrycan@generic", "idle", "Duffel Bag", AnimationOptions =
  {
     Prop = "bkr_prop_duffel_bag_01a",
     PropBone = 28422,
     PropPlacement = {0.2600,0.0400, 0.00, 90.00, 0.00, -78.99},
     EmoteLoop = true,
     EmoteMoving = true,
 }},
  ["shopbag"] = {"move_weapon@jerrycan@generic", "idle", "Shopping Bag", AnimationOptions =
  {
     Prop = "vw_prop_casino_shopping_bag_01a",
     PropBone = 28422,
     PropPlacement = {0.24, 0.03, -0.04, 0.00, -90.00, 10.00},
     EmoteLoop = true,
     EmoteMoving = true,
 }},
  ["shopbag2"] = {"move_weapon@jerrycan@generic", "idle", "Shopping Bag 2", AnimationOptions =
  {
     Prop = "prop_shopping_bags02",
     PropBone = 28422,
     PropPlacement = {0.05, 0.02, 0.00, 178.80, 91.19, 9.97},
     EmoteLoop = true,
     EmoteMoving = true,
 }},
  ["shopbag3"] = {"move_weapon@jerrycan@generic", "idle", "Shopping Bag 3", AnimationOptions =
  {
     Prop = "prop_cs_shopping_bag",
     PropBone = 28422,
     PropPlacement = {0.24, 0.03, -0.04, 0.00, -90.00, 10.00},
     EmoteLoop = true,
     EmoteMoving = true,
  }},
  ["idcard"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 1", AnimationOptions =
  {
     Prop = "prop_franklin_dl",
     PropBone = 57005,
     PropPlacement = {0.1000, 0.0200, -0.0300, -90.000, 170.000, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
  ["idcardb"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 2 - FIB", AnimationOptions =
  {
     Prop = "prop_fib_badge",
     PropBone = 28422,
     PropPlacement = {0.0600, 0.0210, -0.0400, -90.00, -180.00, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
  ["idcardc"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 3", AnimationOptions =
  {
     Prop = "prop_michael_sec_id",
     PropBone = 28422,
     PropPlacement = {0.1000, 0.0200, -0.0300, -90.00, -180.00, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
  ["idcardd"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 4", AnimationOptions =
  {
     Prop = "prop_trev_sec_id",
     PropBone = 28422,
     PropPlacement = {0.1000, 0.0200, -0.0300, -90.00, -180.00, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
  ["idcarde"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 5", AnimationOptions =
  {
     Prop = "p_ld_id_card_002",
     PropBone = 28422,
     PropPlacement = {0.1000, 0.0200, -0.0300, -90.00, -180.00, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
  ["idcardg"] = {"paper_1_rcm_alt1-8", "player_one_dual-8", "ID Card 7", AnimationOptions =
  {
     Prop = "prop_michael_sec_id",
     PropBone = 28422,
     PropPlacement = {0.1000, 0.0200, -0.0300, -90.00, -180.00, 78.999},
     EmoteLoop = false,
     EmoteMoving = true,
 }},
 ["selfie"] = { "anim@mp_player_intuppertake_selfie", "idle_a", "Selfie", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 60309,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie2"] = { "cellphone@self@franklin@", "peace", "Selfie 2", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie3"] = { "cellphone@self@franklin@", "west_coast", "Selfie 3 - West Side", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie4"] = { "cellphone@self@trevor@", "aggressive_finger", "Selfie 4 - Finger", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie5"] = { "cellphone@self@trevor@", "proud_finger", "Selfie 5 - Finger 2", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie6"] = { "cellphone@self@trevor@", "throat_slit", "Selfie 6 - Throat Slit", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["selfie7"] = { "cellphone@self@franklin@", "chest_bump", "Selfie 7 - Chest Bump", AnimationOptions = {
  Prop = "prop_phone_ing",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },

["sms"]             = { "cellphone@", "cellphone_text_read_base", "SMS", AnimationOptions = {
  Prop = "prop_amb_phone",
  PropBone = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["sms2"]            = { "cellphone@female", "cellphone_text_read_base", "SMS 2", AnimationOptions = {
  Prop = "prop_amb_phone",
  PropBone = 28422,
  PropPlacement = { 0.00, 0.00, 0.0301, 0.000, 00.00, 00.00 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
["sms3"]            = { "cellphone@female", "cellphone_email_read_base", "SMS 3", AnimationOptions = {
  Prop = "prop_amb_phone",
  PropBone = 28422,
  PropPlacement = { -0.0190, -0.0240, 0.0300, 18.99, -72.07, 6.39 },
  EmoteLoop = false,
  EmoteMoving = true,
} },
["sms4"]            = { "cellphone@female", "cellphone_text_read_base_cover_low", "SMS 4", AnimationOptions = {
  Prop = "prop_amb_phone",
  PropBone = 28422,
  PropPlacement = { -0.0190, -0.0250, 0.0400, 19.17, -78.50, 14.97 },
  EmoteLoop = false,
  EmoteMoving = true,
} },
["sms5"]            = { "amb@code_human_wander_texting_fat@male@base", "static", "SMS 6", AnimationOptions = {
  Prop = "prop_amb_phone",
  PropBone = 28422,
  PropPlacement = { -0.0200, -0.0100, 0.00, 2.309, 88.845, 29.979 },
  EmoteLoop = false,
  EmoteMoving = true,
} },
["tire"]            = { "anim@heists@box_carry@", "idle", "Tire", AnimationOptions = {
  Prop          = "prop_wheel_tyre",
  PropBone      = 60309,
  PropPlacement = { -0.05, 0.16, 0.32, -130.0, -55.0, 150.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["register"]        = { "anim@heists@box_carry@", "idle", "Register", AnimationOptions = {
  Prop          = "v_ret_gc_cashreg",
  PropBone      = 60309,
  PropPlacement = { 0.138, 0.2, 0.2, -50.0, 290.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["weedbrick"]       = { "impexp_int-0", "mp_m_waremech_01_dual-0", "Weed Brick", AnimationOptions = {
  Prop          = "prop_weed_block_01",
  PropBone      = 60309,
  PropPlacement = { 0.1, 0.1, 0.05, 0.0, -90.0, 90.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["weedbrick2"]      = { "anim@heists@box_carry@", "idle", "Weed Brick BIG", AnimationOptions = {
  Prop          = "bkr_prop_weed_bigbag_01a",
  PropBone      = 60309,
  PropPlacement = { 0.158, -0.05, 0.23, -50.0, 290.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["potplant"]        = { "anim@heists@box_carry@", "idle", "Pot Plant (Small)", AnimationOptions = {
  Prop          = "bkr_prop_weed_01_small_01c",
  PropBone      = 60309,
  PropPlacement = { 0.138, -0.05, 0.23, -50.0, 290.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["potplant2"]       = { "anim@heists@box_carry@", "idle", "Pot Plant (Medium)", AnimationOptions = {
  Prop          = "bkr_prop_weed_01_small_01b",
  PropBone      = 60309,
  PropPlacement = { 0.138, -0.05, 0.23, -50.0, 290.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["potplant3"]       = { "anim@heists@box_carry@", "idle", "Pot Plant (Large)", AnimationOptions = {
  Prop          = "bkr_prop_weed_lrg_01b",
  PropBone      = 60309,
  PropPlacement = { 0.138, -0.05, 0.23, -50.0, 290.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["lawnchair"]       = { "timetable@ron@ig_5_p3", "ig_5_p3_base", "Lawnchair", AnimationOptions = {
  Prop          = "prop_skid_chair_02",
  PropBone      = 0,
  PropPlacement = { 0.025, -0.2, -0.1, 45.0, -5.0, 180.0 },
  EmoteLoop     = true,
  EmoteMoving   = false,
} },
["lawnchair2"]      = { "timetable@reunited@ig_10", "base_amanda", "Lawnchair 2", AnimationOptions = {
  Prop          = "prop_skid_chair_02",
  PropBone      = 0,
  PropPlacement = { 0.025, -0.15, -0.1, 45.0, 5.0, 180.0 },
  EmoteLoop     = true,
  EmoteMoving   = false,
} },
["lawnchair3"]      = { "timetable@ron@ig_3_couch", "base", "Lawnchair 3", AnimationOptions = {
  Prop          = "prop_skid_chair_02",
  PropBone      = 0,
  PropPlacement = { -0.05, 0.0, -0.2, 5.0, 0.0, 180.0 },
  EmoteLoop     = true,
  EmoteMoving   = false,
} },
["rose2"]           = { "missheistdocksprep1hold_cellphone", "static", "Rose 2 (Male)", AnimationOptions = {
  Prop          = "prop_single_rose",
  PropBone      = 31086,
  PropPlacement = { -0.0140, 0.1030, 0.0620, -2.932, 4.564, 39.910 },
  EmoteLoop     = false,
  EmoteMoving   = true,
} },
["cbbox"]           = { "anim@heists@box_carry@", "idle", "Carry Beer Box", AnimationOptions = {
  Prop          = "v_ret_ml_beerben1",
  PropBone      = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["cbbox2"]          = { "anim@heists@box_carry@", "idle", "Carry Beer Box 2", AnimationOptions = {
  Prop          = "v_ret_ml_beerbla1",
  PropBone      = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["cbbox3"]          = { "anim@heists@box_carry@", "idle", "Carry Beer Box 3", AnimationOptions = {
  Prop          = "v_ret_ml_beerjak1",
  PropBone      = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["cbbox4"]          = { "anim@heists@box_carry@", "idle", "Carry Beer Box 4", AnimationOptions = {
  Prop          = "v_ret_ml_beerlog1",
  PropBone      = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["cbbox5"]          = { "anim@heists@box_carry@", "idle", "Carry Beer Box 5", AnimationOptions = {
  Prop          = "v_ret_ml_beerpis1",
  PropBone      = 28422,
  PropPlacement = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["cbbox6"]          = { "anim@heists@box_carry@", "idle", "Carry Beer Box 6", AnimationOptions = {
  Prop          = "prop_beer_box_01",
  PropBone      = 28422,
  PropPlacement = { 0.0200, -0.0600, -0.1200, -180.00, -180.00, 1.99 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["gbin"]          = { "anim@heists@box_carry@", "idle", "Garbage Bin", AnimationOptions = {
  Prop          = "prop_bin_08open",
  PropBone      = 28422,
  PropPlacement = { 0.00, -0.420, -1.290, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["gbin2"]          = { "anim@heists@box_carry@", "idle", "Garbage Bin 2", AnimationOptions = {
  Prop          = "prop_cs_bin_01",
  PropBone      = 28422,
  PropPlacement = { 0.00, -0.420, -1.290, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["gbin3"]          = { "anim@heists@box_carry@", "idle", "Garbage Bin 3", AnimationOptions = {
  Prop          = "prop_cs_bin_03",
  PropBone      = 28422,
  PropPlacement = { 0.00, -0.420, -1.290, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["gbin4"]          = { "anim@heists@box_carry@", "idle", "Garbage Bin 4", AnimationOptions = {
  Prop          = "prop_bin_08a",
  PropBone      = 28422,
  PropPlacement = { 0.00, -0.420, -1.290, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
["gbin5"]          = { "anim@heists@box_carry@", "idle", "Garbage Bin 5", AnimationOptions = {
  Prop          = "prop_bin_07d",
  PropBone      = 28422,
  PropPlacement = { -0.0100, -0.2200, -0.8600, 0.0, 0.0, 0.0 },
  EmoteLoop     = true,
  EmoteMoving   = true,
} },
['pflag'] = { 'rcmnigel1d', 'base_club_shoulder', 'Pride Flag', AnimationOptions = {
  Prop = 'prideflag1',
  PropBone = 18905,
  PropPlacement = { 0.0800, -0.2090, 0.0900, -82.6677, -141.2988, 12.3308 },
  EmoteLoop = true,
  EmoteMoving = true,
} },
['flagpr'] = { 'rcmnigel1d', 'base_club_shoulder', 'Flag Puerto Rico', AnimationOptions = {
  Prop = 'prideflag9',
  PropBone = 18905,
  PropPlacement = { 0.0800, -0.2090, 0.0900, -82.6677, -141.2988, 12.3308 },
  EmoteLoop = true,
  EmoteMoving = true,
} },

}