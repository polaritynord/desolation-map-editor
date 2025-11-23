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
        }
    )
    ui.loadMapButton = ui:newTextButton(
        {
            textFont = "big_hot";
            buttonText = "Load Map File";
            position = {100, 240};
            hoverEvent = buttonEvents.redHover;
            unhoverEvent = buttonEvents.redUnhover;
        }
    )
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