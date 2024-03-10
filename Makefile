.PONY: clean

Saves/dwarves.json: Scripts/main.lua Scripts/head.json Scripts/ui.json Scripts/body.json Scripts/main.lua Scripts/ui.xml
	echo -n '"LuaScript": "' > intermediateScript
	awk -f Scripts/endline.awk Scripts/main.lua | sed -e 's/"/\\"/g' >> intermediateScript
	echo '",' >> intermediateScript
	echo '"LuaScriptState": "",' >> intermediateScript
	echo -n '  "XmlUI": "' > intermediateUI
	awk -f Scripts/endline.awk Scripts/ui.xml | sed -e 's/"/\\"/g' >> intermediateUI
	echo '",' >> intermediateUI
	cat Scripts/head.json intermediateScript intermediateUI Scripts/ui.json Scripts/body.json > Saves/dwarves.json 
	dos2unix Saves/dwarves.json

clean:
	rm -rf Mods
	rm Saves/dwarves.json
