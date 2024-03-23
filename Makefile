.PONY: clean run

COMPILE_PLATFORM = $(shell uname)

Saves/dwarves.json: Scripts/main.lua Scripts/head.json Scripts/ui.json Scripts/body.json Scripts/main.lua Scripts/ui.lua Scripts/ui.xml
	echo '"LuaScript": "' > intermediateScript
	awk -f Scripts/endline.awk Scripts/*.lua | sed -e 's/"/\\"/g' >> intermediateScript
	echo '",' >> intermediateScript
	echo '"LuaScriptState": "",' >> intermediateScript
	echo '  "XmlUI": "' > intermediateUI
	awk -f Scripts/endline.awk Scripts/*.xml | sed -e 's/"/\\"/g' >> intermediateUI
	echo '",' >> intermediateUI
	cat Scripts/head.json intermediateScript intermediateUI Scripts/ui.json Scripts/body.json > Saves/dwarves.json 
ifeq ($(COMPILE_PLATFORM), Darwin)
	open ~/Library/Application\ Support/Steam/steamapps/common/Tabletop\ Simulator/Tabletop\ Simulator.app
else
	dos2unix Saves/dwarves.json
	/g/Steam/steamapps/common/Tabletop\\ Simulator/Tabletop\\ Simulator.exe -novid
endif
	cp Art/dwarves.png Saves

run:
ifeq ($(COMPILE_PLATFORM), Darwin)
	open ~/Library/Application\ Support/Steam/steamapps/common/Tabletop\ Simulator/Tabletop\ Simulator.app
else
	/g/Steam/steamapps/common/Tabletop\\ Simulator/Tabletop\\ Simulator.exe -novid
endif
ifneq (,$(wildcard ./Saves/dwarves.json))
	cp Saves/dwarves.json Scripts/body.json
	sed -i '1,248d' Scripts/body.json
	cp Art/dwarves.png Saves
endif

clean:
	rm -rf Mods
	rm Saves/dwarves.json
