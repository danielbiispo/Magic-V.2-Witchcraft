local LocalPlayer = game.Players.LocalPlayer
local BadgeService = game:GetService("BadgeService")
local MarketplaceService = game:GetService("MarketplaceService")

math.randomseed(tick())

while true do
    local var4 = 500 
    local var5 = 1


    local wday = os.date("!*t").wday
    if (wday == 1 or wday == 7) and game.Workspace.Terrain["3×Event"].Value == false then
        var5 = 2
    elseif game.Workspace.Terrain["3×Event"].Value == true then
        var5 = 2.5
    end

    
    if MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 21746838) or
       MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 29966402) then
        var4 += 5
    end
    if MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 161789833) then
        var4 += 1
    end

    
    local badgeIds = {
        2125125153, 2125092057, 2143232127,
        3999695957004831, 3918338430588712
    }
    for _, badgeId in ipairs(badgeIds) do
        if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, badgeId) then
            if badgeId == 3918338430588712 then
                var4 += 2
            else
                var4 += 1
            end
        end
    end

    
    game:GetService("ReplicatedStorage").Remotes.GiveCurrency:FireServer(var4 * var5)


    wait(math.random(8, 12))
end
