local LocalPlayer = game.Players.LocalPlayer
local BadgeService = game:GetService("BadgeService")
local MarketplaceService = game:GetService("MarketplaceService")

while true do
    local var4
    if not wait(30) then break end
    local var5 = 1
    var4 = 500 

    local wday = os.date("!*t").wday
    if wday == 1 or wday == 7 and game.Workspace.Terrain["3\xD7Event"].Value == false then
        var5 = 2
    else
        var5 = 1
        if game.Workspace.Terrain["3\xD7Event"].Value == true then
            var5 = 2.5
        end
    end

    if MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 21746838) or MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 29966402) then
        var4 += 5
    end
    if MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 161789833) then
        var4 += 1
    end
    if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, 2125125153) then
        var4 += 1
    end
    if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, 2125092057) then
        var4 += 1
    end
    if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, 2143232127) then
        var4 += 1
    end
    if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, 3999695957004831) then
        var4 += 1
    end
    if BadgeService:UserHasBadgeAsync(LocalPlayer.UserId, 3918338430588712) then
        var4 += 2
    end

    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.GiveCurrency:FireServer(var4 * var5)
end
