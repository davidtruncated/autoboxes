me = game.Players.LocalPlayer.Character
--username = game.Players.LocalPlayer.Name
chosen = "Layout1"
eggtable = game.Workspace.Map.EGG_SPAWNS:GetChildren()

--[[for x,y in pairs(game.Workspace.Map.EGG_SPAWNS:GetDescendants()) do
    if y.name == "Eggicopter" then
        me:MoveTo(y.Position)
    end
end]]--
--[[if username == "midstacks" then
    chosen = "Layout1"
else
    chosen = "Layout2"
end]]--
--game.workspace.Map:FindFirstChild("Rocks"):Destroy()
--game.workspace.Map:FindFirstChild("Trees"):Destroy()

    --[[wait(0.4)
    while #clovers ~= 0 do
        clovers = game.Workspace.Clovers:GetChildren()
        if #clovers > 0 then
            me:MoveTo(clovers[1].Position)
            fireproximityprompt(clovers[1]:FindFirstChild("ProximityPrompt")) 
        end
        wait(0.1)
    end]]--


while wait(.5) do
    boxes = game.Workspace.Boxes:GetChildren()
    --clovers = game.Workspace.Clovers:GetChildren()
    while #boxes > 0 do
        boxes = game.Workspace.Boxes:GetChildren()
        if #boxes > 0 then
            me:MoveTo(boxes[1].Position)
        end
        wait(0.1)
    end
    for x,y in pairs(eggtable) do
        for index,stuff in pairs(y:GetChildren()) do
            if stuff:IsA("Part") then
                me:MoveTo(stuff.Position)
                wait(5)
            end
        end
    end
    wait(0.5)
    for x,y in pairs(game.Workspace:GetDescendants()) do
        if y.name == "Owner" then
            if y.Value == game.Players.LocalPlayer.Name then
                me:MoveTo(y.Parent.Base.Position)
                wait(1)
                game.ReplicatedStorage.Rebirth:InvokeServer()
                wait(3)
                game.ReplicatedStorage.Layouts:InvokeServer("Load",chosen)
                wait(2)
            end
        end
    end
end
