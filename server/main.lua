QBCore = exports["qb-core"]:GetCoreObject()

local swapHook = exports.ox_inventory:registerHook('swapItems', function(payload)
    if payload.toType == 'player' then
        return
    end

    if payload.toInventory == GetStoreName(payload.toInventory) then
        local itemName = payload.fromSlot.name
        local itemPrice = getItemPrice(itemName, payload)

        if not itemPrice then
            return
        end

        -- TriggerClientEvent('ox_inventory:closeInventory', payload.source)

        CreateThread(function()
            Wait(250)
            if exports.ox_inventory:RemoveItem(payload.toInventory, itemName, payload.count) then  
                exports.ox_inventory:AddItem(payload.source, 'money', (itemPrice * payload.count))
            end 
        end)
    end
end)

CreateThread(function()
    for k, v in pairs(Config.StaticShops) do
        if v.StoreType == "Buying" then
            exports.ox_inventory:RegisterShop(k, {
                name = k,
                inventory = v.AvailableStock,
            })
        elseif v.StoreType == "Selling" then
            exports.ox_inventory:RegisterStash(k, "Sell "..k, 10, 50000)
        end
    end
end)

function getItemPrice(itemName, payload)
    local foundItemPrice = Config.StaticShops[payload.toInventory].SellableItems[itemName]

    if foundItemPrice == nil then
        lib.notify(payload.source,{
            title = 'Store Owner',
            description = "I'm not willing to buy that from you, come back when you have something I can use",
            type = 'error'
        }) 

        return
    else
        return foundItemPrice
    end
end

function GetStoreName(storeName)
    for k, v in pairs(Config.StaticShops) do
        if k == storeName then
            
            return storeName
        end
    end
end