Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
Config.MinimalDoctors = 2 -- How many players with the ambulance job to prevent the hospital check-in system from being used
Config.WipeInventoryOnRespawn = true -- Enable or disable removing all the players items when they respawn at the hospital
Config.Helicopter = "aw139" -- Helicopter model that players with the ambulance job can use
Config.BillCost = 1000 -- Price that players are charged for using the hospital check-in system
Config.DeathTime = 300 -- How long the timer is for players to bleed out completely and respawn at the hospital
Config.PainkillerInterval = 60 -- Set the length of time painkillers last (per one)
Config.HealthDamage = 5 -- Minumum damage done to health before checking for injuries
Config.ArmorDamage = 5 -- Minumum damage done to armor before checking for injuries
Config.ForceInjury = 35 -- Maximum amount of damage a player can take before limb damage & effects are forced to occur
Config.AlwaysBleedChance = 70 -- Set the chance out of 100 that if a player is hit with a weapon, that also has a random chance, it will cause bleeding
Config.MessageTimer = 12 -- How long it will take to display limb/bleed message
Config.AIHealTimer = 20 -- How long it will take to be healed after checking in, in seconds
Config.BleedTickRate = 30 -- How much time, in seconds, between bleed ticks
Config.BleedMovementTick = 10 -- How many seconds is taken away from the bleed tick rate if the player is walking, jogging, or sprinting
Config.BleedMovementAdvance = 3 -- How much time moving while bleeding adds
Config.BleedTickDamage = 8 -- The base damage that is multiplied by bleed level everytime a bleed tick occurs
Config.FadeOutTimer = 2 -- How many bleed ticks occur before fadeout happens
Config.BlackoutTimer = 10 -- How many bleed ticks occur before blacking out
Config.AdvanceBleedTimer = 10 -- How many bleed ticks occur before bleed level increases
Config.HeadInjuryTimer = 30 -- How much time, in seconds, do head injury effects chance occur
Config.ArmInjuryTimer = 30 -- How much time, in seconds, do arm injury effects chance occur
Config.LegInjuryTimer = 15 -- How much time, in seconds, do leg injury effects chance occur
Config.HeadInjuryChance = 25 -- The chance, in percent, that head injury side-effects get applied
Config.LegInjuryChance = { -- The chance, in percent, that leg injury side-effects get applied
    Running = 50,
    Walking = 15
}
Config.MajorArmoredBleedChance = 45 -- The chance, in percent, that a player will get a bleed effect when taking heavy damage while wearing armor
Config.DamageMinorToMajor = 35 -- How much damage would have to be applied for a minor weapon to be considered a major damage event. Put this at 100 if you want to disable it
Config.AlertShowInfo = 2 -- How many injuries a player must have before being alerted about them

Config.Locations = { -- Edit the various interaction points for players or create new ones

["checking"] = {
    [1] = vector3(-434.13, -326.36, 34.91),
    [2] = vector3(1132.89, 2100.21, 55.79), -- MX TRACK
    [3] = vector3(-180.45, 406.34, 110.77), -- DrSchnippSchnapp
},
["duty"] = {
    [1] = vector3(-432.31, -318.85, 34.91),
    [2] = vector3(-254.88, 6324.5, 32.58),
},
["vehicle"] = {
    [1] = vector4(-492.08, -337.41, 34.37, 353.45),
},
["helicopter"] = {
    [1] = vector4(-447.55, -312.49, 78.17, 203.92),
    [2] = vector4(-475.43, 5988.353, 31.716, 31.34),
},
["armory"] = {
    [1] = vector3(-457.66, -309.92, 34.91),
    [2] = vector3(-245.13, 6315.71, 32.82),
},
["roof"] = {
    [1] = vector4(338.5, -583.85, 74.16, 245.5),
},
["main"] = {
    [1] = vector3(-454.28, -340.11, 34.36),
},
["stash"] = {
    [1] = vector3(-443.67, -310.16, 34.91),
},
["beds"] = {
    [1] = {coords = vector4(-448.27, -283.79, 35.83, 24.77), taken = false, model = 2117668672},
    [2] = {coords = vector4(-451.32, -285.18, 35.83, 22.19), taken = false, model = 2117668672},
    [3] = {coords = vector4(-454.77, -286.71, 35.83, 17.99), taken = false, model = 2117668672},
    -- [4] = {coords = vector4(-460.15, -288.79, 35.83, 20.58), taken = false, model = 2117668672},
    -- [5] = {coords = vector4(-463.45, -290.25, 35.83, 18.17), taken = false, model = 2117668672},
    -- [5] = {coords = vector4(-466.86, -291.58, 35.84, 15.24), taken = false, model = 2117668672},
    -- [2] = {coords = vector4(-470.11, -284.11, 35.84, 203.32), taken = false, model = 2117668672},
    -- [8] = {coords = vector4(-466.57, -282.75, 35.84, 204.53), taken = false, model = 2117668672},
    -- [9] = {coords = vector4(-462.9, -281.04, 35.84, 195.23), taken = false, model = 2117668672},
    -- [10] = {coords = vector4(-459.18, -279.56, 35.84, 193.84), taken = false, model = 2117668672},
    -- [3] = {coords = vector4(-455.15, -277.92, 35.84, 208.75), taken = false, model = 2117668672},
    --DrSchnippSchnapp
    [4] = {coords = vector4(-184.11, 415.18, 111.69, 26.76), taken = false, model = 2117668672},
    [5] = {coords = vector4(1129.92, 2101.77, 56.17, 181.07), taken = false, model = -1838046182},
},
["stations"] = {
    [1] = {label = Lang:t('info.pb_hospital'), coords = vector4(-454.3, -340.33, 34.36, 72.24)}
}
}

Config.AuthorizedVehicles = { -- Vehicles players can use based on their ambulance job grade level
	-- Grade 0
	[0] = {
		["ambulance"] = "Ambulance",
	},
	-- Grade 1
	[1] = {
		["ambulance"] = "Ambulance",
	},
	-- Grade 2
	[2] = {
		["ambulance"] = "Ambulance",
        ["fdnyambo"] = "Ambulance 2",
	},
	-- Grade 3
	[3] = {
		["ambulance"] = "Ambulance",
        ["fdnyambo"] = "Ambulance 2",
	},
	-- Grade 4
	[4] = {
		["ambulance"] = "Ambulance",
        ["bmwexp"] = "Notarzt",
        ["fdnyambo"] = "Ambulance 2",
	},
    -- Grade 5
	[5] = {
		["ambulance"] = "Ambulance",
        ["bmwexp"] = "Notarzt",
        ["fdnyambo"] = "Ambulance 2",
	},
	-- Grade 6
	[6] = {
		["ambulance"] = "Ambulance",
        ["fdnyambo"] = "Ambulance 2",
        ["wheelchair"] = "Rolli",
	},
	-- Grade 7
	[7] = {
		["ambulance"] = "Ambulance",
        ["fdnyambo"] = "Ambulance 2",
        ["wheelchair"] = "Rolli",
	},
	-- Grade 8
	[8] = {
		["ambulance"] = "Ambulance",
        ["bmwexp"] = "Notarzt",
        ["21yuk"] = "Notarzt2",
        ["fdnyambo"] = "Ambulance 2",
        ["wheelchair"] = "Rolli",
	},
	-- Grade 9
	[9] = {
		["ambulance"] = "Ambulance",
        ["bmwexp"] = "Notarzt",
        ["21yuk"] = "Notarzt2",
        ["fdnyambo"] = "Ambulance 2",
        ["wheelchair"] = "Rolli",
	},
    -- Grade 10
	[10] = {
		["ambulance"] = "Ambulance",
        ["bmwexp"] = "Notarzt",
        ["21yuk"] = "Notarzt2",
        ["fdnyambo"] = "Ambulance 2",
        ["wheelchair"] = "Rolli",
	}
}

Config.Items = { -- Items found in the ambulance shop for players with the ambulance job to purchase
    label = Lang:t('info.safe'),
    slots = 30,
    items = {
        [1] = {
            name = "radio",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "bandage",
            price = 7,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "painkillers",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "firstaid",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_flashlight",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapon_fireextinguisher",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "pills",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "lolly",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "ifaks",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "bloodpackl",
            price = 5,
            amount = 500,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "morphium",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "epipen",
            price = 25,
            amount = 500,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "rezepte",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "rezeptb",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "rezeptp",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "rezepta",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "rezeptm",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "rezepti",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "rezepto",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 19,
        },
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    [1] = {label = Lang:t('states.little_bleed')},
    [2] = {label = Lang:t('states.bleed')},
    [3] = {label = Lang:t('states.lot_bleed')},
    [4] = {label = Lang:t('states.big_bleed')},
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089] = 'LFINGER',
    [4090] = 'LFINGER',
    [4137] = 'LFINGER',
    [4138] = 'LFINGER',
    [4153] = 'LFINGER',
    [4154] = 'LFINGER',
    [4169] = 'LFINGER',
    [4170] = 'LFINGER',
    [4185] = 'LFINGER',
    [4186] = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108] = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]]--
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]]--
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]]--
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]]--
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]--
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'], -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'], -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]--
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]]--
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]]--
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]]--
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]--
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'], -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]--
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]--
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'], -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ["car1"] = { -- Model name
        ["extras"] = {
            ["1"] = false, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["car2"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    }
}