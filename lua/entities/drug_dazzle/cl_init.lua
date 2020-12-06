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
    local text = ("Dazzle Dust")
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

local function fairyDrugEffects(um)
    local toggle = um:ReadBool()

    LocalPlayer().isDazzleDrugged = toggle

    if toggle then
        hook.Add("RenderScreenspaceEffects", "dazzleDrugged", function()
			DrawMaterialOverlay( "effects/strider_pinch_dudv", 0.1 )
			DrawBloom(0.2, 2, 3, 7, 2, 2, 0, 0.8, 1)
            DrawMotionBlur(0.2, 0.5, 0.05)
        end)
    else
        hook.Remove("RenderScreenspaceEffects", "dazzleDrugged")
    end
end
usermessage.Hook("DazzleDrugEffects", fairyDrugEffects)
