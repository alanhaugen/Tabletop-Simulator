--https://api.tabletopsimulator.com/
--https://github.com/alanhaugen/Tabletop-Simulator

numberOfPlayers = 0 -- will be changed by playermenu, see ui.lua

function setupBoard(numberOfPlayers_)
    -- remove non-player pieces
    -- First, get the guids for the pieces
    -- Figure out what colours players have
end

function onPlayerConnect(player)
    colors = Player.getAvailableColors()
    player.changeColor(colors[1])
end

function onLoad()
    print("Dwarves - Gem Chase")

    hideAll();

    count = 0
    for _, player in ipairs(Player.getPlayers()) do
        count = count + 1
    end

    if (count == 1) then
        mainmenu()
        setupBoard(numberOfPlayers)
    end

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
