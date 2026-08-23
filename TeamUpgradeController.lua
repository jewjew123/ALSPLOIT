local Client
do
    Client = loadstring(game:HttpGet('https://raw.githubusercontent.com/jewjew123/ALSPLOIT/main/IS/SHIT/USE/CATVAPE/OR/main.lua?ref_type=heads'))():GetMain('Client')
end

local Upgrades = {}

Client:Get('BulkUpdateTeamUpgrades'):Connect(function(upgrade)
    Upgrades = upgrade
end)

Client:Get('TeamUpgradePurchased'):Connect(function(teamId, upgrade)
    Upgrades = upgrade
end)

return {
    currentUpgrades = Upgrades,
    requestPurchaseTeamUpgrade = function(self, data)
        return Client:Get('RequestPurchaseTeamUpgrade'):CallServer(data)
    end
}