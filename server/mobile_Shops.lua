spawnedMobilePeds = {}

CreateThread(function()
    for k, pedInfo in pairs(Mobile.MobileShops) do
        local mobileShopPed = CreatePed(1, pedInfo.Model, pedInfo.Location.xyz, pedInfo.Location.w, true, true)

        Wait(250)
        local cEntity = NetworkGetNetworkIdFromEntity(mobileShopPed)

        spawnedMobilePeds[k] = {
            clientEntity = cEntity,
            shopData = pedInfo,
        }
    end
end)