ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Violet Slug"
ENT.Author = "Rickster"
ENT.Spawnable = false

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "price")
    self:NetworkVar("Entity", 1, "owning_ent")
end

hook.Add("Move", "SlugDruggedPlayer", function(ply, mv)
    if not ply.isSlugDrugged then return end

    mv:SetMaxSpeed(mv:GetMaxSpeed() * 0.5)
    mv:SetMaxClientSpeed(mv:GetMaxClientSpeed() * 0.5)
end)
