include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
    self:DrawModel()

    local Pos = self:GetPos()
    local Ang = self:GetAngles()

    local owner = self:Getowning_ent()
    owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")

    surface.SetFont("HUDNumber5")
    local text = ("Violet Slug")
    local TextWidth = surface.GetTextSize(text)

    Ang:RotateAroundAxis(Ang:Forward(), 90)
    local TextAng = Ang

    TextAng:RotateAroundAxis(TextAng:Right(), CurTime() * -180)

    cam.Start3D2D(Pos + Ang:Right() * -15, TextAng, 0.1)
        draw.WordBox(2, -TextWidth * 0.5 + 5, -30, text, "HUDNumber5", Color(0, 0, 0, 100), Color(255, 255, 255, 255))
    cam.End3D2D()
end

function ENT:Think()
end

local function slugDrugEffects(um)
    local toggle = um:ReadBool()

    LocalPlayer().isSlugDrugged = toggle

    if toggle then
        hook.Add("RenderScreenspaceEffects", "slugDrugged", function()
            DrawMaterialOverlay( "models/props_c17/fisheyelens", -0.12 )
            DrawMotionBlur(0.13, 1, 0.00)
			DrawColorModify({
				["$pp_colour_addr"] = 1.7,
				["$pp_colour_addg"] = 1.2,
				["$pp_colour_addb"] = 1.9,
				["$pp_colour_brightness"] = -2,
				["$pp_colour_contrast"] = 0.4,
				["$pp_colour_colour"] = 1,
				["$pp_colour_mulr"] = 1,
				["$pp_colour_mulg"] = 1,
				["$pp_colour_mulb"] = 1
			})
        end)
    else
        hook.Remove("RenderScreenspaceEffects", "slugDrugged")
    end
end
usermessage.Hook("SlugDrugEffects", slugDrugEffects)
