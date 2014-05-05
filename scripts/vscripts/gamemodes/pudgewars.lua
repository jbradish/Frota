-- Pudge Wars
RegisterGamemode('pudgewars', {
    -- Gamemode only has a gameplay component
    sort = GAMEMODE_PICK,

    -- Function to give out heroes
    assignHero = function(frota, ply)
        local playerID = ply:GetPlayerID()

        -- Change heroes
        local hero = PlayerResource:ReplaceHeroWith(playerID, 'npc_dota_hero_pudge', 2500, 2600)
        frota:SetActiveHero(hero)

        -- Apply custom Puck skills
        frota:ApplyBuild(hero, {
            [1] = 'pure_skill_meat_hook',
            [2] = 'puckwars_waning_rift',
            [3] = 'puckwars_phase_shift',
            [4] = 'puck_ethereal_jaunt',
            [5] = 'puckwars_dream_coil'
        })
    end,

    -- DM Mode changed our hero
    dmNewHero = function(frota, hero)
        -- Change skills
        frota:ApplyBuild(hero, {
            [1] = 'puck_illusory_orb',
            [2] = 'puckwars_waning_rift',
            [3] = 'puckwars_phase_shift',
            [4] = 'puck_ethereal_jaunt',
            [5] = 'puckwars_dream_coil'
        })
    end
})
