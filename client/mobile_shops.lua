if Mobile.UseMobileShops then
    CreateThread(function()
        Wait(10000)
        local mobileShopInfo = lib.callback.await('ambience:server:GatherMobileShops', false)

        for k, v in pairs(mobileShopInfo) do
            Wait(500)
            local clientTarget = NetworkGetEntityFromNetworkId(v.clientEntity)

            SetEntityInvincible(clientTarget, true)
            SetBlockingOfNonTemporaryEvents(clientTarget, true)

            TriggerEvent('ambience:client:CreatePatrolRoute', clientTarget, v.shopData.Route)

            if v.shopData.StoreType == "Buying" then
                exports.ox_target:addLocalEntity(clientTarget,  {
                    {
                        label = "Buy "..k,
                        icon = 'fa-solid fa-cart-shopping',
                        name = k,
                        onSelect = function()
                            Wait(100)

                            PlayPedAmbientSpeechNative(clientTarget, 'GENERIC_HI', 'Speech_Params_Force')
                            exports.ox_inventory:openInventory('shop', { 
                                type = k,
                            })
                        end,
                    }
                })
            elseif v.shopData.StoreType == "Selling" then
                exports.ox_target:addLocalEntity(clientTarget,  {
                    {
                        label = "Sell "..k,
                        icon = 'fa-solid fa-sack-dollar',
                        onSelect = function()
                            Wait(100)

                            PlayPedAmbientSpeechNative(clientTarget, 'GENERIC_HI', 'Speech_Params_Force')
                            exports.ox_inventory:openInventory('stash', k)
                        end,
                    }
                })
            end
        end
    end)
end