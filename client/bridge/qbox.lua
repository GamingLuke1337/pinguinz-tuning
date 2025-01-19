local qbox = GetResourceState('qbx_core'):find("start")
if not qbox then return end

local PlayerData = require('qbx_core/playerdata')
local lib = require('qbx_core/lib')

--- @param amount number
lib.callback.register('ars_tuning:hasMoney', function(source, amount)
    local player = exports.qbx_core:GetPlayer(source)
    local cash = lib.getMoney(player, 'cash')

    return cash >= amount
end)

--- @param amount number
RegisterNetEvent("ars_tuning:payMods", function(amount, properties)
    local player = exports.qbx_core:GetPlayer(source)

    lib.removeMoney(player, 'cash', amount)

    local vehicleProps = properties
    local isVehicleOwned = MySQL.prepare.await('SELECT plate FROM player_vehicles WHERE plate = ?', { vehicleProps.plate })

    if isVehicleOwned then
        MySQL.update('UPDATE player_vehicles SET mods = ? WHERE plate = ?', 
            { json.encode(vehicleProps), vehicleProps.plate })
    end
end)
