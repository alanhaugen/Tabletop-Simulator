.PONY: clean run

Saves/dwarves.json: Scripts/main.lua Scripts/head.json Scripts/ui.json Scripts/body.json Scripts/main.lua Scripts/ui.lua Scripts/ui.xml
	echo -n '"LuaScript": "' > intermediateScript
	awk -f Scripts/endline.awk Scripts/*.lua | sed -e 's/"/\\"/g' >> intermediateScript
	echo '",' >> intermediateScript
	echo '"LuaScriptState": "",' >> intermediateScript
	echo -n '  "XmlUI": "' > intermediateUI
	awk -f Scripts/endline.awk Scripts/*.xml | sed -e 's/"/\\"/g' >> intermediateUI
	echo '",' >> intermediateUI
	cat Scripts/head.json intermediateScript intermediateUI Scripts/ui.json Scripts/body.json > Saves/dwarves.json 
	dos2unix Saves/dwarves.json
	/g/Steam/steamapps/common/Tabletop\\ Simulator/Tabletop\\ Simulator.exe -novid

run:
	/g/Steam/steamapps/common/Tabletop\\ Simulator/Tabletop\\ Simulator.exe -novid
ifneq (,$(wildcard ./Saves/dwarves.json))
	cp Saves/dwarves.json Scripts/body.json
	sed -i '1,226d' Scripts/body.json
endif

clean:
	rm -rf Mods
	rm Saves/dwarves.json
