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

