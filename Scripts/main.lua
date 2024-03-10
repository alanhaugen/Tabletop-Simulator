--https://api.tabletopsimulator.com/
--https://github.com/alanhaugen/Tabletop-Simulator

function startbutton()
    self.UI.hide("startmenu")
    self.UI.show("playermenu")
end

function playerbutton(numberOfPlayers)
    self.UI.hide("playermenu")
end

function creditsbutton()
    self.UI.hide("startmenu")
    self.UI.show("creditsmenu")
end

function mainmenu()
    self.UI.hide("playermenu")
    self.UI.hide("creditsmenu")
    self.UI.show("startmenu")
end

function onLoad()
    print("Dwarves - Gem Chase")

    mainmenu();

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
