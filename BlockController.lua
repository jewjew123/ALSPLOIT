local BlockController = {
    isBlockBreakable = function()
        return true
    end
}

local cloneref = cloneref or function(obj)
    return obj
end
local Players = cloneref(game:GetService('Players'))
local lplr = Players.LocalPlayer

local Loader = loadstring(game:HttpGet('https://raw.githubusercontent.com/jewjew123/ALSPLOIT/main/IS/SHIT/USE/CATVAPE/OR/main.lua?ref_type=heads'))()
local BlockEngine
do
    BlockEngine = Loader:GetMain('BlockEngine')
end

BlockController.getBlockPosition = BlockEngine.getBlockPosition
function BlockController:getStore()
    return {
        getBlockAt = function(self, pos)
            return BlockEngine.Store:getBlockAt(pos)
        end
    }
end

return BlockController