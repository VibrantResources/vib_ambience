-- CreateThread(function()
--     for _, pedInfo in pairs(Config.RotatingShops) do
--         local pedModel = lib.requestModel(pedInfo.Model)

--         local shopPed = CreatePed(1, pedModel, pedInfo.Location.xyz, pedInfo.Location.w, false, false)

--         FreezeEntityPosition(shopPed, true)
--         SetEntityInvincible(shopPed, true)
--         SetBlockingOfNonTemporaryEvents(shopPed, true)

--         if pedInfo.BlipInfo.Active then
--             local shopBlip = AddBlipForCoord(pedInfo.Location.x, pedInfo.Location.y, pedInfo.Location.z)

--             SetBlipSprite(shopBlip, pedInfo.BlipInfo.Sprite)
--             SetBlipDisplay(shopBlip, 4)
--             SetBlipScale(shopBlip, pedInfo.BlipInfo.Scale)
--             SetBlipColour(shopBlip, pedInfo.BlipInfo.Colour)
--             SetBlipAsShortRange(shopBlip, true)
--             BeginTextCommandSetBlipName('STRING')
--             AddTextComponentString(pedInfo.BlipInfo.BlipName)
--             EndTextCommandSetBlipName(shopBlip)
--         end

--         if pedInfo.AnimInfo.Active then
--             lib.requestAnimDict(pedInfo.AnimInfo.Dict)
--             TaskPlayAnim(shopPed, pedInfo.AnimInfo.Dict, pedInfo.AnimInfo.Clip, 4.0, 4.0, -1, 1, false, false, false, false)
--         end

--         if pedInfo.SceneInfo.Active then
--             TaskStartScenarioInPlace(shopPed, pedInfo.SceneInfo.Scenario, -1, true)
--         end

--         if pedInfo.StoreType == "Buying" then
--             exports.ox_target:addLocalEntity(shopPed, {
--                 {
--                     label = "Shop "..pedInfo.StoreName,
--                     event = 'ambient:client:BuyingMenu',
--                     args = pedInfo,
--                     icon = 'fa-solid fa-basket-shopping',
--                     iconColor = "green",
--                     distance = 1.5,
--                 }
--             })
--         elseif pedInfo.StoreType == "Selling" then
--             exports.ox_target:addLocalEntity(shopPed, {
--                 {
--                     label = "Sell "..pedInfo.StoreName,
--                     event = 'ambient:client:SellingMenu',
--                     args = pedInfo,
--                     icon = 'fa-solid fa-basket-shopping',
--                     iconColor = "green",
--                     distance = 1.5,
--                 }
--             })
--         end
--         SetModelAsNoLongerNeeded(pedModel)
--     end
-- end)