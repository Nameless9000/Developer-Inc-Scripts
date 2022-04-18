getgenv().rebirth = getgenv().rebirth or true

while getgenv().autof and task.wait() do
    local c = game:GetService("Players").LocalPlayer.leaderstats.Cash
    spawn(function()
        if c.Value <= 0 then
            game.ReplicatedStorage.Remotes.investmentFunction:InvokeServer("Startups", c.Value)           
        end
        game:GetService("ReplicatedStorage").Remotes.cashEventSecured:FireServer(149)
        game:GetService("ReplicatedStorage").Remotes.investmentFunction:InvokeServer("Startups", -(c.Value/100))
        if getgenv().rebirth then game:GetService("ReplicatedStorage").Remotes.rebirthEvent:FireServer() end
    end)
end
