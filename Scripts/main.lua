--https://api.tabletopsimulator.com/
--https://github.com/alanhaugen/Tabletop-Simulator

function uibutton()
    self.UI.hide("startmenu")
    self.UI.show("playermenu")
end

function ShowLogo()
    print("Dwarves - Gem Chase")
end

function onLoad()
    self.UI.hide("playermenu")

    ShowLogo()

    -- Select the amount of players
    -- Indicate what color each player is
    -- Setup players
    -- Place player tokens in home base
    -- Give random mission card

    -- Main loop
    -- Player i Start
    -- Detect action points being used
    -- Card Get
    -- Detect card use
    -- Fighting
    -- Next turn after 4 action points
    -- Gameover - Player i wins!
end

function onUpdate()
end
