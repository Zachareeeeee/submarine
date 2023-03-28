local submarineInstance = {}
submarineInstance.__index = submarineInstance

local ballastTank = require(game.ReplicatedStorage.ballastTank)

function submarineInstance.new(mass, size)
    setmetatable({
        ballast = {
            main = {}
        }
    },submarineInstance)
end

function submarineInstance:update(newInstance) -- USED WHEN UPDATING CLIENT VALUES WITH SERVER ONES; You could also set the values manually
    if getmetatable(newInstance) == submarineInstance then
        for i,v in pairs(submarineInstance) do
            self[i] = v
        end
    else
        error("Attempted to update using an invalid submarine object!")
    end
end

function submarineInstance:step(dt)

end


return submarineInstance