for __,v in pairs(game.Players:GetChildren()) do
   if v.Name == game.Players.LocalPlayer.Name then
       print("HOLDER")
       else
       local a = Instance.new("BillboardGui",v.Character.HumanoidRootPart)
       a.Size = UDim2.new(10,0, 10,0)
       a.AlwaysOnTop = true    
       local b = Instance.new("Frame",a)
       b.Size = UDim2.new(1,0, 1,0)  
       b.BackgroundTransparency = 0.75
       b.BorderSizePixel = 0
       b.BackgroundColor3 = Color3.new(0, 17, 255)
   end
end
