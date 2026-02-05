--- STEAMODDED HEADER
--- MOD_NAME: VICTORIS
--- MOD_ID: VICTORIS
--- PREFIX: vic
--- MOD_AUTHOR: [Your Name]
--- MOD_DESCRIPTION: Put your dicription here :)
local VICTORIS  = SMODS.current_mod
local config = VICTORIS.config

function VICTORIS.config_tab()
local vertical_tabs = {}
    return {n=G.UIT.ROOT, config = {padding = 0.0, colour = G.C.BLACK}, nodes = {
		{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0, padding = 0.04 }, nodes = {
        create_option_cycle({label = 'Amber Acorn', current_option = VICTORIS.config.vic_aa, options = {'Off', 'Showdown', 'Whole Ante'}, ref_table = VICTORIS.config, ref_value = 'vic_aa', text_scale=0.5*0.65/(5/6), scale=5/6, no_pips = true, opt_callback = 'cycle_update'}),
        create_option_cycle({label = 'Verdant Leaf', current_option = VICTORIS.config.vic_vl, options = {'Off', 'Showdown', 'Whole Ante'}, ref_table = VICTORIS.config, ref_value = 'vic_vl', text_scale=0.5*0.65/(5/6), scale=5/6, no_pips = true, opt_callback = 'cycle_update'}),
        create_option_cycle({label = 'Violet Vessel', current_option = VICTORIS.config.vic_vv, options = {'Off', 'Showdown', 'Whole Ante'}, ref_table = VICTORIS.config, ref_value = 'vic_vv', text_scale=0.5*0.65/(5/6), scale=5/6, no_pips = true, opt_callback = 'cycle_update'}),
        create_option_cycle({label = 'Crimson Heart', current_option = VICTORIS.config.vic_ch, options = {'Off', 'Showdown', 'Whole Ante'}, ref_table = VICTORIS.config, ref_value = 'vic_ch', text_scale=0.5*0.65/(5/6), scale=5/6, no_pips = true, opt_callback = 'cycle_update'}),
        create_option_cycle({label = 'Cerulean Bell', current_option = VICTORIS.config.vic_cb, options = {'Off', 'Showdown', 'Whole Ante'}, ref_table = VICTORIS.config, ref_value = 'vic_cb', text_scale=0.5*0.65/(5/6), scale=5/6, no_pips = true, opt_callback = 'cycle_update'})
    }},
    }}
end

function VICTORIS.save_config(self)
    SMODS.save_mod_config(self)
end

--if SMODS.Atlas then
--  SMODS.Atlas({
--    key = "modicon",
--    path = "icon.png",
--    px = 34,
--    py = 34
--  })
--end

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    sync = false,
    key = "music_acorn",
    path = "music_acorn.ogg",
    select_music_track = function()
        local check2 = G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind.config.blind.key == "bl_final_acorn"
        local check3 = G.GAME and G.GAME.round_resets.blind_choices.Boss == "bl_final_acorn"
        if config.vic_vl == 1 then return false
        elseif config.vic_vl == 2 then return check2 and 2 or false
        elseif config.vic_vl == 3 then return check3 and 2 or false end
    end
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    sync = false,
    key = "music_leaf",
    path = "music_leaf.ogg",
    select_music_track = function()
        local check2 = G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind.config.blind.key == "bl_final_leaf"
        local check3 = G.GAME and G.GAME.round_resets.blind_choices.Boss == "bl_final_leaf"
        if config.vic_vl == 1 then return false
        elseif config.vic_vl == 2 then return check2 and 2 or false
        elseif config.vic_vl == 3 then return check3 and 2 or false end
    end
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    sync = false,
    key = "music_vessel",
    path = "music_vessel.ogg",
    select_music_track = function()
        local check2 = G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind.config.blind.key == "bl_final_vessel"
        local check3 = G.GAME and G.GAME.round_resets.blind_choices.Boss == "bl_final_vessel"
        if config.vic_vl == 1 then return false
        elseif config.vic_vv == 2 then return check2 and 2 or false
        elseif config.vic_vv == 3 then return check3 and 2 or false end
    end
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    sync = false,
    key = "music_heart",
    path = "music_heart.ogg",
    select_music_track = function()
        local check2 = G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind.config.blind.key == "bl_final_heart"
        local check3 = G.GAME and G.GAME.round_resets.blind_choices.Boss == "bl_final_heart"
        if config.vic_vl == 1 then return false
        elseif config.vic_ch == 2 then return check2 and 2 or false
        elseif config.vic_ch == 3 then return check3 and 2 or false end
    end
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    sync = false,
    key = "music_bell",
    path = "music_bell.ogg",
    select_music_track = function()
        local check2 = G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind.config.blind.key == "bl_final_bell"
        local check3 = G.GAME and G.GAME.round_resets.blind_choices.Boss == "bl_final_bell"
        if config.vic_vl == 1 then return false
        elseif config.vic_cb == 2 then return check2 and 2 or false
        elseif config.vic_cb == 3 then return check3 and 2 or false end
    end
})
