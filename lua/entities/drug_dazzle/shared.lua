ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Dazzle Dust"
ENT.Author = "Rickster"
ENT.Spawnable = false

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "price")
    self:NetworkVar("Entity", 1, "owning_ent")
end

hook.Add("Move", "DazzleDruggedPlayer", function(ply, mv)
    if not ply.isDazzleDrugged then return end

    if ply:IsOnGround() and mv:KeyPressed(IN_JUMP) then
        local vec = mv:GetVelocity()
        vec.z = 200 -- Adds on to the jump power
        mv:SetVelocity(vec)
    end
	
end)
