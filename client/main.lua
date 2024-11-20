QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('ambience:client:CreatePatrolRoute', function(clientTarget, routeInfo)
    OpenPatrolRoute('miss_Tower_01')

    AddPatrolRouteNode(1, "WORLD_HUMAN_SMOKING", routeInfo[1].x, routeInfo[1].y, routeInfo[1].z, 0.0, 0.0, 0.0, 5000)
    AddPatrolRouteNode(2, "WORLD_HUMAN_SMOKING", routeInfo[2].x, routeInfo[2].y, routeInfo[2].z, 0.0, 0.0, 0.0, 5000)
    AddPatrolRouteNode(3, "WORLD_HUMAN_SMOKING", routeInfo[3].x, routeInfo[3].y, routeInfo[3].z, 0.0, 0.0, 0.0, 5000)
    AddPatrolRouteNode(4, "WORLD_HUMAN_SMOKING", routeInfo[4].x, routeInfo[4].y, routeInfo[4].z, 0.0, 0.0, 0.0, 5000)
    AddPatrolRouteNode(5, "WORLD_HUMAN_SMOKING", routeInfo[5].x, routeInfo[5].y, routeInfo[5].z, 0.0, 0.0, 0.0, 5000)

    AddPatrolRouteLink(1, 2)
    AddPatrolRouteLink(2, 3)
    AddPatrolRouteLink(3, 4)
    AddPatrolRouteLink(4, 5)
    AddPatrolRouteLink(5, 1)

    ClosePatrolRoute()
    CreatePatrolRoute()

    TaskPatrol(clientTarget, 'miss_Tower_01', true)
end)