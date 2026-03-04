underch.ores = {}
--registers an ore
function underch.ores.register_ore(name, id, texture, item, stonetexture, level)
	stonetexture = stonetexture or "default_stone.png"
	level = level or 1
	core.register_node("underch:" .. id .. "_ore", {
		description = name .. " Ore",
		tiles = {stonetexture .. "^" .. texture},
		groups = {cracky = level},
		drop = item,
		sounds = default.node_sound_stone_defaults(),
	})
end

--registers a dense ore
function underch.ores.register_dense_ore(name, id, texture, item, stonetexture, level)
	stonetexture = stonetexture or "default_stone.png"
	level = level or 1
	core.register_node("underch:" .. id .. "_dense_ore", {
		description = "Dense " .. name .. " Ore",
		tiles = {stonetexture.. "^" .. texture .. "^(" .. texture .. "^[transform7)"},
		groups = {cracky = level},
		 
		drop = {
			items = {{items = {item .. " 2"}}, {items = {item}, rarity = 2}}
		},
		sounds = default.node_sound_stone_defaults(),
	})
end


underch.ores.register_dense_ore("Coal", "coal", "default_mineral_coal.png", "default:coal_lump");
underch.ores.register_dense_ore("Iron", "iron", "default_mineral_iron.png", "default:iron_lump");
underch.ores.register_dense_ore("Copper", "copper", "default_mineral_copper.png", "default:copper_lump");
underch.ores.register_dense_ore("Gold", "gold", "default_mineral_gold.png", "default:gold_lump");
