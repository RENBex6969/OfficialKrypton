local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Nick-s-Modded-KAVO-Lib/main/Nick'sModdedKavoLib.lua"))()
local Window = Library.CreateLib("Krypton | Suggestion", DarkTheme)
local Home = Window:NewTab("Suggestion")
local Section = Home:NewSection("Suggestion")
local DiscordWebhook = "https://discord.com/api/webhooks/1247894041245388933/MtYeapmwhYoMWnxzG7MrcLldXwQFVTBdvFdZX15fVC0bsnZp7j5Bq1h66-RG5I9OAAjC"
Section:NewTextBox("Suggestion", "Type Here", function(text)
   feedbackMessage = text
end)

Section:NewButton("Send Suggestion", "Send", function()
   if feedbackMessage then
      local HttpService = game:GetService("HttpService")
      local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
      local player = game.Players.LocalPlayer
      local username = player.Name
      local displayName = player.DisplayName
      local userId = player.UserId
      local accountAge = player.AccountAge
      local gameName = game.Name
      local gameId = game.GameId
      local executor = identifyexecutor() or "unknown"
      local timestamp = os.date("%c")

      local payload = {
          ["embeds"] = {
            {
             ["title"] = "*Feedback*",
             ["description"] = feedbackMessage,
             ["color"] = 16711680,
             ["fields"] = {
               {
                ["name"] = "Sent By",
                ["value"] = displayName,
                ["inline"] = true
               },
               {
                ["name"] = "Username",
                ["value"] = username,
                ["inline"] = true
               },
               {
                ["name"] = "Display Name",
                ["value"] = displayName,
                ["inline"] = true
               },
               {
                ["name"] = "User ID",
                ["value"] = userId,
                ["inline"] = true
               },
               {
                ["name"] = "Account Age",
                ["value"] = accountAge .. " days",
                ["inline"] = true
               },
               {
                ["name"] = "Game Name",
                ["value"] = gameName,
                ["inline"] = true
               },
               {
                ["name"] = "Game Id",
                ["value"] = gameId,
                ["inline"] = true
               },
               {
                ["name"] = "Executor",
                ["value"] = executor,
                ["inline"] = true
               }
               {
                ["name"] = "HWID",
                ["value"] = HWID,
                ["inline"] = true
               }
            },
             ["footer"] = {
              ["text"] = "Time Sent: " .. timestamp
                    }
                }
            }
        }

        local payloadJson = HttpService:JSONEncode(payload)

        local headers = {
            ["Content-Type"] = "application/json"
        }

        local success, errorMessage = pcall(function()
            HttpService:PostAsync(DiscordWebhook, payloadJson, Enum.HttpContentType.ApplicationJson, false, headers)
        end)

        if success then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Success",
                Text = "Feedback sent successfully to API!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Error",
                Text = "Failed to send feedback to API: " .. errorMessage,
                Duration = 5
            })
        end
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Please enter feedback before sending.",
            Duration = 5
        })
    end
end)
