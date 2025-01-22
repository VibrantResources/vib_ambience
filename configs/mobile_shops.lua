Mobile = Mobile or {}

Mobile.MobileShops = {
    ["Illegal guns"] = {
        StoreType = "Buying", -- Buying = You buy items / Selling = You sell items
        Model = "s_m_y_grip_01",
        Location = vector4(-1315.94, -1412.28, 3.31, 60.18),
        BlipInfo = {
            Active = false,
            BlipName = "Electrical Goods",
            Sprite = 544,
            Scale = 0.7,
            Colour = 10,
        },
        -- These are the points the guard will walk to during the patrol route. Start at [1], going to the last one then heading back to [1] before starting again
        -- I advise that each point isn't too far from another as pathing can be weird
        Route = {
            [1] = vector3(-1326.17, -1408.7, 4.31), 
            [2] = vector3(-1341.45, -1412.19, 4.31),
            [3] = vector3(-1346.02, -1424.25, 4.31),
            [4] = vector3(-1338.15, -1426.47, 4.31),
            [5] = vector3(-1332.7, -1417.37, 4.31),
        },
        AvailableStock = {
            { name = 'weapon_pistol', price = math.random(150, 240), currency = 'money', count = 5},
        },
        ScenarioToPlaye = "HUMAN_WORLD_COFFEE",
    },
}