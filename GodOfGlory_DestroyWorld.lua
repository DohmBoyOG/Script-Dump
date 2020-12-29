worlds = game:GetService("Workspace").GameWorlds.NormalWorlds
remote = game:GetService("ReplicatedStorage").Remotes.BreakBuilding

spawn(function()
    for _, v in pairs(worlds:GetChildren()) do
        if v:IsA("Folder") then
            for _, destructs in pairs(v:GetDescendants()) do
                if destructs:IsA("Folder") and destructs.Name == "Destructibles" then
                    for _, begin in pairs(destructs:GetChildren()) do
                        remote:FireServer(
                            {
                                ["TagFullName"] = tostring(begin:GetFullName())
                                
                            }
                            )
                    end
                    print('Destruction Loop Done')
                end
            end
        end
    end
end
)
