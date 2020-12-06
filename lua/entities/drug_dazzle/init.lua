AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local function UnDazzleDrugPlayer(ply)
    if not IsValid(ply) then return end
    ply.isDazzleDrugged = false
    local IDSteam = ply:SteamID64()

    timer.Remove(IDSteam .. "DazzleDruggedHealth")

    SendUserMessage("DazzleDrugEffects", ply, false)
end

hook.Add("PlayerDeath", "UndazzledrugPlayers", function(ply) if ply.isDazzleDrugged then UnDazzleDrugPlayer(ply) end end)

local function DazzleDrugPlayer(ply)
    if not IsValid(ply) then return end

    SendUserMessage("DazzleDrugEffects", ply, true)

    ply.isDazzleDrugged = true

    local IDSteam = ply:SteamID64()

    if not timer.Exists(IDSteam .. "DazzleDruggedHealth") then
        ply:SetHealth(ply:Health() - 15)
        timer.Create(IDSteam .. "DazzleDruggedHealth", 60 / (100 + 5), 60, function()

            if ply:Health() <= 0 then
                UnDazzleDrugPlayer(ply)
				ply:Kill()
            end

            if timer.RepsLeft(IDSteam .. "DazzleDruggedHealth") == 0 then
                UnDazzleDrugPlayer(ply)
            end
        end)
    end
end

function ENT:Initialize()
    self:SetModel("models/Gibs/wood_gib01e.mdl")
	self:SetMaterial("models/shiny")
	self:SetColor(Color(0, 255, 190, 255))
    DarkRP.ValidatedPhysicsInit(self, SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    self.CanUse = true

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end
end

function ENT:OnTakeDamage(dmg)
    self:TakePhysicsDamage(dmg)

    self.damage = self.damage - dmg:GetDamage()

    if self.damage <= 0 then
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())
        effectdata:SetMagnitude(2)
        effectdata:SetScale(2)
        effectdata:SetRadius(3)
        util.Effect("Sparks", effectdata)
        self:Remove()
    end
end

function ENT:Use(activator, caller)
    if not self.CanUse then return end
    local Owner = self:Getowning_ent()
    if not IsValid(Owner) then return end

    local canUse, reason = hook.Call("canDarkRPUse", nil, activator, self, caller)
    if canUse == false then
      if reason then DarkRP.notify(activator, 1, 4, reason) end
      return
    end

    DazzleDrugPlayer(caller)
    self.CanUse = false
    self:Remove()
end

function ENT:OnRemove()
    local ply = self:Getowning_ent()
    if not IsValid(ply) then return end
end
