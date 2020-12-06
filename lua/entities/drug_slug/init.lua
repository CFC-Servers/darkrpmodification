AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local function UnSlugDrugPlayer(ply)
    if not IsValid(ply) then return end
    ply.isSlugDrugged = false
    local IDSteam = ply:SteamID64()

    timer.Remove(IDSteam .. "SlugDruggedHealth")

    SendUserMessage("SlugDrugEffects", ply, false)
end

hook.Add("PlayerDeath", "UnslugdrugPlayers", function(ply) if ply.isSlugDrugged then UnSlugDrugPlayer(ply) end end)

local function SlugDrugPlayer(ply)
    if not IsValid(ply) then return end

    SendUserMessage("SlugDrugEffects", ply, true)

    ply.isSlugDrugged = true

    local IDSteam = ply:SteamID64()

    if not timer.Exists(IDSteam .. "SlugDruggedHealth") then
        ply:SetHealth(ply:Health() + 5)
		
        timer.Create(IDSteam .. "SlugDruggedHealth", 60 / (100 + 5), 100 + 5, function()
			if not IsValid(ply) then return end
			
            if ply:Health() <= 0 then
				ply:Kill()
            end

            if timer.RepsLeft(IDSteam .. "SlugDruggedHealth") == 0 then
                UnSlugDrugPlayer(ply)
            end
        end)
    end
end

function ENT:Initialize()
    self:SetModel("models/gibs/shield_scanner_gib5.mdl")
	self:SetMaterial("sprops/textures/sprops_metal4")
	self:SetColor(Color(140, 0, 255, 255))
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

    SlugDrugPlayer(caller)
    self.CanUse = false
    self:Remove()
end

function ENT:OnRemove()
    local ply = self:Getowning_ent()
    if not IsValid(ply) then return end
end
