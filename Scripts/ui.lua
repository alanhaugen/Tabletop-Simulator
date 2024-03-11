function startbutton()
    hideAll();
    self.UI.show("playermenu")
end

function playerbutton(numberOfPlayers_)
    hideAll();
    numberOfPlayers = numberOfPlayers
end

function creditsbutton()
    hideAll();
    self.UI.show("creditsmenu")
end

function mainmenu()
    hideAll();
    self.UI.show("startmenu")
end

function hideAll()
    self.UI.hide("playermenu")
    self.UI.hide("creditsmenu")
    self.UI.hide("startmenu")
end

