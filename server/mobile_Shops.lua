spawnedMobilePeds = {}

if Mobile.UseMobileShops then
    CreateThread(function()
        for k, pedInfo in pairs(Mobile.MobileShops) do
            local mobileShopPed = CreatePed(1, pedInfo.Model, pedInfo.Location.xyz, pedInfo.Location.w, true, true)
            local cEntity = nil

            repeat 
                cEntity = NetworkGetNetworkIdFromEntity(mobileShopPed)
            until cEntity ~= nil

            print("This is the set cEntity: "..cEntity.." for shop: "..k)
            spawnedMobilePeds[k] = {
                clientEntity = cEntity,
                shopData = pedInfo,
            }
        end
    end)
end