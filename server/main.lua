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
                exports.ox_inventory:AddItem(payload.source, Config.CoreInfo.MoneyItem, (itemPrice * payload.count))
            end 
        end)
    end
end)

function getItemPrice(itemName, payload)
    local foundItemPrice = Shops.StaticShops[payload.toInventory].SellableItems[itemName]

    if foundItemPrice == nil then
        lib.notify(payload.source,{
            title = 'Store Owner',
            description = "I'm not willing to buy that from you, come back when you have something I can use",
            type = 'error'
        }) 

        return
    end

    return foundItemPrice
end

function GetStoreName(storeName)
    for k, v in pairs(Shops.StaticShops) do
        if k == storeName then
            
            return storeName
        end
    end

    if Mobile.UseMobileShops then
        for k, v in pairs(Mobile.MobileShops) do
            if k == storeName then
                
                return storeName
            end
        end
    end
end