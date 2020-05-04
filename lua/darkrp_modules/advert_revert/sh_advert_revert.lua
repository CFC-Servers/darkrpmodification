--Put me in darkrp_modules/advert_revert/sh_advert_revert.lua for it to work!!!!
timer.Simple( 3, function()
    DarkRP.addPhrase('en', 'advert', '[Advert]')
    local billboardfunction = DarkRP.getChatCommand("advert")
    billboardfunction = billboardfunction['callback']
    DarkRP.removeChatCommand("advert")
     local function PlayerAdvertise(ply, args)
        if args == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return ""
        end
        local DoSay = function(text)
            if text == "" then
                DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
                return
            end
            for k,v in pairs(player.GetAll()) do
                local col = team.GetColor(ply:Team())
                DarkRP.talkToPerson(v, col, DarkRP.getPhrase("advert") .. " " .. ply:Nick(), Color(255, 255, 0, 255), text, ply)
            end
        end
        return args, DoSay
    end
    DarkRP.declareChatCommand{
        command = "billboard",
        description = "Create a billboard holding an advertisement.",
        delay = 1.5
    }
    DarkRP.declareChatCommand{
        command = "advert",
        description = "Advertise something to everyone in the server.",
        delay = 1.5
     }


    if SERVER then
        DarkRP.defineChatCommand("advert", PlayerAdvertise, 1.5)
        DarkRP.defineChatCommand("billboard", billboardfunction)
    end
end)
