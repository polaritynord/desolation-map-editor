local cameraController = {}

local function cameraMovement(camera, delta)
    local speed = 250
    if InputManager:isPressed("sprint_type_shit") then speed = speed * 1.5 end
    if InputManager:isPressed("camera_up") then
        camera.position[2] = camera.position[2] - speed*delta
    end
    if InputManager:isPressed("camera_down") then
        camera.position[2] = camera.position[2] + speed*delta
    end
    if InputManager:isPressed("camera_left") then
        camera.position[1] = camera.position[1] - speed*delta
    end
    if InputManager:isPressed("camera_right") then
        camera.position[1] = camera.position[1] + speed*delta
    end
end

function cameraController:load()
    
end

function cameraController:update(delta)
    local camera = self.parent
    cameraMovement(camera, delta)
end

return cameraController