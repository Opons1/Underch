--CUSTOM STUFF FOR OPONS WORLD
local ymax = -7100

-- used blocks
--basic stuff
local c_air         = core.get_content_id("air")
local c_stone       = core.get_content_id("default:stone")
local c_water       = core.get_content_id("default:water_source")
local c_lava        = core.get_content_id("default:lava_source")
local c_dirt        = core.get_content_id("default:dirt")
local c_cobble      = core.get_content_id("default:cobble")
local c_mossycobble = core.get_content_id("default:mossycobble")
local c_cobblestair = nil
if core.registered_nodes["stairs:stair_cobble"] then
	if core.registered_aliases["stairs:stair_cobble"] then
		c_cobblestair = core.get_content_id(core.registered_aliases["stairs:stair_cobble"])
	else
		c_cobblestair = core.get_content_id("stairs:stair_cobble")
	end
end
--dense ores
local c_amphibolite_coal_dense_ore = core.get_content_id("underch:amphibolite_coal_dense_ore")
local c_schist_coal_dense_ore      = core.get_content_id("underch:schist_coal_dense_ore")
local c_granite_iron_dense_ore     = core.get_content_id("underch:granite_iron_dense_ore")
local c_gneiss_copper_dense_ore    = core.get_content_id("underch:gneiss_copper_dense_ore")
local c_basalt_gold_dense_ore      = core.get_content_id("underch:basalt_gold_dense_ore")

local c_coalblock                = core.get_content_id("default:coalblock")
local c_dust                     = core.get_content_id("underch:dust")
local c_coal_dust                = core.get_content_id("underch:coal_dust")
local c_ruby_dust                = core.get_content_id("underch:ruby_dust")
local c_coal_diamond             = core.get_content_id("underch:coal_diamond")
local c_vindesite_quartz_ore     = core.get_content_id("underch:vindesite_quartz_ore")
local c_burner                   = core.get_content_id("underch:burner")
local c_black_slime              = core.get_content_id("underch:dynamic_black_slime")
local c_black_slimy_block        = core.get_content_id("underch:dynamic_black_slimy_block")
local c_green_slime              = core.get_content_id("underch:dynamic_green_slime")
local c_green_slimy_block        = core.get_content_id("underch:dynamic_green_slimy_block")
local c_red_slime                = core.get_content_id("underch:dynamic_red_slime")
local c_red_slimy_block          = core.get_content_id("underch:dynamic_red_slimy_block")
local c_purple_slime             = core.get_content_id("underch:dynamic_purple_slime")
local c_purple_slimy_block       = core.get_content_id("underch:dynamic_purple_slimy_block")
local c_brown_mushroom           = core.get_content_id("flowers:mushroom_brown")
local c_red_mushroom             = core.get_content_id("flowers:mushroom_red")
local c_black_mushroom           = core.get_content_id("underch:black_mushroom")
local c_orange_mushroom          = core.get_content_id("underch:orange_mushroom")
local c_green_mushroom           = core.get_content_id("underch:green_mushroom")
local c_burning_mushroom         = core.get_content_id("underch:burning_mushroom")
local c_dark_tuber               = core.get_content_id("underch:dark_tuber")
local c_dark_sichamine           = core.get_content_id("underch:dark_sichamine")
local c_weedy_sichamine          = core.get_content_id("underch:weedy_sichamine")
local c_sichamine_lamp           = core.get_content_id("underch:sichamine_lamp")
local c_mossy_dirt               = core.get_content_id("underch:mossy_dirt")
local c_torchberries             = core.get_content_id("underch:torchberries")
local c_moss                     = core.get_content_id("underch:moss")
local c_dry_moss                 = core.get_content_id("underch:dry_moss")
local c_underground_bush         = core.get_content_id("underch:underground_bush")
local c_dead_bush                = core.get_content_id("underch:dead_bush")
local c_mould                    = core.get_content_id("underch:mould")
local c_underground_vine         = core.get_content_id("underch:underground_vine")
local c_amethyst_ore             = core.get_content_id("underch:amethyst_ore")
local c_amethyst_crystal         = core.get_content_id("underch:amethyst_crystal")
local c_emerald_ore              = core.get_content_id("underch:emerald_ore")
local c_emerald_crystal          = core.get_content_id("underch:emerald_crystal")
local c_ruby_ore                 = core.get_content_id("underch:ruby_ore")
local c_ruby_crystal             = core.get_content_id("underch:ruby_crystal")
local c_saphire_ore              = core.get_content_id("underch:saphire_ore")
local c_saphire_crystal          = core.get_content_id("underch:saphire_crystal")
local c_aquamarine_ore           = core.get_content_id("underch:aquamarine_ore")
local c_aquamarine_crystal       = core.get_content_id("underch:aquamarine_crystal")
local c_quartz_ore               = core.get_content_id("underch:quartz_ore")
local c_quartz_crystal           = core.get_content_id("underch:quartz_crystal")
local c_mese_crystal             = core.get_content_id("underch:mese_crystal")
local c_fire                     = core.get_content_id("fire:permanent_flame")
local c_fiery_dust               = core.get_content_id("underch:fiery_dust")
local c_fiery_vine               = core.get_content_id("underch:fiery_vine")
local c_lava_crack               = core.get_content_id("underch:lava_crack")
local c_quartz_block             = core.get_content_id("underch:quartz_block")
local c_aquamarine_block         = core.get_content_id("underch:aquamarine_block")
local c_amethyst_block           = core.get_content_id("underch:amethyst_block")
local c_malachite                = core.get_content_id("underch:malachite")
local c_shinestone               = core.get_content_id("underch:shinestone")
local c_basalt                   = core.get_content_id("underch:basalt")
local c_obsidian                 = core.get_content_id("default:obsidian")
local c_obscurite                = core.get_content_id("underch:obscurite")
local c_dynamic_malachite        = core.get_content_id("underch:dynamic_malachite")
local c_dynamic_shinestone       = core.get_content_id("underch:dynamic_shinestone")
local c_dynamic_basalt           = core.get_content_id("underch:dynamic_basalt")
local c_dynamic_obsidian         = core.get_content_id("underch:dynamic_obsidian")
local c_dynamic_lava_crack       = core.get_content_id("underch:dynamic_lava_crack")
local c_dynamic_underground_bush = core.get_content_id("underch:dynamic_underground_bush")
local c_dynamic_vindesite        = core.get_content_id("underch:dynamic_vindesite")
local c_dynamic_dark_vindesite   = core.get_content_id("underch:dynamic_dark_vindesite")
local c_dynamic_mossy_dirt       = core.get_content_id("underch:dynamic_mossy_dirt")
local c_dynamic_jungle           = core.get_content_id("underch:dynamic_jungle")
local c_dynamic_jungleg          = core.get_content_id("underch:dynamic_jungleg")
local c_dynamic_sticks           = core.get_content_id("underch:dynamic_sticks")
local c_dynamic_fire             = core.get_content_id("underch:dynamic_fire")
local c_dynamic_fs               = core.get_content_id("underch:dynamic_fs")
local c_dynamic_fo               = core.get_content_id("underch:dynamic_fo")
local c_dynamic_fp               = core.get_content_id("underch:dynamic_fp")
local c_dynamic_fa               = core.get_content_id("underch:dynamic_fa")
--makes the caves that kind of stone
function underch.use_stone(vi, data, id)
	underch.functions.replace(vi, data, c_stone, underch.stone.defs[id].base)
	underch.functions.replace(vi, data, c_cobble, underch.stone.defs[id].cobble)
	underch.functions.replace(vi, data, c_mossycobble, underch.stone.defs[id].mossy)
	underch.functions.replace(vi, data, c_cobblestair, underch.stone.defs[id].stair)
	underch.functions.replaceores(vi, data, id)
end

-- Biome definitions
underch.biomegen = {
	--dolomite
	[1] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "dolomite")
	end,
	--limestone
	[2] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "limestone")
	end,
	--schist
	[3] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "schist")
	end,
	--andesite
	[4] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "andesite")
	end,
	--phylite
	[5] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phylite")
	end,
	--quartzite
	[6] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "quartzite")
	end,
	--amphibolite
	[7] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "amphibolite")
	end,
	--slate
	[8] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "slate")
	end,
	--gneiss
	[9] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "gneiss")
	end,
		--phonolite
	[10] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phonolite")
	end,
	--aplite
	[11] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "aplite")
	end,
	--basalt
	[12] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "basalt")
	end,
	--diorite
	[13] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "diorite")
	end,
	--pegmatite
	[14] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "pegmatite")
	end,
	--granite
	[15] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "granite")
	end,
	--gabbro
	[16] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "gabbro")
	end,
	--cave
	[17] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "dolomite")
		underch.functions.ore(vi, data, underch.stone.defs["dolomite"].base, c_water, 1/2000)		
	end,
		--dust
	[18] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "limestone")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dust, 1, underch.stone.defs["limestone"].base)		
	end,
	--coal
	[19] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "amphibolite")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9, underch.stone.defs["amphibolite"].base)
		--underch.functions.ore(vi, data, underch.stone.defs["amphibolite"].base, c_coal_dust, 1/9)
		underch.functions.ore(vi, data, underch.stone.defs["amphibolite"].base, c_amphibolite_coal_dense_ore, 1/201)
	end,
	--vindesite
	[20] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "vindesite")
		underch.functions.ore(vi, data, underch.stone.defs["vindesite"].base, c_vindesite_quartz_ore, 1/50)
		underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["vindesite"].base, c_air, c_black_mushroom, 1/18)
	end,
	--fungi
	[21] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phylite")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["phylite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/18, underch.stone.defs["phylite"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["phylite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["phylite"].base, c_water, 1/2000)		
	end,
	--torchberries
	[22] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phonolite")
		underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer, underch.stone.defs["phonolite"].base)		
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["phonolite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["phonolite"].base, c_water, 1/2000)		
	end,
	--tubers
	[23] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "schist")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/18, underch.stone.defs["schist"].base)		
		underch.functions.on_floor_rr(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dark_tuber, 1/50, underch.stone.defs["schist"].base)		
		underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_schist_coal_dense_ore, 1/201)
		underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_water, 1/2000)		
	end,
	--black slime
	[24] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "slate")
		underch.functions.ore(vi, data, underch.stone.defs["slate"].base, c_black_slimy_block, 1/1000)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_slime, 1/300, underch.stone.defs["slate"].base)
	end,
	--quartz
	[25] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "diorite")
		underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_quartz_ore, 1/50)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_quartz_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_water, 1/2000)		
	end,
	--emerald
	[26] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phonolite")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["phonolite"].base)				
		underch.functions.ore(vi, data, underch.stone.defs["phonolite"].base, c_emerald_ore, 1/201)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_emerald_crystal, 1/201, lastlayer, underch.stone.defs["phonolite"].base)
	end,
	--moss
	[27] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "basalt")
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_moss, 1/3, lastlayer, underch.stone.defs["basalt"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_moss, 1/3, lastlayer)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/18, underch.stone.defs["basalt"].base)
		underch.functions.ore(vi, data, underch.stone.defs["basalt"].cobble, underch.stone.defs["basalt"].mossy, 3/4)
		underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_water, 1/2000)		
	end,
	--green slime
	[28] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "green_slimestone")
		underch.functions.ore(vi, data, underch.stone.defs["green_slimestone"].base, c_green_slimy_block, 1/1000)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_slime, 1/300, underch.stone.defs["green_slimestone"].base)
	end,
	--sichamine
	[29] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "sichamine")
		--underch.functions.ore(vi, data, c_sichamine, c_weedy_sichamine, 1/3)
		underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_sichamine_lamp, 1/25)
		if y < 0 then
			underch.functions.replace(vi, data, c_air, c_water)
		end
	end,
	--sichamine shadow
	[30] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "sichamine")
		--underch.functions.ore(vi, data, c_sichamine, c_weedy_sichamine, 1/3)
		underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_dark_sichamine, 1/9)
		if y < 0 then
			underch.functions.replace(vi, data, c_air, c_water)
		end
	end,
	--torchberries + jungle
	[31] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "granite")
		underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_torchberries, 1/30, lastlayer, underch.stone.defs["granite"].base)		
		underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_dynamic_mossy_dirt, 1/100)
	end,
	--jungle
	[32] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "andesite")
		underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_dynamic_jungle, 1/100)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["andesite"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["andesite"].base)		
		underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_water, 1/2000)		
	end,
	--lava springs
	[33] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "marble")
		underch.functions.ore(vi, data, underch.stone.defs["marble"].base, c_lava, 1/2000)				
	end,
	--flames
	[34] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phonolite")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fire, 1/300, underch.stone.defs["phonolite"].base)
		--underch.functions.ore(vi, data, underch.stone.defs["phonolite"].base, c_fiery_dust, 1/9)
		--underch.functions.on_floor(x, y, z, vi, area, data, c_fiery_dust, c_air, c_fire, 2/3)		
	end,
	--fiery vines
	[35] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "schist")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fs, 1/300, underch.stone.defs["schist"].base)
		--underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_fiery_dust, 1/9)
		--underch.functions.ore(vi, data, underch.stone.defs["schist"].base, c_coal_dust, 1/9)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_coal_dust, 1/9, underch.stone.defs["schist"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["schist"].base)		
	end,
	--darkness
	[36] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "dark_vindesite")
		underch.functions.ore(vi, data, underch.stone.defs["dark_vindesite"].base, c_burner, 1/15)
		underch.functions.on_floor(x, y, z, vi, area, data, underch.stone.defs["dark_vindesite"].base, c_air, c_black_mushroom, 1/18)
	end,
	--fungi 2
	[37] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "phylite")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/40, underch.stone.defs["phylite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/40, underch.stone.defs["phylite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_black_mushroom, 1/20, underch.stone.defs["phylite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/20, underch.stone.defs["phylite"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mould, 1/9, lastlayer, underch.stone.defs["phylite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["phylite"].base, c_water, 1/2000)		
	end,
	--omphyrite
	[38] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "omphyrite")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fo, 1/300, underch.stone.defs["omphyrite"].base)
		--underch.functions.ore(vi, data, underch.stone.defs["omphyrite"].base, c_fiery_dust, 1/13)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["omphyrite"].base)
	end,
	--fiery fungi
	[39] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "pegmatite")
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fp, 1/300, underch.stone.defs["pegmatite"].base)
		--underch.functions.ore(vi, data, c_stone, c_fiery_dust, 1/23)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["pegmatite"].base)		
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["pegmatite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["pegmatite"].base)
	end,
	--purple slime
	[40] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "purple_slimestone")
		underch.functions.ore(vi, data, underch.stone.defs["purple_slimestone"].base, c_purple_slimy_block, 1/300)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_purple_slime, 1/300, underch.stone.defs["purple_slimestone"].base)
	end,
	--mese + saphire
	[41] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "gneiss")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_green_mushroom, 1/18, underch.stone.defs["gneiss"].base)				
		underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_saphire_ore, 1/201)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_saphire_crystal, 1/201, lastlayer, underch.stone.defs["gneiss"].base)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_mese_crystal, 1/201, lastlayer, underch.stone.defs["gneiss"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["gneiss"].base)		
		underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_water, 1/2000)		
	end,
	--ruby
	[42] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "granite")
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["granite"].base)				
		underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_ruby_ore, 1/201)
		underch.functions.in_floor(x, y, z, vi, area, data, c_air, c_stone, c_ruby_dust, 1/450, underch.stone.defs["granite"].base)		
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_ruby_crystal, 1/201, lastlayer, underch.stone.defs["granite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_water, 1/2000)		
	end,
	--sticks
	[43] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "basalt")
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_dry_moss, 1/3, lastlayer, underch.stone.defs["basalt"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_dirt, c_air, c_dry_moss, 1/3, lastlayer)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["basalt"].base)
		underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_dynamic_sticks, 1/200)
	end,
	--red slime
	[44] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "red_slimestone")
		underch.functions.ore(vi, data, underch.stone.defs["red_slimestone"].base, c_red_slimy_block, 1/300)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_slime, 1/300, underch.stone.defs["red_slimestone"].base)
	end,
	--hot water
	[45] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "sichamine")
		underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_sichamine_lamp, 1/25)
		underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_hektorite, 1/50)
		underch.functions.ore(vi, data, underch.stone.defs["sichamine"].base, c_lava_crack, 1/50)
		underch.functions.replace(vi, data, c_air, c_water)
	end,
	--aquamarine + amethyst
	[46] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "diorite")
		underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_aquamarine_ore, 1/50)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_aquamarine_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_amethyst_ore, 1/50)
		underch.functions.on_wall_f(x, y, z, vi, area, data, p2data, c_stone, c_air, c_amethyst_crystal, 1/50, lastlayer, underch.stone.defs["diorite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["diorite"].base, c_water, 1/2000)		
	end,
	--fiery vines + jungle
	[47] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "andesite")
		underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_dynamic_jungle, 1/100)
		--underch.functions.ore(vi, data, underch.stone.defs["andesite"].base, c_fiery_dust, 1/9)
		underch.functions.in_floor(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_fa, 1/300, underch.stone.defs["andesite"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_fiery_vine, 1/15, lastlayer, underch.stone.defs["andesite"].base)		
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_red_mushroom, 1/27, underch.stone.defs["andesite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_brown_mushroom, 1/27, underch.stone.defs["andesite"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/27, underch.stone.defs["andesite"].base)
	end,
	--lava + jungle
	[48] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "gabbro")
		underch.functions.ore(vi, data, underch.stone.defs["gabbro"].base, c_dynamic_jungleg, 1/100)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["gabbro"].base)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_orange_mushroom, 1/18, underch.stone.defs["gabbro"].base)
		underch.functions.on_wall_w(x, y, z, vi, area, data, p2data, c_stone, c_air, c_underground_vine, 1/15, lastlayer, underch.stone.defs["gabbro"].base)		
		underch.functions.ore(vi, data, underch.stone.defs["gabbro"].base, c_lava, 1/5000)		
	end,
	--lava cracks
	[49] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "omphyrite")
		underch.functions.ore(vi, data, underch.stone.defs["omphyrite"].base, c_lava_crack, 1/18)		
		underch.functions.ore(vi, data, underch.stone.defs["omphyrite"].base, c_lava, 1/1000)		
	end,
	--diamonds
	[50] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "afualite")
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_coalblock, 1/18)
		underch.functions.ore(vi, data, c_coalblock, c_coal_diamond, 1/72)
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_lava, 1/1000)		
	end,
	--vindesite + lava
	[51] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "afualite")
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_vindesite, 1/300)
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_dark_vindesite, 1/300)		
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_lava, 1/1000)		
	end,
	--copper
	[52] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "gneiss")
		underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_gneiss_copper_dense_ore, 1/201)
		underch.functions.ore(vi, data, underch.stone.defs["gneiss"].base, c_lava, 1/1000)		
	end,
	--hektorite + lava
	[53] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "hektorite")
		underch.functions.ore(vi, data, c_hektorite, c_lava, 1/1000)		
	end,
	--gold
	[54] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "basalt")
		underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_basalt_gold_dense_ore, 1/407)
		underch.functions.ore(vi, data, underch.stone.defs["basalt"].base, c_lava, 1/1000)		
	end,
	--quartz + water
	[55] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.functions.replace(vi, data, c_stone, c_quartz_block)
		underch.functions.ore(vi, data, c_quartz_block, c_aquamarine_block, 1/4)
		underch.functions.ore(vi, data, c_quartz_block, c_amethyst_block, 1/3)
		underch.functions.ore(vi, data, c_quartz_block, c_sichamine_lamp, 1/25)
		underch.functions.replace(vi, data, c_air, c_water)
		underch.use_stone(vi, data, "sichamine")
	end,
	--iron
	[56] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "granite")
		underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_granite_iron_dense_ore, 1/207)
		underch.functions.ore(vi, data, underch.stone.defs["granite"].base, c_lava, 1/1000)		
	end,
	--malachite
	[57] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "peridotite")
		underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_dynamic_malachite, 1/300)
		underch.functions.on_floor(x, y, z, vi, area, data, c_stone, c_air, c_burning_mushroom, 1/18, underch.stone.defs["peridotite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_lava, 1/1000)		
	end,
	--shinestone
	[58] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "hektorite")
		underch.functions.on_roof(x, y, z, vi, area, data, c_stone, c_air, c_dynamic_shinestone, 1/50, lastlayer, underch.stone.defs["hektorite"].base)
		underch.functions.ore(vi, data, underch.stone.defs["hektorite"].base, c_lava, 1/300)		
	end,
	--obsidian
	[59] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "afualite")
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_dynamic_obsidian, 1/20)		
		underch.functions.ore(vi, data, underch.stone.defs["afualite"].base, c_lava, 1/300)		
	end,
	--lava
	[60] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "emutite")
		underch.functions.replace(vi, data, c_air, c_lava)		
	end,
	--basalt
	[61] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.use_stone(vi, data, "peridotite")
		underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_dynamic_basalt, 1/200)		
		underch.functions.ore(vi, data, underch.stone.defs["peridotite"].base, c_lava, 1/300)		
	end,
	--obscurite
	[62] = function(x, y, z, vi, data, p2data, area, lastlayer)
		underch.functions.replace(vi, data, c_stone, c_obscurite)
		underch.functions.replace(vi, data, c_cobble, c_obscurite)
		underch.functions.replace(vi, data, c_air, c_lava)			
		underch.use_stone(vi, data, "emutite")
	end,
}

core.register_on_generated(function(minp, maxp, seed)

	--easy reference to commonly used values
	--local t1 = os.clock()
	local x1 = maxp.x
	local y1 = maxp.y
	local z1 = maxp.z
	local x0 = minp.x
	local y0 = minp.y
	local z0 = minp.z
	if y1 > ymax+200 or y0 < ymax-64*200 then 
	return end --only generate underground
	local vm, emin, emax = core.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local data = vm:get_data()
	local p2data = vm:get_param2_data()
		
	--mandatory values
	local sidelen = x1 - x0 + 1 --length of a mapblock
	local chulens = {x=sidelen, y=sidelen, z=sidelen} --table of chunk edges
	local chulens2D = {x=sidelen, y=sidelen, z=1}
	local minposxyz = {x=x0, y=y0, z=z0} --bottom corner
	local minposxz = {x=x0, y=z0} --2D bottom corner
		
	local nixyz = 1 --3D node index
	local nixz = 1 --2D node index
	local nixyz2 = 1 --second 3D index for second loop
	local biometosay
	for z = z0, z1 do -- for each xy plane progressing northwards
		--increment indices
		nixyz = nixyz + 1

		for y = y0, y1 do -- for each x row progressing upwards	

			local vi = area:index(x0, y, z)
			for x = x0, x1 do -- for each node do

				local biome = math.ceil((-y+ymax)/200)
				biometosay = biome
				if (biome < 1) or (biome > 62) then
					print(string.format("Wrong biome %i", biome))
					break
				end
				underch.biomegen[biome](x, y, z, vi, data, p2data, area, y == y1)
				if data[vi] == c_stone then
					if underch.functions.is_crust(x, y, z, vi, area, data, c_stone) then
						data[vi] = underch.c_crust
					else
						data[vi] = underch.c_bulk
					end
				end

				nixyz2 = nixyz2 + 1
				nixz = nixz + 1
				vi = vi + 1
			end
			nixz = nixz - sidelen --shift the 2D index back
		end
		nixz = nixz + sidelen --shift the 2D index up a layer
	end
	--send data back to voxelmanip
	vm:set_data(data)
	vm:set_param2_data(p2data)
	--calc lighting
	vm:set_lighting({day=0, night=0})
	vm:calc_lighting()
	--write it to world
	vm:write_to_map(data)

	--local chugent = math.ceil((os.clock() - t1) * 1000) --grab how long it took
	--print ("[caverealms] "..chugent.." ms") --tell people how long
end)

