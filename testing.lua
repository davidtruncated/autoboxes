me = game.Players.LocalPlayer.Character
username = game.Players.LocalPlayer.Name
chosen = "Layout1"

--game.workspace.Map:FindFirstChild("Rocks"):Destroy()
if game.workspace.Map:FindFirstChild("Trees") then
    game.workspace.Map:FindFirstChild("Trees"):Destroy()
end


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
            wait()
            me.Humanoid.Jump = true
        end
        wait(0.1)
    end
    --[[for x,y in pairs(game.Workspace:GetDescendants()) do
        if y.Name == "EGGSPAWN" or y.Name == "BANANASPAWN" or y.Name == "SPORESTSPAWN" then
            if #y:GetDescendants() > 1 then
                me:MoveTo(y.Position)
                wait(0.5)
                for index,item in pairs(y:GetDescendants()) do
                    if item.Name == "ProximityPrompt" then
                        fireproximityprompt(item)
                        wait(0.5)
                        fireproximityprompt(item)
                    end
                end
            end
        end
    end]]--
    wait(0.5)
    for x,y in pairs(game.Workspace:GetDescendants()) do
        if y.name == "Owner" then
            if y.Value == username then
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
