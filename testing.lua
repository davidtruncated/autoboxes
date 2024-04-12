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
    while #clovers ~= 0 do
        clovers = game.Workspace.Clovers:GetChildren()
        if #clovers > 0 then
            fireproximityprompt(clovers[1]:FindFirstChild("ProximityPrompt")) 
        end
        wait(0.3)
    end
end
