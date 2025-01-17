function enableHLCForNPC(npc,walkspeed,accuracy,drivespeed)
	if not isElement(npc) or getElementType(npc) ~= "ped" then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if all_npcs[npc] then
		outputDebugString("HLC already enabled",2)
		return false
	end

	if walkspeed and not NPC_SPEED_ONFOOT[walkspeed] then
		outputDebugString("Invalid walkspeed argument",2)
		return false
	end
	if accuracy then
		accuracy = tonumber(accuracy)
		if not accuracy or accuracy < 0 or accuracy > 1 then
			outputDebugString("Invalid accuracy argument",2)
			return false
		end
	end
	if drivespeed then
		drivespeed = tonumber(drivespeed)
		if not drivespeed or drivespeed < 0 then
			outputDebugString("Invalid drivespeed argument",2)
			return false
		end
	end
	all_npcs[npc] = {}
	
	addEventHandler("onElementDataChange",npc,cleanUpDoneTasks)
	addEventHandler("onElementDestroy",npc,destroyNPCInformationOnDestroy)

	setElementData(npc,"npc_hlc",true)
	addNPCToUnsyncedList(npc)
	
	setNPCWalkSpeed(npc,walkspeed or "run")
	setNPCWeaponAccuracy(npc,accuracy or 1)
	setNPCDriveSpeed(npc,drivespeed or 40/180)

	return true
end

function disableHLCForNPC(npc)
	if not isElement(npc) or getElementType(npc) ~= "ped" then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if all_npcs[npc] == nil then
		outputDebugString("HLC not enabled",2)
		return false
	end

	clearNPCTasks(npc)

	removeEventHandler("onElementDataChange",npc,cleanUpDoneTasks)
	removeEventHandler("onElementDestroy",npc,destroyNPCInformationOnDestroy)
	destroyNPCInformation(npc)


	removeElementData(npc,"npc_hlc")
	
	removeElementData(npc,"npc_hlc:walk_speed")
	removeElementData(npc,"npc_hlc:accuracy")
	removeElementData(npc,"npc_hlc:drive_speed")

	return true
end

function setNPCElementData(npc,rpc,newValue) 
	-- this function only sets the rpc when it changed, prevent lagging
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end

	local key = "npc_hlc:"..rpc
	local oldvar = getElementData(npc,key)
	if oldvar == nil or newValue ~= oldvar then
		setElementData(npc,key,newValue)
	end
	return true
end

function setNPCWalkSpeed(npc,speed)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if speed ~= "walk" and speed ~= "run" and speed ~= "sprint" and speed ~= "sprintfast" then
		outputDebugString("Invalid speed argument",2)
		return false
	end

	setNPCElementData(npc,"walk_speed",speed) 
	return true
end
function setNPCAvoidCrash(npc,switch)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if switch == nil then
		outputDebugString("Invalid speed argument",2)
		return false
	end

	setNPCElementData(npc,"avoid_crash",switch) 
	return true
end

function setNPCWeaponAccuracy(npc,accuracy)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	accuracy = tonumber(accuracy)
	if not accuracy or accuracy < 0 or accuracy > 1 then
		outputDebugString("Invalid accuracy argument",2)
		return false
	end

	setNPCElementData(npc,"accuracy",accuracy) 
	return true
end

function setNPCDriveSpeed(npc,speed)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	speed = tonumber(speed)
	if not speed or speed < 0 then
		outputDebugString("Invalid speed argument",2)
		return false
	end

	setNPCElementData(npc,"drive_speed",speed)
	return true
end

function setNPCDriveStyle(npc,style)
	if not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end

	if style ~= "normal" and style ~= "aggressive" then
		outputDebugString("Invalid speed argument",2)
		return false
	end

	setNPCElementData(npc,"drive_style",style)
end


------------------------------------------------

function addNPCTask(npc,task)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if not isTaskValid(task) then
		outputDebugString("Invalid task argument",2)
		return false
	end
	local lasttask = getElementData(npc,"npc_hlc:lasttask")
	if not lasttask then
		lasttask = 1
		setElementData(npc,"npc_hlc:thistask",1)
	else
		lasttask = lasttask+1
	end
	setElementData(npc,"npc_hlc:task."..lasttask,task)
	setElementData(npc,"npc_hlc:lasttask",lasttask)
	return true
end

function clearNPCTasks(npc)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	local thistask = getElementData(npc,"npc_hlc:thistask")
	if not thistask then return end
	local lasttask = getElementData(npc,"npc_hlc:lasttask")
	if tonumber(thistask) and tonumber(lasttask) then
		for task = thistask,lasttask do
			removeElementData(npc,"npc_hlc:task."..task)
			--setElementData(npc,"npc_hlc:task."..task,false)
		end
	end
	setElementData(npc,"npc_hlc:thistask",nil)
	setElementData(npc,"npc_hlc:lasttask",nil)
	triggerEvent("npc_hlc:onNPCTaskClear",npc)
	--removeElementData(npc,"npc_hlc:thistask")
	--removeElementData(npc,"npc_hlc:lasttask")
	return true
end

function setNPCTask(npc,task)
	if not npc or not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	if not isTaskValid(task) then
		outputDebugString("Invalid task argument",2)
		return false
	end
	clearNPCTasks(npc)
	setElementData(npc,"npc_hlc:task.1",task)
	setElementData(npc,"npc_hlc:thistask",1)
	setElementData(npc,"npc_hlc:lasttask",1)
	return true
end
function getNpcCurrentTask(npc) 
	local thistask = getElementData(npc,"npc_hlc:thistask")
	if thistask then 
		return getElementData(npc,"npc_hlc:task."..thistask)
	end
	return nil
end
function getNPCTask(npc) 
	return getNpcCurrentTask(npc)[1]
end
function isTaskValid(task)
	local taskFunc = taskValid[task[1]]
	return taskFunc and taskFunc(task) or false
end

function isHLCEnabled(npc)
	return isElement(npc) and getElementData(npc,"npc_hlc") or false
end

function getNPCWalkSpeed(npc)
	if not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	return getElementData(npc,"npc_hlc:walk_speed")
end
 
function getNPCDriveStyle(npc)
	if not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	return getElementData(npc,"npc_hlc:drive_style")
end


function getNPCWeaponAccuracy(npc)
	if not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	return getElementData(npc,"npc_hlc:accuracy")
end

function getNPCDriveSpeed(npc)
	if not isHLCEnabled(npc) then
		outputDebugString("Invalid ped argument",2)
		return false
	end
	return getElementData(npc,"npc_hlc:drive_speed")
end
function setNPCTaskToNext(npc)
	local thistask = getElementData(npc,"npc_hlc:thistask") or nil
	if thistask then
		setNPCElementData(npc,"thistask",thistask+1)
	end
end
