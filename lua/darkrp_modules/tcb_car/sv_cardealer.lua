/*---------------------------------------------------------------------------

	
	Creator: TheCodingBeast - TheCodingBeast.com
	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
	
---------------------------------------------------------------------------*/

--[[---------------------------------------------------------
	Spawn Dealer
-----------------------------------------------------------]]
util.AddNetworkString("TCBDealerMenu")
util.AddNetworkString("TCBDealerSpawn")
util.AddNetworkString("TCBDealerPurchase")
util.AddNetworkString("TCBDealerSell")
util.AddNetworkString("TCBDealerChat")
util.AddNetworkString("TCBDealerStore")

--[[---------------------------------------------------------
	Database Setup
-----------------------------------------------------------]]
function TCBDealer.databaseSetup()

	--> Compatibility
	local AUTOINCREMENT = MySQLite.isMySQL() and "AUTO_INCREMENT" or "AUTOINCREMENT"

	--> Table
	MySQLite.query([[
		CREATE TABLE IF NOT EXISTS tcb_cardealer (
			id INTEGER NOT NULL PRIMARY KEY ]]..AUTOINCREMENT..[[,
			steamID VARCHAR(50) NOT NULL,
			vehicle VARCHAR(255) NOT NULL,
			health INTEGER NOT NULL,
			fuel INTEGER NOT NULL
		)
	]])

end
hook.Add("DarkRPDBInitialized", "TCBDealer.databaseSetup", TCBDealer.databaseSetup)

--[[---------------------------------------------------------
	Spawn Dealer
-----------------------------------------------------------]]
function TCBDealer.spawnDealer()

	--> Map Check
	if !TCBDealer.dealerSpawns[game.GetMap()] then
		ErrorNoHalt("Missing car dealer spawn points for map: "..game.GetMap())
		return 
	end

	--> Loop Dealers
	for k,v in pairs(TCBDealer.dealerSpawns[game.GetMap()]) do

		--> Dealer
		local dealer = ents.Create("base_ai")
		dealer:SetPos(v.pos + Vector(0, 0, 10))
		dealer:SetAngles(v.ang)
		dealer:SetModel(v.mdl)
		dealer:SetHullType(HULL_HUMAN)
		dealer:SetHullSizeNormal()
		dealer:SetNPCState(NPC_STATE_SCRIPT)
		dealer:SetSolid(SOLID_BBOX)
		dealer:CapabilitiesAdd(bit.bor(CAP_ANIMATEDFACE, CAP_TURN_HEAD))
		dealer:SetUseType(SIMPLE_USE)
		dealer:Spawn()
		dealer:DropToFloor()
		dealer.id = k

		--> Bubble
		if TCBDealer.settings.npcBubble then

			--> Spawn
			local bubble = ents.Create("base_anim")
			bubble:SetPos(v.pos + Vector(0, 0, 25))
			bubble:SetAngles(v.ang)
			bubble:SetModel("models/extras/info_speech.mdl")
			bubble:SetMoveType(MOVETYPE_NONE)
			bubble:SetSolid(SOLID_NONE)
			bubble:Spawn()

		end

		--> Input
		function dealer:AcceptInput(name, activator, caller)
			if name == "Use" and IsValid(caller) then
				
				--> Variables
				local vehicles = {}

				--> Vehicles
				MySQLite.query(string.format([[SELECT * FROM tcb_cardealer WHERE steamID = %s]], MySQLite.SQLStr(caller:SteamID())), function(data)
					
					--> Loop
					for k, v in pairs(data or {}) do
					    local vehicleInfo = { vehicle = v.vehicle, health = tonumber(v.health or 100), fuel = tonumber(v.fuel or 100) }
						table.insert(vehicles, vehicleInfo)
					end

					--> Network
					net.Start("TCBDealerMenu")
						net.WriteTable(vehicles)
						net.WriteInt(dealer.id, 32)
					net.Send(caller)

				end)

			end
		end

	end

	--> Precache
	if TCBDealer.settings.precache then
		for k,v in pairs(TCBDealer.vehicleTable) do
            local vehicleList = list.Get("Vehicles")[k] or list.Get("simfphys_vehicles")[k]
			if !vehicleList then return end

			util.PrecacheModel(vehicleList.Model)

		end	
	end

end
hook.Add("InitPostEntity", "TCBDealer.spawnDealer", TCBDealer.spawnDealer)

--[[---------------------------------------------------------
	Purchase Vehicle
-----------------------------------------------------------]]
function TCBDealer.purchaseVehicle(length, ply)

	--> Vehicle
	local vehID = net.ReadString()
	if !TCBDealer.vehicleTable[vehID] then 
		DarkRP.notify(ply, 1, 4, "The requested vehicle is not for sale.") 
		return 
	end
	local vehicle = TCBDealer.vehicleTable[vehID]

	local vehicleInfo = list.Get("Vehicles")[vehID] or list.Get("simfphys_vehicles")[vehID]
	if not vehicleInfo then return end

	local vehName = vehicle.name or vehicleInfo.Name

	--> CustomCheck
	if vehicle.customCheck and !vehicle.customCheck(ply) then 
		if vehicle.CustomCheckFailMsg then
			DarkRP.notify(ply, 1, 4, vehicle.CustomCheckFailMsg)
		else
			DarkRP.notify(ply, 1, 4, "This vehicle is currently not available for you.")
		end
		return
	end

	--> Money
	if !ply:canAfford(vehicle.price) then
		DarkRP.notify(ply, 1, 4, "You can't afford this vehicle.") 
		return
	end
	ply:addMoney(-vehicle.price)

	--> Purchase
	MySQLite.query(string.format([[INSERT INTO tcb_cardealer (steamID, vehicle, health) VALUES (%s, %s, %d)]], MySQLite.SQLStr(ply:SteamID()), MySQLite.SQLStr(vehID), 100, 100))

	--> Notify
	DarkRP.notify(ply, 3, 4, "You bought a "..vehName.." for "..DarkRP.formatMoney(vehicle.price).."!")

end
net.Receive("TCBDealerPurchase", TCBDealer.purchaseVehicle)

function TCBDealer.vehicleInSellRange( vehicle )
    if not IsValid( vehicle ) then return false end

    local maxDistance = TCBDealer.settings.sellDistance or 1000
    local distanceSqr = TCBDealer:GetPos():DistToSqr( vehicle:GetPos() )

    if distanceSqr > maxDistance * maxDistance then return false end

    return true
end

--[[---------------------------------------------------------
	Sell Vehicle
-----------------------------------------------------------]]
function TCBDealer.sellVehicle(length, ply)

	--> Vehicle
	local vehID = net.ReadString()
	if !TCBDealer.vehicleTable[vehID] then 
		DarkRP.notify(ply, 1, 4, "The requested vehicle can't be sold.") 
		return 
	end

	local vehicle = TCBDealer.vehicleTable[vehID]

	local vehicleInfo = list.Get("Vehicles")[vehID] or list.Get("simfphys_vehicles")[vehID]
	if not vehicleInfo then return end

	local currentVehicle = ply:GetNWEntity( "currentVehicle", nil )
	if IsValid( currentvehicle ) then
        if currentVehicle:GetSpawn_List() == vehID then
            local isInSellRange = TCBDealer.vehicleInSellRange( currentVehicle )

            if not isInSellRange then
                DarkRP.notify(ply, 1, 4, "That vehicle is too far away to sell!")
                return
            end
        end
    end

	local vehName = vehicle.name or vehicleInfo.Name

	--> Own
	local vehOwn = {}
	MySQLite.query(string.format([[SELECT * FROM tcb_cardealer WHERE steamID = %s AND vehicle = %s]], MySQLite.SQLStr(ply:SteamID()), MySQLite.SQLStr(vehID)), function(data)
		
		--> Variables
		vehOwn = data or {}

		--> Own
		if table.Count(vehOwn) == 0 then
			DarkRP.notify(ply, 1, 4, "The requested vehicle is not in you garage.") 
			return 
		end

		--> Current
		TCBDealer.removeVehicle(ply)

		--> Money
		local amount = vehicle.price*(TCBDealer.settings.salePercentage/100)
		ply:addMoney(amount)

		--> Sell
		MySQLite.query(string.format([[DELETE FROM tcb_cardealer WHERE steamID = %s AND vehicle = %s]], MySQLite.SQLStr(ply:SteamID()), MySQLite.SQLStr(vehID)))

		--> Notify
		DarkRP.notify(ply, 3, 4, "You sold your "..vehName.." for "..DarkRP.formatMoney(amount).."!")

	end)

end
net.Receive("TCBDealerSell", TCBDealer.sellVehicle)

--[[---------------------------------------------------------
	Spawn Vehicle
-----------------------------------------------------------]]
function TCBDealer.spawnVehicle(length, ply)

	--> Network
	local vehID = net.ReadString()
	local dealerID = net.ReadInt(32)
	local testDrive = net.ReadBool() or false

	--> Vehicle
	if !TCBDealer.vehicleTable[vehID] then 
		DarkRP.notify(ply, 1, 4, "The requested vehicle can't be spawned.") 
		return 
	end
	vehicle = TCBDealer.vehicleTable[vehID]

	--> CustomCheck
	if vehicle.customCheck and !vehicle.customCheck(ply) then 
		if vehicle.CustomCheckFailMsg then
			DarkRP.notify(ply, 1, 4, vehicle.CustomCheckFailMsg)
		else
			DarkRP.notify(ply, 1, 4, "This vehicle is currently not available for you.")
		end
		return
	end

    local currentVehicle = ply:GetNWEntity("currentVehicle", nil)

    if currentVehicle and IsValid( currentVehicle ) then
        DarkRP.notify( ply, 1, 4, "You already have a vehicle! You must store or sell your existing vehicle before spawning another." )
        return
    end

	--> Function
	function spawnCode()

		--> Current
		TCBDealer.removeVehicle(ply)

		--> Dealer
		if !TCBDealer.dealerSpawns[game.GetMap()][dealerID] then
			DarkRP.notify(ply, 1, 4, "The car dealer wasn't found.") 
			return 
		end
		local dealer = TCBDealer.dealerSpawns[game.GetMap()][dealerID]
		
		local dealerResult = TCBDealer.dealerRange(ply, dealer)
		if !dealerResult then
			DarkRP.notify(ply, 1, 4, "You are not in range of the car dealer!") 
			return 
		end

		--> Spawns
		local spawnPoint = {}
		local debugPoint = ""

		if TCBDealer.settings.checkSpawn then
			for k,v in pairs(dealer.spawns) do
				local entities = ents.FindInBox(Vector(v.pos.x + 100, v.pos.y + 100, v.pos.z - 150), Vector(v.pos.x - 100, v.pos.y - 100, v.pos.z + 150))
				
				local found = 0
				for _,v in pairs(entities) do
					if v:GetClass() != "physgun_beam" then
						found = 1

						if TCBDealer.settings.debug then
							debugPoint = debugPoint..v:GetClass()..", "
						end

						break
					end
				end

				if found == 0 then
					spawnPoint = v
					break
				end
			end
		else
			spawnPoint = dealer.spawns[math.random(#dealer.spawns)]
		end

		if table.Count(spawnPoint) == 0 then
			DarkRP.notify(ply, 1, 4, "Something is blocking the spawn points.")

			if TCBDealer.settings.debug then
				DarkRP.notify(ply, 1, 10, "[DEBUG] Classes: "..debugPoint)
			end

			return 
		end

		--> Spawn
		local vehicleList = list.Get("Vehicles")[vehID] or list.Get("simfphys_vehicles")[vehID]
		if !vehicleList then return end

		local spawnedVehicle
		local vehicleClass = vehicleList.Class

		local isSimfPhys = list.Get("simfphys_vehicles")[vehID] ~= nil
    
		if isSimfPhys then
		    if not simfphys then
		        error("Tried to spawn a simfphys vehicle but simfphys isn't initialized!")
		        return
            end
            
		    spawnedVehicle = simfphys.SpawnVehicleSimple(vehID, spawnPoint.pos, spawnPoint.ang)

            timer.Simple( 1, function()
                MySQLite.query(string.format([[SELECT health, fuel FROM tcb_cardealer WHERE steamID = %s AND vehicle = %s]], MySQLite.SQLStr(ply:SteamID()), MySQLite.SQLStr(vehID)), function(data)
                    PrintTable( data )
                    local maxHealth = spawnedVehicle:GetMaxHealth()
                    local healthPercent = tonumber( data[1].health or 100 )
                    healthPercent = math.Clamp( healthPercent, 25, 100 )
                    local newHealth = math.Round( maxHealth * ( healthPercent / 100 ) )

                    if healthPercent < 100 then
                        DarkRP.notify(ply, 1, 8, "Your stored vehicle has " .. healthPercent .. "% health")
                    end

                    -- Smoking and on-fire are mutually exclusive
                    if newHealth <= ( maxHealth * 0.3 ) then
                        spawnedVehicle:SetOnFire( true )
                    elseif newHealth <= ( maxHealth * 0.6 ) then
                        spawnedVehicle:SetOnSmoke( true )
                    end

                    spawnedVehicle:SetCurHealth( newHealth )

                    local fuelPercent = tonumber( data[1].fuel or 100 ) or 100
                    local maxFuel = spawnedVehicle:GetMaxFuel()
                    local newFuel = math.Round( maxFuel * ( fuelPercent / 100 ) ) 

                    if fuelPercent < 100 then
                        DarkRP.notify(ply, 1, 8, "Your stored vehicle has " .. fuelPercent .. "% fuel")
                    end

                    spawnedVehicle:SetFuel( newFuel )

                    spawnedVehicle:CallOnRemove( "TCBSaveCarDataOnRemove", function( veh )
                        local health = veh:GetCurHealth()
                        local maxHealth = veh:GetMaxHealth()
                        local healthPercent = math.Round( ( health / maxHealth ) * 100 )
                        local vehicleType = veh:GetSpawn_List()

                        local fuel = veh:GetFuel() or 0
                        local maxFuel = veh:GetMaxFuel()

                        local fuelPercent
                        if not maxFuel then
                            fuelPercent = 0
                        else
                            fuelPercent = math.Round( ( fuel / maxFuel ) * 100 )
                        end

                        MySQLite.query(
                            string.format([[
                                    UPDATE tcb_cardealer SET health=%i, fuel=%i WHERE steamID=%s AND vehicle=%s
                                ]],
                                healthPercent,
                                fuelPercent,
                                MySQLite.SQLStr(ply:SteamID()),
                                MySQLite.SQLStr(vehicleType)
                            )
                        )
                     end )
                end )
            end )
        else
            spawnedVehicle = ents.Create(vehicleClass)
		    spawnedVehicle:SetModel(vehicleList.Model)
            spawnedVehicle:SetPos(spawnPoint.pos)
            spawnedVehicle:SetAngles(spawnPoint.ang)
            spawnedVehicle:Spawn()
            spawnedVehicle:Activate()
        end

		if not spawnedVehicle then
            DarkRP.notify( ply, 1, 4, "Something went wrong! Contact an admin ASAP" )
		    error("Tried to spawn a vehicle but failed! (" .. vehicleClass .. ")")
		    return
		end

		if vehicleList.KeyValues then
			for k, v in pairs(vehicleList.KeyValues) do
				spawnedVehicle:SetKeyValue(k, v)
			end
		end

		spawnedVehicle.VehicleTable = vehicleList

		spawnedVehicle:keysOwn(ply)
		spawnedVehicle:keysLock()

		spawnedVehicle:SetNWEntity( "tcbOwner", ply )
		spawnedVehicle:SetNWString("dealerName", vehicle.name or vehicleList.Name)
		spawnedVehicle:SetNWString("dealerClass", vehID)

		-- TODO: Decide what this is supposed to do and how to handle it with simfphys (which might already call it)
		--gamemode.Call(PlayerSpawnedVehicle, ply, spawnedVehicle)
		ply:SetNWEntity("currentVehicle", spawnedVehicle)

		--> Color
		if vehicle.color then
			spawnedVehicle:SetColor(vehicle.color)
		elseif TCBDealer.settings.colorPicker then

			--> Variables
			local varColR = ply:GetInfoNum("tcb_cardealer_r", 0)
			local varColG = ply:GetInfoNum("tcb_cardealer_g", 0)
			local varColB = ply:GetInfoNum("tcb_cardealer_b", 0)

			--> Checks
			if varColR < 0 then varColR = 0 elseif varColR > 255 then varColR = 255 end
			if varColG < 0 then varColG = 0 elseif varColG > 255 then varColR = 255 end
			if varColB < 0 then varColB = 0 elseif varColB > 255 then varColB = 255 end

			--> Set Color
			spawnedVehicle:SetColor(Color(varColR, varColG, varColB, 255))

		elseif TCBDealer.settings.randomColor then
			spawnedVehicle:SetColor(Color(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255))
		end

		--> Test Drive
		ply.vehicleTest = false

		if timer.Exists("testDrive_"..ply:UniqueID()) then
			timer.Remove("testDrive_"..ply:UniqueID())
		end

		if testDrive then
			timer.Create("testDrive_"..ply:UniqueID(), TCBDealer.settings.testDriveLength, 1, function()

				if IsValid(ply) then
					ply:ExitVehicle()
					TCBDealer.removeVehicle(ply)
				end

				net.Start("TCBDealerChat")
					net.WriteString("Your test drive ran out!")
				net.Send(ply)

				ply.vehicleTest = false

			end)

			ply.vehicleTest = true

			net.Start("TCBDealerChat")
				net.WriteString("You can test drive this vehicle for the next "..TCBDealer.settings.testDriveLength.." seconds!")
			net.Send(ply)
		end

		--> Enter
		if TCBDealer.settings.autoEnter or testDrive then
			ply:EnterVehicle(spawnedVehicle)
		end

	end

	--> Own
	if !testDrive then
		
		local vehOwn = {}
		MySQLite.query(string.format([[SELECT * FROM tcb_cardealer WHERE steamID = %s AND vehicle = %s]], MySQLite.SQLStr(ply:SteamID()), MySQLite.SQLStr(vehID)), function(data)
			
			--> Variables
			vehOwn = data or {}

			--> Own
			if table.Count(vehOwn) == 0 then
				DarkRP.notify(ply, 1, 4, "The requested vehicle is not in you garage.") 
				return 
			end

			--> Code
			spawnCode( )

		end)

	else

		--> Code
		spawnCode()
		
	end
end
net.Receive("TCBDealerSpawn", TCBDealer.spawnVehicle)

--[[---------------------------------------------------------
	Store Vehicle
-----------------------------------------------------------]]
function TCBDealer.storeVehicle(length, ply)

	--> Network
	local dealerID = net.ReadInt(32)

	--> Dealer
	if !TCBDealer.dealerSpawns[game.GetMap()][dealerID] then
		DarkRP.notify(ply, 1, 4, "The car dealer wasn't found.") 
		return 
	end
	local dealer = TCBDealer.dealerSpawns[game.GetMap()][dealerID]
	
	local dealerResult = TCBDealer.dealerRange(ply, dealer)
	if !dealerResult then
		DarkRP.notify(ply, 1, 4, "You are not in range of the car dealer!") 
		return 
	end

	--> Vehicle
	local currentVehicle = ply:GetNWEntity("currentVehicle")
	if IsValid(currentVehicle) and currentVehicle:GetPos():Distance(ply:GetPos()) <= TCBDealer.settings.storeDistance then
		local isSimfPhys = currentVehicle:GetClass() == "gmod_sent_vehicle_fphysics_base"

		if isSimfPhys then
            local health = currentVehicle:GetCurHealth()
            local maxHealth = currentVehicle:GetMaxHealth()
            local healthPercent = math.Round( ( health / maxHealth ) * 100 )
            local vehicleType = currentVehicle:GetSpawn_List()

            local fuel = currentVehicle:GetFuel()
            local maxFuel = currentVehicle:GetMaxFuel()
            local fuelPercent = math.Round( ( fuel / maxFuel ) * 100 )

            MySQLite.query(
                string.format([[
                        UPDATE tcb_cardealer SET health=%i, fuel=%i WHERE steamID=%s AND vehicle=%s
                    ]],
                    healthPercent,
                    fuelPercent,
                    MySQLite.SQLStr(ply:SteamID()),
                    MySQLite.SQLStr(vehicleType)
                )
            )
        end

		TCBDealer.removeVehicle(ply)
		DarkRP.notify(ply, 3, 4, "Your vehicle was stored in your garage!")
		return
	else
		DarkRP.notify(ply, 1, 4, "The vehicle is not in range.") 
		return
	end 

end
net.Receive("TCBDealerStore", TCBDealer.storeVehicle)

--[[---------------------------------------------------------
	Remove Vehicle
-----------------------------------------------------------]]
function TCBDealer.removeVehicle(ply)
	local currentVehicle = ply:GetNWEntity("currentVehicle")
	if IsValid(currentVehicle) then

		--> Remove
		currentVehicle:Remove()

	end
end
hook.Add("PlayerDisconnected", "TCBDealer.removeVehicle", TCBDealer.removeVehicle)

--[[---------------------------------------------------------
	Leave Vehicle
-----------------------------------------------------------]]
function TCBDealer.leaveVehicle(ply)
	local currentVehicle = ply:GetNWEntity("currentVehicle")
	if IsValid(currentVehicle) and ply.vehicleTest == true then

		--> Variables
		currentVehicle:Remove()
		ply.vehicleTest = false

	end
end
hook.Add("PlayerLeaveVehicle", "TCBDealer.leaveVehicle", TCBDealer.leaveVehicle)

--[[---------------------------------------------------------
	Player Changed
-----------------------------------------------------------]]
function TCBDealer.playerChanged(ply)
	local currentVehicle = ply:GetNWEntity("currentVehicle")
	if IsValid(currentVehicle) then

		--> Variables
		local vehicle = TCBDealer.vehicleTable[currentVehicle:GetNWString("dealerClass")]

		--> Qualify
		if vehicle and vehicle.customCheck and !vehicle.customCheck(ply) then
			TCBDealer.removeVehicle(ply)
			DarkRP.notify(ply, 1, 4, "You no longer qualify for your vehicle.") 
			return
		end

	end
end
hook.Add("OnPlayerChangedTeam", "TCBDealer.playerChanged", TCBDealer.playerChanged)

--[[---------------------------------------------------------
	Dealer Range
-----------------------------------------------------------]]
function TCBDealer.dealerRange(ply, dealer)

	--> Return
	return ply:GetPos():Distance(dealer.pos) <= 200

end
