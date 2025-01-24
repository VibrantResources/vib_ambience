CreateThread(function()
    for k, v in pairs(Shops.StaticShops) do
        if v.StoreType == "Buying" then
            exports.ox_inventory:RegisterShop(k, {
                name = k,
                inventory = v.AvailableStock,
            })
        elseif v.StoreType == "Selling" then
            exports.ox_inventory:RegisterStash(k, "Sell "..k, 10, 50000)
        end
    end

    if Mobile.UseMobileShops then
        for k, v in pairs(Mobile.MobileShops) do
            if v.StoreType == "Buying" then
                exports.ox_inventory:RegisterShop(k, {
                    name = k,
                    inventory = v.AvailableStock,
                })
            elseif v.StoreType == "Selling" then
                exports.ox_inventory:RegisterStash(k, "Sell "..k, 10, 50000)
            end
        end
    end
end)