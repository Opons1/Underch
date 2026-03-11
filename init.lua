--Hume2's Underground Challenge mod

underch = {}

--Scale all damage by a given factor
underch.damage_scaling_factor = 1

underch.modpath           = core.get_modpath("underch")
underch.have_advtrains    = core.get_modpath("advtrains") ~= nil --for advtrains nodes
underch.have_bucket       = core.get_modpath("bucket") ~= nil
underch.have_stairs       = core.get_modpath("stairs") ~= nil
underch.have_stairsredo   = stairs and stairs.mod and stairs.mod == "redo"
underch.have_moreblocks   = core.get_modpath("moreblocks") ~= nil
underch.have_gs_amethyst  = core.get_modpath("gs_amethyst") ~= nil --github gemstones
underch.have_gs_emerald   = core.get_modpath("gs_emerald") ~= nil
underch.have_gs_ruby      = core.get_modpath("gs_ruby") ~= nil
underch.have_gs_sapphire  = core.get_modpath("gs_sapphire") ~= nil
underch.have_amethyst     = core.get_modpath("amethyst") ~= nil --contentdb gemstones
underch.have_emerald      = core.get_modpath("emerald") ~= nil
underch.have_ruby         = core.get_modpath("ruby") ~= nil
underch.have_sapphire     = core.get_modpath("sapphire") ~= nil
underch.have_blox         = core.get_modpath("blox") ~= nil
underch.have_quartz       = core.get_modpath("quartz") ~= nil
underch.have_terumet      = core.get_modpath("terumet") ~= nil
underch.have_moreores     = core.get_modpath("moreores") ~= nil
underch.have_technic_ores = core.get_modpath("technic_worldgen") ~= nil
underch.jit = {}
function underch.jit.dig_shadow(pos, oldnode, oldmetadata, digger)
end
dofile(underch.modpath .. "/dynamic.lua")
dofile(underch.modpath .. "/functions.lua")
dofile(underch.modpath .. "/dense_ores.lua")
dofile(underch.modpath .. "/nodes.lua")
dofile(underch.modpath .. "/crafts.lua")
dofile(underch.modpath .. "/stone.lua")
dofile(underch.modpath .. "/gems.lua")
dofile(underch.modpath .. "/slime.lua")
dofile(underch.modpath .. "/mushrooms.lua")
dofile(underch.modpath .. "/worldgen.lua")

if underch.have_stairs or underch.have_stairsredo or underch.have_moreblocks then
	dofile(underch.modpath .. "/moreblocks.lua")
end
-- override lava cooling function
--DISABLED FOR NOW BECAUSE I RUN TECHAGE
--[[
default.cool_lava = function(pos, node)
	if node.name == "default:lava_source" then
		core.set_node(pos, {name = "default:obsidian"})
	else -- Lava flowing
		core.set_node(pos, {name = "underch:basalt"})
	end
	core.sound_play("default_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25})
end
]]
-- moss growth

core.register_abm({
	label = "Moss growth",
	nodenames = {"group:cobble", "group:cobblestairs", "group:wall"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		for id, s in pairs(underch.stone.defs) do
			if s.mossy_variant then
				if node.name == "underch:" .. id .. "_cobble" then
					core.set_node(pos, {name = "underch:" .. id .. "_mossy_cobble"})
				elseif node.name == "stairs:slab_" .. id .. "_cobble" then
					core.set_node(pos, {name = "stairs:slab_" .. id .. "_mossy_cobble", param2 = node.param2})
				elseif node.name == "stairs:stair_" .. id .. "_cobble" then
					core.set_node(pos, {name = "stairs:stair_" .. id .. "_mossy_cobble", param2 = node.param2})
				elseif node.name == "underch:" .. id .. "_cobble_wall" then
					core.set_node(pos, {name = "underch:" .. id .. "_mossy_cobble_wall", param2 = node.param2})
				end
			end
		end
	end
})
