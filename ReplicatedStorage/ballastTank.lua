local ballastInstance = {}
ballastInstance.__index = ballastInstance

function ballastInstance.new(volume, fill, position)
    return setmetatable({
        fillRate = 0;
        volume = type(volume) == "number" and volume or 10;
        fill = type(fill) == "number" and fill or 0.5;
        position = type(position) == "vector" and position or Vector3.new();
    }, ballastInstance)
end

function ballastInstance:step(dt)
    self.fill = math.clamp(fill + fillRate / volume * dt, 0, 1)
end



return ballastInstance