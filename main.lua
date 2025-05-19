local QBCore = exports['qb-core']:GetCoreObject()
local bmx = nil
local scorcher = nil
local cruiser = nil

RegisterNetEvent('bmx')
AddEventHandler('bmx', function()
    if not DoesEntityExist(bmx) then
        local bikeModel = 'bmx'
        RequestModel(bikeModel)
        while not HasModelLoaded(bikeModel) do
            Citizen.Wait(0)
        end
        bmx = CreateVehicle(bikeModel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
        SetVehicleOnGroundProperly(bmx)
        SetVehicleNumberPlateText(bmx, "deployed".. math.random(9))
        SetPedIntoVehicle(PlayerPedId(), bmx, -1)
        SetModelAsNoLongerNeeded(bikeModel)
        local bikePlate = GetVehicleNumberPlateText(bmx)
        TriggerEvent("vehiclekeys:client:SetOwner", bikePlate)
        SetVehicleEngineOn(bmx, true, true)
        exports['LegacyFuel']:SetFuel(bmx, 100)
    elseif DoesEntityExist(bmx) and #(GetEntityCoords(bmx) - GetEntityCoords(PlayerPedId())) < 3.0 and GetPedInVehicleSeat(bmx,-1) == 0 then
        DeleteVehicle(bmx)
        bmx = nil
    else
        QBCore.Functions.Notify("Too far from the bike or someone is sitting on it")
    end
end)

RegisterNetEvent('scorcher')
AddEventHandler('scorcher', function()
    if not DoesEntityExist(scorcher) then
        local bikeModel = 'scorcher'
        RequestModel(bikeModel)
        while not HasModelLoaded(bikeModel) do
            Citizen.Wait(0)
        end
        scorcher = CreateVehicle(bikeModel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
        SetVehicleOnGroundProperly(scorcher)
        SetVehicleNumberPlateText(scorcher, "deployed".. math.random(9))
        SetPedIntoVehicle(PlayerPedId(), scorcher, -1)
        SetModelAsNoLongerNeeded(bikeModel)
        local bikePlate = GetVehicleNumberPlateText(scorcher)
        TriggerEvent("vehiclekeys:client:SetOwner", bikePlate)
        SetVehicleEngineOn(scorcher, true, true)
        exports['LegacyFuel']:SetFuel(scorcher, 100)
    elseif DoesEntityExist(scorcher) and #(GetEntityCoords(scorcher) - GetEntityCoords(PlayerPedId())) < 3.0 and GetPedInVehicleSeat(scorcher,-1) == 0 then
        DeleteVehicle(scorcher)
        scorcher = nil
    else
        QBCore.Functions.Notify("Too far from the bike or someone is sitting on it")
    end
end)

RegisterNetEvent('cruiser')
AddEventHandler('cruiser', function()
    if not DoesEntityExist(cruiser) then
        local bikeModel = 'cruiser'
        RequestModel(bikeModel)
        while not HasModelLoaded(bikeModel) do
            Citizen.Wait(0)
        end
        cruiser = CreateVehicle(bikeModel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
        SetVehicleOnGroundProperly(cruiser)
        SetVehicleNumberPlateText(cruiser, "deployed".. math.random(9))
        SetPedIntoVehicle(PlayerPedId(), cruiser, -1)
        SetModelAsNoLongerNeeded(bikeModel)
        local bikePlate = GetVehicleNumberPlateText(cruiser)
        TriggerEvent("vehiclekeys:client:SetOwner", bikePlate)
        SetVehicleEngineOn(cruiser, true, true)
        exports['LegacyFuel']:SetFuel(cruiser, 100)
    elseif DoesEntityExist(cruiser) and #(GetEntityCoords(cruiser) - GetEntityCoords(PlayerPedId())) < 3.0 and GetPedInVehicleSeat(cruiser,-1) == 0 then
        DeleteVehicle(cruiser)
        cruiser = nil
    else
        QBCore.Functions.Notify("Too far from the bike or someone is sitting on it")
    end
end)
