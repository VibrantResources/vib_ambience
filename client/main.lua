QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('ambience:client:CreatePatrolRoute', function(clientTarget, routeInfo)
    OpenPatrolRoute('miss_Tower_01')

    for i=1, #routeInfo do
        AddPatrolRouteNode(i, "WORLD_HUMAN_SMOKING", routeInfo[i].x, routeInfo[i].y, routeInfo[i].z, 0.0, 0.0, 0.0, 5000)
    end

    for i=1, #routeInfo do
        if i == math.max(#routeInfo) then
            AddPatrolRouteLink(i, math.min(#routeInfo))
        else
            AddPatrolRouteLink(i, i+1)
        end
    end

    ClosePatrolRoute()
    CreatePatrolRoute()

    TaskPatrol(clientTarget, 'miss_Tower_01', true)
end)