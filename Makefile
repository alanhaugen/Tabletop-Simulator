.PONY: clean

Saves/dwarves.json: Scripts/main.lua Scripts/head.json Scripts/lua.json Scripts/ui.json Scripts/body.json
	cat Scripts/head.json Scripts/lua.json Scripts/ui.json Scripts/body.json > Saves/dwarves.json 
	dos2unix Saves/dwarves.json

clean:
	rm -rf Mods
