local vehicles = require "client.vehicle.vehicles"
function getVehicleProperties(veh)
	local vehicle = veh
	local vehicleProperties = lib.getVehicleProperties(vehicle)

	return vehicleProperties
end

function getVehicleModCounts(veh, mod)
	local vehicle = veh
	local modCounts = 0
	if mod == 99 then
		modCounts = GetVehicleLiveryCount(veh)
	else
		modCounts = GetNumVehicleMods(vehicle, mod)
	end
	return modCounts
end

function playSound(soundName, audioName, soundId)
	local soundId = soundId or -1
	PlaySoundFrontend(soundId, soundName, audioName, false)
end

function showNotification(msg)
	lib.notify({
		title = 'Tuning',
		description = msg,
		type = 'info'
	})
end

function getVehicleColor()
	local r = 175
	local g = 179
	local b = 178

	local vehicle = cache.vehicle
	local vehColor = getVehicleProperties(vehicle).color1

	if type(vehColor) == "table" then
		r = vehColor[1]
		g = vehColor[2]
		b = vehColor[3]
	end

	local bgColor = "rgba(" .. r .. ", " .. g .. ", " .. b .. ", 0.7)"

	return bgColor
end

function ToggleCamByPosition(direction, veh)

    local vehicle = veh or cache.vehicle
    local camPos = vector3(0.0, 0.0, 0.0) -- Position de caméra par défaut
	local vehPos = GetEntityCoords(vehicle)
	
	local xRot = -35.0
	local yRot = 0.0
	local fov = 50.0
    if direction == "front" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, -2.0, 4.5, 1.5)
    elseif direction == "back" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, 2.0, -4.5, 1.5)
	elseif direction == "top" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -3.0, 2.0)
    elseif direction == "left" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, -4.0, 0.0, 2.5)
    elseif direction == "right" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, 4.0, 0.0, 2.5)
    elseif direction == "inside-front" then
		fov = 70.0
		xRot = 0.0
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 0.0, 0.3)
	elseif direction == "steering" then
		fov = 70.0
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 0.0, 0.4)
    elseif direction == "driverdoor" then
        camPos = GetOffsetFromEntityInWorldCoords(vehicle, -1.0, -2.0, 2.0)
    end

    if cam then
		local headingToObject = GetHeadingFromVector_2d(vehPos.x - camPos.x, vehPos.y - camPos.y)
		SetCamParams(cam, camPos.x, camPos.y, camPos.z, xRot, yRot, headingToObject, fov, 700, 1, 3, 0)
    end
end

function OpenVehicleDoor(doorToOpen)
	local doorsCount = GetNumberOfVehicleDoors(cache.vehicle)
	SetVehicleDoorsShut(cache.vehicle, true)
	if not doorToOpen or doorToOpen == "all" then
		for doorIndex = 1, doorsCount, 1 do
			SetVehicleDoorOpen(cache.vehicle, doorIndex, false, true)
		end
	elseif doorToOpen == "frontleft" then
		SetVehicleDoorOpen(cache.vehicle, 0, false, false)
	elseif doorToOpen == "frontright" then
		SetVehicleDoorOpen(cache.vehicle, 1, false, false)
	elseif doorToOpen == "backleft" then
		SetVehicleDoorOpen(cache.vehicle, 2, false, false)
	elseif doorToOpen == "backright" then
		SetVehicleDoorOpen(cache.vehicle, 3, false, false)
	elseif doorToOpen == "hood" then
		SetVehicleDoorOpen(cache.vehicle, 4, false, false)
	elseif doorToOpen == "trunk" then
		SetVehicleDoorOpen(cache.vehicle, 5, false, false)
	elseif doorToOpen == "doors" then
		for doorIndex = 0, 3, 1 do
			SetVehicleDoorOpen(cache.vehicle, doorIndex, false, false)
		end
	end
end

function isVehicleAllowedToUpgradePerf()
	local vehicleModel = GetEntityModel(cache.vehicle)
	for k, v in pairs(vehicles) do
		if vehicleModel == GetHashKey(k) then
			return lib.table.contains(Config.RestrictedCategories, v.category)
		end
	end
	return false
end

function showVehicleStats()
	local vehicle = cache.vehicle

	local vehicleModel = GetEntityModel(vehicle)
	local acceleration = (GetVehicleModelAcceleration(vehicleModel) or 0.0) * 10
	local maxSpeed = (GetVehicleModelEstimatedMaxSpeed(vehicleModel) or 0.0) / 10
	local breaks = GetVehicleModelMaxBraking(vehicleModel) or 0.0
	local power = (acceleration + maxSpeed) / 2

	local messageToShow = 'ㅤㅤㅤㅤㅤ**STATISTICS**ㅤㅤㅤㅤㅤ  \n Puissance: ' ..
		math.round(power) ..
		"  \n Acceleration: " ..
		math.round(acceleration) .. "  \n Vitesse Max.: " .. math.round(maxSpeed) .. "  \n Freins: " .. math.round(breaks)

	lib.showTextUI(messageToShow, {
		position = "right-center",
		icon = 'car',
		style = {
			borderRadius = 5,
			backgroundColor = getVehicleColor(),
			color = "#fff",
		}
	})
end

function getVehiclePrice(vehicle)
	local vehicleModel = GetEntityModel(vehicle)

	for k, v in pairs(vehicles) do
		if vehicleModel == GetHashKey(k) then
			ownedPrice = v.price
			break
		end
		--Wait(1)
	end

	return tonumber(ownedPrice)
end

function getHornName(index)
	if index == 0 then
		return "Truck Horn"
	elseif index == 1 then
		return "Cop Horn"
	elseif index == 2 then
		return "Clown Horn"
	elseif index == 3 then
		return "Musical Horn 1"
	elseif index == 4 then
		return "Musical Horn 2"
	elseif index == 5 then
		return "Musical Horn 3"
	elseif index == 6 then
		return "Musical Horn 4"
	elseif index == 7 then
		return "Musical Horn 5"
	elseif index == 8 then
		return "Sad Trombone"
	elseif index == 9 then
		return "Classical Horn 1"
	elseif index == 10 then
		return "Classical Horn 2"
	elseif index == 11 then
		return "Classical Horn 3"
	elseif index == 12 then
		return "Classical Horn 4"
	elseif index == 13 then
		return "Classical Horn 5"
	elseif index == 14 then
		return "Classical Horn 6"
	elseif index == 15 then
		return "Classical Horn 7"
	elseif index == 16 then
		return "Scale - Do"
	elseif index == 17 then
		return "Scale - Re"
	elseif index == 18 then
		return "Scale - Mi"
	elseif index == 19 then
		return "Scale - Fa"
	elseif index == 20 then
		return "Scale - Sol"
	elseif index == 21 then
		return "Scale - La"
	elseif index == 22 then
		return "Scale - Ti"
	elseif index == 23 then
		return "Scale - Do"
	elseif index == 24 then
		return "Jazz Horn 1"
	elseif index == 25 then
		return "Jazz Horn 2"
	elseif index == 26 then
		return "Jazz Horn 3"
	elseif index == 27 then
		return "Jazz Horn Loop"
	elseif index == 28 then
		return "Star Spangled Banner 1"
	elseif index == 29 then
		return "Star Spangled Banner 2"
	elseif index == 30 then
		return "Star Spangled Banner 3"
	elseif index == 31 then
		return "Star Spangled Banner 4"
	elseif index == 32 then
		return "Classical Horn 8 Loop"
	elseif index == 33 then
		return "Classical Horn 9 Loop"
	elseif index == 34 then
		return "Classical Horn 10 Loop"
	elseif index == 35 then
		return "Classical Horn 8"
	elseif index == 36 then
		return "Classical Horn 9"
	elseif index == 37 then
		return "Classical Horn 10"
	elseif index == 38 then
		return "Funeral Loop"
	elseif index == 39 then
		return "Funeral"
	elseif index == 40 then
		return "Spooky Loop"
	elseif index == 41 then
		return "Spooky"
	elseif index == 42 then
		return "San Andreas Loop"
	elseif index == 43 then
		return "San Andreas"
	elseif index == 44 then
		return "Liberty City Loop"
	elseif index == 45 then
		return "Liberty City"
	elseif index == 46 then
		return "Festive 1 Loop"
	elseif index == 47 then
		return "Festive 1"
	elseif index == 48 then
		return "Festive 2 Loop"
	elseif index == 49 then
		return "Festive 2"
	elseif index == 50 then
		return "Festive 3 Loop"
	elseif index == 51 then
		return "Festive 3"
	else
		return "N/A"
	end
end


function SetCamLookAtBodyPart(cam, type)
	if not cam or not type then return end

	if type == "front" then
	elseif type == "lside" then
	elseif type == "rside" then
	elseif type == "back" then
		
	end
end