--[[
creator: Fsploit (and Vsty for Method)
website: https://getfrost.xyz/
discord: https://discord.gg/getfrost
]]--

local url = "https://raw.githubusercontent.com/Fspl0it/Blade-Ball/refs/heads/main/Game.lua"

local success, response = pcall(function()
    return game:HttpGet(url)
end)

if success and response and not response:find("404: Not Found") then
    local func, err = loadstring(response)
    if func then
        pcall(func)
    else
        warn("Failed to execute script:", err)
    end
else
    warn("Not Loaded")
end
