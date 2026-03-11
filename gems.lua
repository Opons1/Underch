underch.gems = {}

function underch.gems.register_gem(name, id)
	local block = "underch:" .. id .. "_block"
	local item = "underch:" .. id

	core.register_craftitem(item, {
		description = name,
		inventory_image = "underch_" .. id .. ".png"
	})

	core.register_node(block, {
		description = name .. " Block",
		tiles = {"underch_" .. id .. "_block.png"},
		groups = {cracky = 3, jit_shadow = 1},
		 
		is_ground_content = false,
		sounds = default.node_sound_glass_defaults(),
	})

	core.register_node("underch:" .. id .. "_ore", {
		description = name .. " Ore",
		tiles = {"default_stone.png^underch_" .. id .."_ore.png"},
		groups = {cracky=2},
		drop = item,
		sounds = default.node_sound_stone_defaults(),
	})

	core.register_node("underch:" .. id .. "_crystal", {
		description = name .. " Crystal",
		tiles = {"underch_" .. id .. "_crystal.png"},
		groups = {cracky = 2},
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "underch_crystal.obj",
		light_source = 4,
		is_ground_content = false,
		sounds = default.node_sound_glass_defaults(),
	})

	core.register_craft({
		output = block,
		recipe = {
			{item, item, item},
			{item, item, item},
			{item, item, item}
		}
	})

	core.register_craft({
		output = item .. " 9",
		type = "shapeless",
		recipe = {block}
	})

	core.register_craft({
		output = item .. " 2",
		type = "shapeless",
		recipe = {"underch:" .. id .. "_crystal"}
	})

	underch.functions.register_stairs(
		id .. "_block", 
		{cracky = 3},
		{"underch_" .. id .. "_block.png"},
		name .. " Block",
		default.node_sound_glass_defaults())
end

underch.gems.register_gem("Amethyst", "amethyst");
underch.gems.register_gem("Ruby", "ruby");
underch.gems.register_gem("Emerald", "emerald");
underch.gems.register_gem("Saphire", "saphire");
underch.gems.register_gem("Quartz", "quartz");
underch.gems.register_gem("Aquamarine", "aquamarine");
--ores
underch.ores.register_ore("Diorite Amethyst", "diorite_amethyst", "underch_amethyst_ore.png", "underch:amethyst", "underch_diorite.png", 2)
underch.ores.register_ore("Granite Ruby", "granite_ruby", "underch_ruby_ore.png", "underch:ruby", "underch_granite.png", 2)
underch.ores.register_ore("Phonolite Emerald", "phonolite_emerald", "underch_emerald_ore.png", "underch:emerald", "underch_phonolite.png", 2)
underch.ores.register_ore("Gneiss Saphire", "gneiss_saphire", "underch_saphire_ore.png", "underch:saphire", "underch_gneiss.png", 2)
underch.ores.register_ore("Diorite Quartz", "diorite_quartz", "underch_quartz_ore.png", "underch:quartz", "underch_diorite.png", 2)
underch.ores.register_ore("Diorite Aquamarine", "diorite_aquamarine", "underch_aquamarine_ore.png", "underch:aquamarine", "underch_diorite.png", 2)

core.register_node("underch:mese_crystal", {
	description = "Mese Crystal",
	tiles = {"underch_mese_crystal.png"},
	groups = {cracky = 2},
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "underch_crystal.obj",
	light_source = 4,
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
})

core.register_craft({
	output = "default:mese_crystal 2",
	type = "shapeless",
	recipe = {"underch:mese_crystal"}
})

