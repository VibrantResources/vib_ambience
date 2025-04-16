Shops = Shops or {}

Shops.StaticShops = {
    ["Electrical Goods"] = {
        StoreType = "Buying", -- Buying = You buy items / Selling = You sell items
        Model = "s_m_y_grip_01",
        Location = vector4(-1271.74, -1411.37, 3.37, 103.21),
        BlipInfo = {
            Active = false,
            BlipName = "Electrical Goods",
            Sprite = 544,
            Scale = 0.7,
            Colour = 10,
        },
        AvailableStock = {
            { name = 'phone', price = math.random(150, 240), currency = 'money', count = 12},
            { name = 'radio', price = math.random(80, 120), currency = 'money', count = 10},
            { name = 'vpn', price = math.random(375, 625), currency = 'money', count = 8},
        },
        AnimInfo = {
            Active = true,
            Dict = "amb@world_human_tourist_map@male@base",
            Clip = "base",
        },
        PropInfo = {
            Active = true,
            PropModel = "prop_cs_tablet",
            Bone = 28422,
            Placement = {
                x = 0.0,
                y = -0.03,
                z = 0.0,
                xRot = 20.0,
                yRot = -90.0,
                zRot = 0.0,
            },
        },
    },
    ["Bags"] = {
        StoreType = "Buying",
        Model = "s_f_y_sweatshop_01",
        Location = vector4(712.95, -971.35, 29.39, 358.42),
        BlipInfo = {
            Active = true,
            BlipName = "Bags",
            Sprite = 586,
            Scale = 0.7,
            Colour = 2,
        },
        AvailableStock = {
            { name = 'jewellery_bag', price = math.random(500, 1000), currency = 'money'},
            { name = 'gem_bag', price = math.random(500, 1000), currency = 'money'},
            { name = 'mining_bag', price = math.random(500, 1000), currency = 'money'},
            { name = 'wallet', price = math.random(100, 250), currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "anim@amb@drug_field_workers@rake@male_a@idles",
            Clip = "idle_b",
        },
        PropInfo = {
            Active = true,
            PropModel = "prop_tool_broom",
            Bone = 28422,
            Placement = {
                x = -0.01,
                y = 0.04,
                z = -0.03,
                xRot = 0.0,
                yRot = 0.0,
                zRot = 0.0,
            },
        },
    },
    ["Hunting Supplies"] = {
        StoreType = "Buying",
        Model = "a_m_m_hillbilly_01",
        Location = vector4(2310.36, 4885.12, 40.8, 49.96),
        BlipInfo = {
            Active = true,
            BlipName = "Hunting Supplies",
            Sprite = 463,
            Scale = 0.7,
            Colour = 5,
        },
        AvailableStock = {
            { name = 'weapon_knife', price = math.random(125, 165), currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "anim@heists@heist_corona@single_team",
            Clip = "single_team_loop_boss",
        },
        PropInfo = {
            Active = false,
            PropModel = "",
            Bone = 0,
            Placement = {
                x = 0.0,
                y = 0.0,
                z = 0.0,
                xRot = 0.0,
                yRot = 0.0,
                zRot = 0.0,
            },
        },
    },    
    ["Minerals"] = {
        StoreType = "Selling",
        Model = "a_m_m_hillbilly_01",
        Location = vector4(182.54, 2795.44, 44.65, 299.55),
        BlipInfo = {
            Active = true,
            BlipName = "Minerals",
            Sprite = 588,
            Scale = 0.7,
            Colour = 2,
        },
        SellableItems = {
            refined_copper = math.random(200, 250),
            refined_tin = math.random(265, 315),
            refined_iron = math.random(340, 390),
            refined_silver = math.random(425, 465),
            refined_gold = math.random(500, 550),
        },
        AnimInfo = {
            Active = true,
            Dict = "missfam4",
            Clip = "base",
        },
        PropInfo = {
            Active = true,
            PropModel = "p_amb_clipboard_01",
            Bone = 36029,
            Placement = {
                x = 0.16,
                y = 0.08,
                z = 0.10,
                xRot = -130.0,
                yRot = -50.0,
                zRot = 0.0,
            },
        },
    },
    ["Weed Supplies"] = {
        StoreType = "Buying",
        Model = "a_m_y_beach_01",
        Location = vector4(-1248.56, -1448.97, 3.37, 56.73),
        BlipInfo = {
            Active = true,
            BlipName = "Weed Supplies",
            Sprite = 140,
            Scale = 0.7,
            Colour = 2,
        },
        AvailableStock = {
            { name = 'weedplant_seedm', price = math.random(500, 1250), currency = 'money'},
            { name = 'weedplant_seedf', price = math.random(1000, 2250), currency = 'money'},
            { name = 'plant_tub', price = math.random(5, 10), currency = 'money'},
            { name = 'watering_can', price = math.random(5, 15), currency = 'money'},
            { name = 'plant_nutrition', price = math.random(2, 10), currency = 'money'},
            { name = 'bong', price = math.random(180, 290), currency = 'money'},
            { name = 'ocb_paper', price = math.random(1, 2), currency = 'money'},
            { name = 'og_kush_bag', price = math.random(5, 10), currency = 'money'},
            { name = 'blue_dream_bag', price = math.random(5, 10), currency = 'money'},
            { name = 'purple_haze_bag', price = math.random(5, 10), currency = 'money'},
            { name = 'banana_kush_bag', price = math.random(5, 10), currency = 'money'},
            { name = 'empty_baggy', price = math.random(1, 2), currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "anim@heists@box_carry@",
            Clip = "idle",
        },
        PropInfo = {
            Active = true,
            PropModel = "bkr_prop_weed_01_small_01c",
            Bone = 60309,
            Placement = {
                x = 0.138,
                y = -0.05,
                z = 0.23,
                xRot = -50.0,
                yRot = 290.0,
                zRot = 0.0,
            },
        },
    },
    ["Mining Supplies"] = {
        StoreType = "Buying",
        Model = "s_m_y_dockwork_01",
        Location = vector4(296.47, 2864.46, 42.64, 276.99),
        BlipInfo = {
            Active = true,
            BlipName = "Mining Supplies",
            Sprite = 588,
            Scale = 0.7,
            Colour = 2,
        },
        AvailableStock = {
            { name = 'pickaxe', price = math.random(250, 650), currency = 'money'},
            { name = 'mining_drill', price = math.random(1800, 3500), currency = 'money'},
            { name = 'mining_laser', price = math.random(8500, 15000), currency = 'money'},
            { name = 'drill_bit', price = math.random(4,  24), currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "melee@large_wpn@streamed_core",
            Clip = "ground_attack_on_spot",
        },
        PropInfo = {
            Active = true,
            PropModel = "prop_tool_pickaxe",
            Bone = 57005,
            Placement = {
                x = 0.08,
                y = -0.40,
                z = -0.10,
                xRot = 80.0,
                yRot = -20.0,
                zRot = 175.0,
            },
        },
    },
    ["Documentation"] = {
        StoreType = "Buying",
        StoreName = "Documents",
        Model = "a_f_y_business_01",
        Location = vector4(-542.73, -196.12, 37.22, 84.65),
        BlipInfo = {
            Active = true,
            BlipName = "Documentation",
            Sprite = 438,
            Scale = 0.7,
            Colour = 3,
        },
        AvailableStock = {
            { name = 'id_card', price = 85, currency = 'money'},
            { name = 'driver_license', price = 65, currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "missfam4",
            Clip = "base",
        },
        PropInfo = {
            Active = true,
            PropModel = "p_amb_clipboard_01",
            Bone = 36029,
            Placement = {
                x = 0.16,
                y = 0.08,
                z = 0.10,
                xRot = -130.0,
                yRot = -50.0,
                zRot = 0.0,
            },
        },
    },
    ["Fishing Supplies"] = {
        StoreType = "Buying",
        StoreName = "Fishing Supplies",
        Model = "a_m_m_hillbilly_01",
        Location = vector4(2224.39, 4582.52, 30.31, 115.88),
        BlipInfo = {
            Active = true,
            BlipName = "Fishing Supplies",
            Sprite = 317,
            Scale = 0.7,
            Colour = 3,
        },
        AvailableStock = {
            { name = 'fishingpole', price = 85, currency = 'money'},
            { name = 'worm_bait', price = 1, currency = 'money'},
            { name = 'spinnerbait', price = 4, currency = 'money'},
            { name = 'softplasticbait', price = 7, currency = 'money'},
            { name = 'plugbait', price = 10, currency = 'money'},
        },
        AnimInfo = {
            Active = true,
            Dict = "timetable@ron@ig_3_couch",
            Clip = "base",
        },
        PropInfo = {
            Active = true,
            PropModel = "pprp_icefishing_box_02",
            Bone = 0,
            Placement = {
                x = -0.05,
                y = 0.0,
                z = -0.60,
                xRot = 7.0,
                yRot = 0.0,
                zRot = 180.0,
            },
        },
    },
    ["Fish Market"] = {
        StoreType = "Selling",
        StoreName = "Fishing Market",
        Model = "s_m_m_trucker_01",
        Location = vector4(2220.06, 4574.41, 29.89, 144.12),
        BlipInfo = {
            Active = true,
            BlipName = "Fishing Market",
            Sprite = 277,
            Scale = 0.7,
            Colour = 3,
        },
        SellableItems = {
            flounder = math.random(14, 18),
            reddrum = math.random(14, 18),
            tuna_fish = math.random(14, 18),

            largemouthbass = math.random(18, 22),
            panfish = math.random(18, 22),
            trout = math.random(18, 22),

            catfish = math.random(22, 26),
            whitebass = math.random(22, 26),
            salmon = math.random(22, 26),

            steelhead = math.random(24, 30),
            bluefish = math.random(24, 30),
            halibut = math.random(24, 30),
        },
        AnimInfo = {
            Active = true,
            Dict = "amb@world_human_stand_fishing@idle_a",
            Clip = "idle_a",
        },
        PropInfo = {
            Active = true,
            PropModel = "prop_fishing_rod_01",
            Bone = 60309,
            Placement = {
                x = 0.0,
                y = 0.0,
                z = 0.0,
                xRot = 0.0,
                yRot = 0.0,
                zRot = 0.0,
            },
        },
    },
    ["Illegal Sales"] = {
        StoreType = "Selling",
        StoreName = "Blackmarket Dealer",
        Model = "s_m_y_dealer_01",
        Location = vector4(-380.65, -2682.78, 5.0, 307.62),
        BlipInfo = {
            Active = false,
            BlipName = "Blackmarket Dealer",
            Sprite = 277,
            Scale = 0.7,
            Colour = 3,
        },
        SellableItems = {
            artwork = math.random(25, 70),
            boombox = math.random(40, 85),
            md_speakers = math.random(25, 60),
            md_tablet = math.random(30, 65),
            md_desktop = math.random(50, 130),
            md_monitor = math.random(40, 115),
            laptop = math.random(40, 115),
            phone = math.random(20, 45),
            tablet = math.random(15, 40),
            house_laptop = math.random(250, 475),
            mansion_laptop = math.random(425, 750),
            checkbook = math.random(15, 35)
        },
        AnimInfo = {
            Active = true,
            Dict = "amb@world_human_aa_smoke@male@idle_a",
            Clip = "idle_c",
        },
        PropInfo = {
            Active = true,
            PropModel = "prop_cs_ciggy_01",
            Bone = 28422,
            Placement = {
                x = 0.0,
                y = 0.0,
                z = 0.0,
                xRot = 0.0,
                yRot = 0.0,
                zRot = 0.0,
            },
        },
    },
}