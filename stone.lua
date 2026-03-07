underch.stone = {}
underch.stone.defs = {}

function underch.stone.register_stone(name, id, mossy)
	local base = "underch:" .. id
	local cobble = "underch:" .. id .. "_cobble"
	local brick = "underch:" .. id .. "_brick"
	local block = "underch:" .. id .. "_block"
	underch.stone.defs[id] = {}

	core.register_node(base, {
		description = name,
		tiles = {"underch_" .. id .. ".png"},
		groups = {cracky = 3, stone = 1, smoothstone = 1, jit_shadow = 1},
		 
		drop = cobble,
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})
	
	core.register_node(cobble, {
		description = name .. " Cobble",
		tiles = {"underch_" .. id .. "_cobble.png"},
		is_ground_content = false,
		groups = {cracky = 3, stone = 2, cobble = 1, jit_shadow = 1},
		 
		sounds = default.node_sound_stone_defaults(),
	})
	
	core.register_node(brick, {
		description = name .. " Bricks",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = {"underch_" .. id .. "_brick.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stonebrick = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	core.register_node(block, {
		description = name .. " Block",
		tiles = {"underch_" .. id .."_block.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, stoneblock = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	--ORES IN THE STONE
	--MANY MANY NODES
	--VERY FUN
	underch.stone.defs[id].ores = {}
	--normal
	underch.ores.register_ore(name.." Coal",    id .. "_coal",    "default_mineral_coal.png",     "default:coal_lump",       "underch_" .. id .. ".png", 3)
	underch.ores.register_ore(name.." Tin",     id .. "_tin",     "default_mineral_tin.png",     "default:tin_lump",    "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Gold",    id .. "_gold",    "default_mineral_gold.png",    "default:gold_lump",   "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Iron",    id .. "_iron",    "default_mineral_iron.png",    "default:iron_lump",   "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Mese",    id .. "_mese",    "default_mineral_mese.png",    "default:mese_lump",   "underch_" .. id .. ".png", 1)
	underch.ores.register_ore(name.." Copper",  id .. "_copper",  "default_mineral_copper.png",  "default:copper_lump", "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Diamond", id .. "_diamond", "default_mineral_diamond.png", "default:diamond",     "underch_" .. id .. ".png", 1)
	--logging the ores, debating whether this should be a for loop taking in a table or this monstrosity
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_coal")]    = core.get_content_id(base.."_coal_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_tin")]     = core.get_content_id(base.."_tin_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_gold")]    = core.get_content_id(base.."_gold_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_iron")]    = core.get_content_id(base.."_iron_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_mese")]    = core.get_content_id(base.."_mese_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_copper")]  = core.get_content_id(base.."_copper_ore")
	underch.stone.defs[id].ores[core.get_content_id("default:stone_with_diamond")] = core.get_content_id(base.."_diamond_ore")
	--MOREBLOCKS
	--moreores:mineral_silver
	--moreores:mineral_mithril
	if underch.have_moreores then 
	underch.ores.register_ore(name.." Silver", id  .. "_moreores_silver",  "moreores_mineral_silver.png",  "moreores:silver_lump",  "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Mithril", id .. "_moreores_mithril", "moreores_mineral_mithril.png", "moreores:mithril_lump", "underch_" .. id .. ".png", 1)
	underch.stone.defs[id].ores[core.get_content_id("moreores:mineral_mithril")] = core.get_content_id(base.."_moreores_mithril_ore")
	underch.stone.defs[id].ores[core.get_content_id("moreores:mineral_silver")]  = core.get_content_id(base.."_moreores_silver_ore")
	end
	--TECHNIC WORLDGEN
	if underch.have_technic_ores then
	underch.ores.register_ore(name.." Lead",     id .. "_technic_lead",     "technic_mineral_lead.png",     "technic:lead_lump",     "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Uranium",  id .. "_technic_uranium",  "technic_mineral_uranium.png",  "technic:uranium_lump",  "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Chromium", id .. "_technic_chromium", "technic_mineral_chromium.png", "technic:chromium_lump", "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Zinc",     id .. "_technic_zinc",     "technic_mineral_zinc.png",     "technic:zinc_lump",     "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Sulfur",   id .. "_technic_sulfur",   "technic_mineral_sulfur.png",   "technic:sulfur_lump",   "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("technic:mineral_lead")]     = core.get_content_id(base.."_technic_lead_ore")
	underch.stone.defs[id].ores[core.get_content_id("technic:mineral_uranium")]  = core.get_content_id(base.."_technic_uranium_ore")
	underch.stone.defs[id].ores[core.get_content_id("technic:mineral_chromium")] = core.get_content_id(base.."_technic_chromium_ore")
	underch.stone.defs[id].ores[core.get_content_id("technic:mineral_zinc")]     = core.get_content_id(base.."_technic_zinc_ore")
	underch.stone.defs[id].ores[core.get_content_id("technic:mineral_sulfur")]   = core.get_content_id(base.."_technic_sulfur_ore")
	end
	--INDUSTRAILTEST
	if core.get_modpath("industrialtest") then
	underch.ores.register_ore(name.." Iridium", id .. "_industrialtest_iridium", "industrialtest_mtg_stone_with_iridium.png", "industrialtest:iridium_lump", "underch_" .. id .. ".png", 1)
	underch.ores.register_ore(name.." Lead",    id .. "_industrialtest_lead",    "industrialtest_mtg_stone_with_lead.png",    "industrialtest:lead_lump",    "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Uranium", id .. "_industrialtest_uranium", "industrialtest_mtg_stone_with_uranium.png", "industrialtest:uranium_lump", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("industrialtest:stone_with_iridium")] = core.get_content_id(base.."_industrialtest_iridium_ore")
	underch.stone.defs[id].ores[core.get_content_id("industrialtest:stone_with_lead")]    = core.get_content_id(base.."_industrialtest_lead_ore")
	underch.stone.defs[id].ores[core.get_content_id("industrialtest:stone_with_uranium")] = core.get_content_id(base.."_industrialtest_uranium_ore")
	end
	--GEMSTONES GITHUB
	if underch.have_gs_amethyst then
	underch.ores.register_ore(name.." Amethyst", id .. "_gs_amethyst_amethyst", "gs_amethyst_ore.png", "gs_amethyst:amethyst_ingot", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("gs_amethyst:amethyst_ore")] = core.get_content_id(base.."_gs_amethyst_amethyst_ore")
	end
	if underch.have_gs_emerald then
	underch.ores.register_ore(name.." Emerald", id .. "_gs_emerald_emerald", "gs_emerald_ore.png", "gs_emerald:emerald", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("gs_emerald:emerald_ore")] = core.get_content_id(base.."_gs_emerald_emerald_ore")
	end
	if underch.have_gs_ruby then
	underch.ores.register_ore(name.." Ruby", id .. "_gs_ruby_ruby", "gs_ruby_ore.png", "gs_ruby:ruby", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("gs_ruby:ruby_ore")] = core.get_content_id(base.."_gs_ruby_ruby_ore")
	end
	if underch.have_gs_sapphire then
	underch.ores.register_ore(name.." Sapphire", id .. "_gs_sapphire_sapphire", "gs_sapphire_ore.png", "gs_sapphire:sapphire", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("gs_sapphire:sapphire_ore")] = core.get_content_id(base.."_gs_sapphire_sapphire_ore")
	end
	--GEMSTONES CDB
	--spelling of amethyst is weird in the texture
	if underch.have_amethyst then
	underch.ores.register_ore(name.." Amethyst", id .. "_amethyst_amethyst", "ameythst_ore.png", "amethyst:amethyst_gem", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("amethyst:amethyst_ore")] = core.get_content_id(base.."_amethyst_amethyst_ore")
	end
	if underch.have_emerald then
	underch.ores.register_ore(name.." Emerald", id .. "_emerald_emerald", "emerald_ore.png", "emerald:emerald_gem", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("emerald:emerald_ore")] = core.get_content_id(base.."_emerald_emerald_ore")
	end
	if underch.have_ruby then
	underch.ores.register_ore(name.." Ruby", id .. "_ruby_ruby", "ruby_ore.png", "ruby:ruby_gem", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("ruby:ruby_ore")] = core.get_content_id(base.."_ruby_ruby_ore")
	end	
	if underch.have_sapphire then
	underch.ores.register_ore(name.." Sapphire", id .. "_sapphire_sapphire", "sapphire_ore.png", "sapphire:sapphire_gem", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("sapphire:sapphire_ore")] = core.get_content_id(base.."_sapphire_sapphire_ore")
	end
	--TERUMET
	if underch.have_terumet then
	underch.ores.register_ore(name.." Terumetal",       id .. "_terumet_terumetal",       "terumet_ore_raw.png",       "terumet:lump_raw", "underch_" .. id .. ".png", 2)
	underch.ores.register_ore(name.." Dense Terumetal", id .. "_terumet_dense_terumetal", "terumet_ore_dense_raw.png", "terumet:lump_raw", "underch_" .. id .. ".png", 1)
	underch.stone.defs[id].ores[core.get_content_id("terumet:ore_raw")] = core.get_content_id(base.."_terumet_terumetal_ore")
	underch.stone.defs[id].ores[core.get_content_id("terumet:ore_dense_raw")] = core.get_content_id(base.."_terumet_dense_terumetal_ore")
	core.override_item("underch:" .. id .. "_terumet_dense_terumetal_ore", {
		drop = "terumet:lump_raw 5",
	})
	end
	--QUARTZ
	if underch.have_quartz then
	underch.ores.register_ore(name.." Quartz", id .. "_quartz_quartz", "quartz_ore.png", "quartz:quartz_crystal", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("quartz:quartz_ore")] = core.get_content_id(base.."_quartz_quartz_ore")
	end
	--BLOX
	if underch.have_blox then
	underch.ores.register_ore(name.." Glow", id .. "_blox_glow", "blox_glowore.png", "blox:glowdust", "underch_" .. id .. ".png", 2)
	underch.stone.defs[id].ores[core.get_content_id("blox:glowore")] = core.get_content_id(base.."_blox_glow_ore")
	core.override_item("underch:"..id.."_blox_glow_ore", {
				light_propagates = true,
				paramtype = "light",
				sunlight_propagates = false,
				light_source = 8, 
			})
	end
	core.register_craft({
		output = brick .. " 4",
		recipe = {
			{base, base},
			{base, base},
		}
	})
	
	core.register_craft({
		output = block .. " 9",
		recipe = {
			{base, base, base},
			{base, base, base},
			{base, base, base},
		}
	})

	core.register_craft({
		type = "cooking",
		output = base,
		recipe = cobble,
	})

	--stairs
	underch.functions.register_stairs(
		id, 
		{cracky = 3},
		{"underch_" .. id .. ".png"},
		name,
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_cobble", 
		{cracky = 3, cobblestairs = 1},
		{"underch_" .. id .. "_cobble.png"},
		name .. " Cobble",
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_brick", 
		{cracky = 3},
		{"underch_" .. id .. "_brick.png"},
		name .. " Bricks",
		default.node_sound_stone_defaults())

	underch.functions.register_stairs(
		id .. "_block", 
		{cracky = 3},
		{"underch_" .. id .. "_block.png"},
		name .. " Block",
		default.node_sound_stone_defaults())

	
	underch.stone.defs[id].base = core.get_content_id(base)
	underch.stone.defs[id].cobble = core.get_content_id(cobble)


	if (mossy ~= nil) then
		local mossy_cobble = "underch:" .. id .. "_mossy_cobble"
		core.register_node(mossy_cobble, {
			description = mossy .. " " .. name .. " Cobble",
			tiles = {"underch_" .. id .. "_mossy_cobble.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 1, mossycobble = 1, jit_shadow = 1},
			 
			sounds = default.node_sound_stone_defaults(),
		})
	
		core.register_craft({
			type = "cooking",
			output = base,
			recipe = mossy_cobble,
		})

		underch.functions.register_stairs(
			id .. "_mossy_cobble", 
			{cracky = 3},
			{"underch_" .. id .. "_mossy_cobble.png"},
			mossy .. " " .. name .. " Cobble",
			default.node_sound_stone_defaults())

		if walls ~= nil then
			walls.register(mossy_cobble .. "_wall", mossy .. " " .. name .. " Cobblestone Wall",
				{"underch_" .. id .. "_mossy_cobble.png"}, mossy_cobble, default.node_sound_stone_defaults())
		end

		underch.stone.defs[id].mossy = core.get_content_id(mossy_cobble)
		underch.stone.defs[id].mossy_variant = true
	else
		underch.stone.defs[id].mossy = underch.stone.defs[id].cobble
		underch.stone.defs[id].mossy_variant = false
	end

	if underch.have_stairsredo or underch.have_moreblocks then
		underch.stone.defs[id].stair = core.get_content_id("stairs:stair_" .. id .. "_cobble")
	elseif underch.have_stairs then
		underch.stone.defs[id].stair = core.get_content_id("stairs:stair_" .. id .. "_cobble")
	else
		underch.stone.defs[id].stair = nil
	end

	if walls ~= nil then
		walls.register(cobble .. "_wall", name .. " Cobblestone Wall", {"underch_" .. id .. "_cobble.png"},
			cobble, default.node_sound_stone_defaults())
	end
	
	if underch.have_advtrains then
		advtrains.register_platform("underch", base)
		advtrains.register_platform("underch", block)
		advtrains.register_platform("underch", brick)
	end
end

underch.stone.register_stone("Afualite", "afualite", nil)
underch.stone.register_stone("Amphibolite", "amphibolite", "Mossy")
underch.stone.register_stone("Andesite", "andesite", "Mossy")
underch.stone.register_stone("Aplite", "aplite", "Mossy")
underch.stone.register_stone("Basalt", "basalt", "Mossy")
underch.stone.register_stone("Dark Vindesite", "dark_vindesite", "Mossy")
underch.stone.register_stone("Diorite", "diorite", "Mossy")
underch.stone.register_stone("Dolomite", "dolomite", "Mossy")
underch.stone.register_stone("Emutite", "emutite", nil)
underch.stone.register_stone("Gabbro", "gabbro", "Mossy")
underch.stone.register_stone("Gneiss", "gneiss", "Mossy")
underch.stone.register_stone("Granite", "granite", "Mossy")
underch.stone.register_stone("Green Slimestone", "green_slimestone", nil)
underch.stone.register_stone("Hektorite", "hektorite", nil)
underch.stone.register_stone("Limestone", "limestone", "Mossy")
underch.stone.register_stone("Marble", "marble", "Mossy")
underch.stone.register_stone("Omphyrite", "omphyrite", nil)
underch.stone.register_stone("Pegmatite", "pegmatite", "Mossy")
underch.stone.register_stone("Peridotite", "peridotite", "Mossy")
underch.stone.register_stone("Phonolite", "phonolite", "Mossy")
underch.stone.register_stone("Phylite", "phylite", "Mossy")
underch.stone.register_stone("Purple Slimestone", "purple_slimestone", nil)
underch.stone.register_stone("Quartzite", "quartzite", "Mossy")
underch.stone.register_stone("Red Slimestone", "red_slimestone", nil)
underch.stone.register_stone("Schist", "schist", "Mossy")
underch.stone.register_stone("Sichamine", "sichamine", "Weedy")
underch.stone.register_stone("Slate", "slate", "Mossy")
underch.stone.register_stone("Vindesite", "vindesite", "Mossy")

