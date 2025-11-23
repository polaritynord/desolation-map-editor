local json = require("engine.lib.json")
local buttonEvents = require("game.button_clickevents")

local mainMenu = ENGINE_COMPONENTS.scriptComponent.new()

local function setupUI(ui)
    ui.title = ui:newTextLabel(
        {
            font = "big_hot";
            text = "DESOLATION Map Editor";
            position = {100, 100};
            size = 36;
        }
    )
    ui.newMapButton = ui:newTextButton(
        {
            textFont = "big_hot";
            buttonText = "New Map File";
            position = {100, 190};
            hoverEvent = buttonEvents.redHover;
            unhoverEvent = buttonEvents.redUnhover;
            clickEvent = function()
            end;
        }
    )
    ui.loadMapButton = ui:newTextButton(
        {
            textFont = "big_hot";
            buttonText = "Load Map File";
            position = {100, 240};
            hoverEvent = buttonEvents.redHover;
            unhoverEvent = buttonEvents.redUnhover;
            clickEvent = function(element)
                if element.awaitingFile then return end
                element.buttonText = "Please drag and drop the map file to the window..."
                element.awaitingFile = true
            end;
        }
    )
    ui.loadMapButton.awaitingFile = false
    ui.loadMapButton.openDroppedMap = function(file)
        file:open("r")
        local map = json.decode(file:read())
        --switch to map editing scene from here.
    end
    ui.quitButton = ui:newTextButton(
        {
            textFont = "big_hot";
            buttonText = "Quit";
            position = {100, 290};
            clickEvent = function ()
                love.event.quit()
            end;
            hoverEvent = buttonEvents.redHover;
            unhoverEvent = buttonEvents.redUnhover;
        }
    )
end

function mainMenu:load()
    setupUI(self.parent.UIComponent)
end

function mainMenu:update(delta)
    
end

return mainMenu