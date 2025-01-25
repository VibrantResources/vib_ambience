CreateThread(function()
    for k, v in pairs(Shops.StaticShops) do
        local pedModel = lib.requestModel(v.Model, 60000)

        local shopPed = CreatePed(1, pedModel, v.Location.xyz, v.Location.w, false, false)

        FreezeEntityPosition(shopPed, true)
        SetEntityInvincible(shopPed, true)
        SetBlockingOfNonTemporaryEvents(shopPed, true)

        if v.BlipInfo.Active then
            local shopBlip = AddBlipForCoord(v.Location.x, v.Location.y, v.Location.z)

            SetBlipSprite(shopBlip, v.BlipInfo.Sprite)
            SetBlipDisplay(shopBlip, 4)
            SetBlipScale(shopBlip, v.BlipInfo.Scale)
            SetBlipColour(shopBlip, v.BlipInfo.Colour)
            SetBlipAsShortRange(shopBlip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(v.BlipInfo.BlipName)
            EndTextCommandSetBlipName(shopBlip)
        end

        if v.AnimInfo.Active then
            lib.requestAnimDict(v.AnimInfo.Dict)
            TaskPlayAnim(shopPed, v.AnimInfo.Dict, v.AnimInfo.Clip, 4.0, 4.0, -1, 1, false, false, false, false)
            RemoveAnimDict(v.AnimInfo.Dict)
        end

        if v.PropInfo.Active then
            local placement = v.PropInfo.Placement
            lib.RequestModel(v.PropInfo.PropModel)
            local propModel = CreateObject(v.PropInfo.PropModel, v.Location.xyz, false, true, false)
            AttachEntityToEntity(propModel, shopPed, GetPedBoneIndex(shopPed, v.PropInfo.Bone), placement.x, placement.y, placement.z, placement.xRot, placement.yRot, placement.zRot, true, true, false, true, 1, true)
            SetModelAsNoLongerNeeded(v.PropInfo.PropModel)
        end

        if v.StoreType == "Buying" then
            exports.ox_target:addLocalEntity(shopPed,  {
                {
                    label = "Buy "..k,
                    icon = 'fa-solid fa-cart-shopping',
                    name = k,
                    onSelect = function()
                        Wait(100)
                        PlayPedAmbientSpeechNative(shopPed, 'GENERIC_HI', 'Speech_Params_Force')
                        exports.ox_inventory:openInventory('shop', { type = k})
                    end,
                }
            })
        elseif v.StoreType == "Selling" then
            exports.ox_target:addLocalEntity(shopPed,  {
                {
                    label = "Sell "..k,
                    icon = 'fa-solid fa-sack-dollar',
                    onSelect = function()
                        Wait(100)
                        PlayPedAmbientSpeechNative(shopPed, 'GENERIC_HI', 'Speech_Params_Force')
                        exports.ox_inventory:openInventory('stash', k)
                    end,
                }
            })
        end

        SetModelAsNoLongerNeeded(pedModel)
    end
end)