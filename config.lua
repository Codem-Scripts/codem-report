

Config = {}


Config.Framework = "newqb" -- newqb, oldqb, esx
Config.Sql = "ox" -- ghmatti or ox
Config.AdminMenuCommand = "adminreport"
Config.ReportMenuCommand = "reportmenu"
Config.CoolDown = 5
Config.Notification = function(message, time, type)

    TriggerEvent("codem-notification", message, time, type)
end

Config.ServerNotification = function(source,message, time, type)

    TriggerClientEvent("codem-notification",source, message, time, type)
end


Citizen.CreateThread(function()
    if Config.Framework == "esx" then
        Config.StaffPermissions = {
            "superadmin",
            "admin",
            "mod",
        }
    else
        Config.StaffPermissions = {
            "god",
            "admin",
        }
    end
end)

Config.Notifications = {
    ["savedata"] = {
        type = "error",
        message = "Succes",
        time = 5000
    },
    ["sqlerror"] = {
        type = "error",
        message = "Fill in the required fields.",
        time = 5000
    },
    ["cooldown"] = {
        type = "error",
        message = "You have to wait before you can report it again..",
        time = 5000
    },
}

---- DİSCORD WEBHOOK --- 
Config.PlayerWebhook = "https://discord.com/api/webhooks/956949898287276083/9SYNeoYSEt9rjgil81IbU4fag7djXZoR0OchmREgZaNJAhU8XTwIukjzJ3G5wnOgkKav"
Config.AdminWebhook = "https://discord.com/api/webhooks/956949898287276083/9SYNeoYSEt9rjgil81IbU4fag7djXZoR0OchmREgZaNJAhU8XTwIukjzJ3G5wnOgkKav"
Config.IconURL = "https://cdn.discordapp.com/attachments/862018783391252500/943983046347063316/Patreon_Logo_3.png"
Config.Logo = "https://cdn.discordapp.com/attachments/862018783391252500/943983046347063316/Patreon_Logo_3.png"
Config.Botname = "Report Log"