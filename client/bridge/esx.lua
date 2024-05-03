local esx = GetResourceState('es_extended'):find('start')
if not esx then return end

local ESX = exports.es_extended:getSharedObject()

function hasAccess(job)
    if not job then return false end

    local playerData = ESX.GetPlayerData()
    local isJobAllowed = false

    for k, workshop in pairs(Config.WorkShops) do
        if workshop.job == job then
            isJobAllowed = true
        end
    end
    if isJobAllowed and ESX.PlayerData.job.name == job then
        return true
    end
    --[[ if not isJobAllowed then return false end
    if playerData.job.name == job and isJobAllowed then return true end ]]

    return false
end

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    if hasAccess(ESX.PlayerData.job.name) then
        CreateCustomLocations()
    end
end)

RegisterNetEvent('esx:setJob', function(job)
    ESX.PlayerData.job = job
	if hasAccess(job.name) then
        CreateCustomLocations()
    end
end)

RegisterNetEvent('esx:playerLoaded', function(xPlayer, isNew)
    ESX.PlayerData = xPlayer
    ESX.PlayerLoaded = true
    if hasAccess(ESX.PlayerData.job.name) then
        CreateCustomLocations()
    end
end)