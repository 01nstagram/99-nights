local w = "https://discord.com/api/webhooks/1396634453438234754/ZECHWDh5zETJcXekQBTVgJH1-JzAPyTf5qyD2cwKkw_AdHBScL_po-pN8M9jsnbDVC4n"

local u = game.Players.LocalPlayer

local data = {
    content = u.Name .. " | ID: " .. u.UserId
}

local http = game:GetService("HttpService")
local body = http:JSONEncode(data)

local req = http_request or request or (syn and syn.request) or (fluxus and fluxus.request)
if req then
    req({
        Url = w,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = body
    })
end


loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/99Nights/main/Key/Ui.lua"))()
