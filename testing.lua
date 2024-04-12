me = game.Players.LocalPlayer.Character
while wait(.5) do
    boxes = game.Workspace.Boxes:GetChildren()
    clovers = game.Workspace.Clovers:GetChildren()
    while #boxes ~= 0 do
        boxes = game.Workspace.Boxes:GetChildren()
        if #boxes > 0 then
            me:MoveTo(boxes[1].Position)
        end
        wait(0.2)
    end
    wait(0.4)
    while #clovers ~= 0 and #boxes == 0 do
        boxes = game.Workspace.Boxes:GetChildren()
        clovers = game.Workspace.Clovers:GetChildren()
        if #clovers > 0 then
            me:MoveTo(clovers[1].Position)
            fireproximityprompt(clovers[1]:FindFirstChild("ProximityPrompt")) 
        end
        wait(0.1)
    end
    wait(0.5)
    for x,y in pairs(game.Workspace:GetDescendants()) do
        if y.name == "Owner" then
            if y.Value == "midstacks" then
            me:MoveTo(y.Parent.Base.Position)
            end
        end
    end
    wait(1)
end
