CreateThread(function()
    for k, pedInfo in pairs(Config.StaticShops) do
        local pedModel = lib.requestModel(pedInfo.Model, 60000)

        local shopPed = CreatePed(1, pedModel, pedInfo.Location.xyz, pedInfo.Location.w, false, false)

        FreezeEntityPosition(shopPed, true)
        SetEntityInvincible(shopPed, true)
        SetBlockingOfNonTemporaryEvents(shopPed, true)

        if pedInfo.BlipInfo.Active then
            local shopBlip = AddBlipForCoord(pedInfo.Location.x, pedInfo.Location.y, pedInfo.Location.z)

            SetBlipSprite(shopBlip, pedInfo.BlipInfo.Sprite)
            SetBlipDisplay(shopBlip, 4)
            SetBlipScale(shopBlip, pedInfo.BlipInfo.Scale)
            SetBlipColour(shopBlip, pedInfo.BlipInfo.Colour)
            SetBlipAsShortRange(shopBlip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(pedInfo.BlipInfo.BlipName)
            EndTextCommandSetBlipName(shopBlip)
        end

        if pedInfo.AnimInfo.Active then
            lib.requestAnimDict(pedInfo.AnimInfo.Dict)
            TaskPlayAnim(shopPed, pedInfo.AnimInfo.Dict, pedInfo.AnimInfo.Clip, 4.0, 4.0, -1, 1, false, false, false, false)
            RemoveAnimDict(pedInfo.AnimInfo.Dict)
        end

        if pedInfo.PropInfo.Active then
            local placement = pedInfo.PropInfo.Placement
            lib.RequestModel(pedInfo.PropInfo.PropModel)
            local propModel = CreateObject(pedInfo.PropInfo.PropModel, pedInfo.Location.xyz, false, true, false)
            AttachEntityToEntity(propModel, shopPed, GetPedBoneIndex(shopPed, pedInfo.PropInfo.Bone), placement.x, placement.y, placement.z, placement.xRot, placement.yRot, placement.zRot, true, true, false, true, 1, true)
            SetModelAsNoLongerNeeded(pedInfo.PropInfo.PropModel)
        end

        if pedInfo.StoreType == "Buying" then
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
        elseif pedInfo.StoreType == "Selling" then
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