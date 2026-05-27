underch.dynamic = {}

underch.dynamic.all_sides = {
		{x = 1, y = 0, z = 0},
		{x = -1, y = 0, z = 0},
		{x = 0, y = 1, z = 0},
		{x = 0, y = -1, z = 0},
		{x = 0, y = 0, z = 1},
		{x = 0, y = 0, z = -1}
	}

underch.dynamic.all_corners = {
		{x = 1, y = 1, z = 1},
		{x = -1, y = 1, z = 1},
		{x = 1, y = -1, z = 1},
		{x = -1, y = -1, z = 1},
		{x = 1, y = 1, z = -1},
		{x = -1, y = 1, z = -1},
		{x = 1, y = -1, z = -1},
		{x = -1, y = -1, z = -1}
	}

	
local lbm_queue = {}

function underch.dynamic.extend_me(pos, air, material, sides, chance)
	for _, p in pairs(sides) do
		local pp = {x = pos.x+p.x, y = pos.y+p.y, z = pos.z+p.z}
		if minetest.get_node(pp).name == air and math.random() < chance then
			underch.dynamic.extend_me(pp, air, material, sides, chance)
		end
	end
	minetest.set_node(pos, {name = material})
end

function underch.dynamic.flood_me(pos, air, material, sides, size, ores, tops)
	local positions = {}
	
	local i = 1
	local pc = 0
	local blocks = 1

	local function add_pos(p)
		positions[pc+1] = p
		pc = pc + 1
	end

	for _, p in pairs(sides) do
		add_pos({x = pos.x+p.x, y = pos.y+p.y, z = pos.z+p.z})
	end

	while i <= pc do
		local name = minetest.get_node(positions[i]).name
		local is_jit = name == "underch:bulk" or name == "underch:crust"
		if (is_jit or name == air) and math.random() < size/blocks then
			for _, p in pairs(sides) do
				add_pos({x = positions[i].x+p.x, y = positions[i].y+p.y, z = positions[i].z+p.z})
			end

			local blockset = false
			if ores ~= nil then
				for _, o in pairs(ores) do
					if (math.random() < o.chance) then
						blockset = true
						minetest.set_node(positions[i], {name = o.block})
						break
					end
				end
			end

			if not blockset then
				minetest.set_node(positions[i], {name = material})
			end
			blocks = blocks + 1

			if tops ~= nil then
				local above = {x = positions[i].x, y = positions[i].y+1, z = positions[i].z}
				if minetest.get_node(above).name == "air" then
					for _, t in pairs(tops) do
						if (math.random() < t.chance) then
							minetest.set_node(above, {name = t.block})
							break
						end
					end
				end
			end
		elseif is_jit then
			underch.jit.reveal(positions[i], true)
		end
		i = i + 1
	end
	minetest.set_node(pos, {name = material})
end

local queue_start = 1

minetest.register_globalstep(function(dtime)
	local queue_len = #lbm_queue - queue_start + 1
	if queue_len > 0 then
		
		local start_time = minetest.get_us_time()
		local time_budget = 200000 -- 0.2 seconds
		
		while (minetest.get_us_time() - start_time) < time_budget do
			if queue_start > #lbm_queue then break end
			
			local job = lbm_queue[queue_start]
			lbm_queue[queue_start] = nil -- Free memory slot
			queue_start = queue_start + 1
			
			if minetest.get_node_or_nil(job.pos) then
				if job.type == "extender" then
					underch.dynamic.extend_me(job.pos, job.air, job.material, job.sides, job.chance)
				elseif job.type == "flooder" then
					underch.dynamic.flood_me(job.pos, job.air, job.material, job.sides, job.size, job.ores, job.tops)
				end
			end
		end
		
		if queue_start > #lbm_queue then
			lbm_queue = {}
			queue_start = 1
		end
	end
end)


function underch.dynamic.register_extender(id, air, material, sides, chance)

	local function my_lbm(pos)
		underch.dynamic.extend_me(pos, air, material, sides, chance)
	end

	local function queue_lbm(pos)
		table.insert(lbm_queue, {
			type = "extender",
			pos = pos,
			air = air,
			material = material,
			sides = sides,
			chance = chance
		})
	end

	minetest.register_node("underch:dynamic_" .. id, {
		description = "Dynamic " .. id .. ", you hacker!, you",
		tiles = {"underch_structure.png"},
		groups = {not_in_creative_inventory = 1},
		drop = "",
		on_punch = my_lbm
	})

	minetest.register_lbm({
	     	nodenames = {"underch:dynamic_" .. id},
		interval = 0.1,
		name = "underch:dynamic_" .. id,
		run_at_every_load = true,
		action = queue_lbm
	})
end

function underch.dynamic.register_flooder(id, air, material, sides, size, ores, tops)
	local function my_lbm(pos)
		underch.dynamic.flood_me(pos, air, material, sides, size, ores, tops)
	end

	local function queue_lbm(pos)
		table.insert(lbm_queue, {
			type = "flooder",
			pos = pos,
			air = air,
			material = material,
			sides = sides,
			size = size,
			ores = ores,
			tops = tops
		})
	end

	minetest.register_node("underch:dynamic_" .. id, {
		description = "Dynamic " .. id .. ", you hacker!, you",
		tiles = {"underch_structure.png"},
		groups = {not_in_creative_inventory = 1},
		drop = "",
		on_punch = my_lbm
	})

	minetest.register_lbm({
	    nodenames = {"underch:dynamic_" .. id},
		interval = 0.1,
		chance = 1,
		name = "underch:dynamic_" .. id,
		run_at_every_load = true,
		action = queue_lbm
	})
end

underch.dynamic.register_extender("shinestone", "air", "underch:shinestone", 
	{{x=1, y=0, z=0},{x=-1, y=0, z=0},{x=0, y=-1, z=0},{x=0, y=0, z=-1},{x=0, y=0, z=1}},
	1/5)

underch.dynamic.register_extender("basalt", "air", "underch:basalt", 
	{{x=1, y=2, z=0},{x=-1, y=2, z=0},{x=0, y=2, z=1},{x=0, y=2, z=-1},
	{x=1, y=-2, z=0},{x=-1, y=-2, z=0},{x=0, y=-2, z=1},{x=0, y=-2, z=-1},
	{x=0, y=-1, z=0},{x=0, y=1, z=0},{x=0, y=-2, z=0},{x=0, y=2, z=0},
	{x=0, y=-1, z=0},{x=0, y=1, z=0},{x=0, y=-2, z=0},{x=0, y=2, z=0},
	{x=0, y=-1, z=0},{x=0, y=1, z=0},{x=0, y=-2, z=0},{x=0, y=2, z=0}},
	1/17)

underch.dynamic.register_flooder("basalt_cobble", "underch:peridotite", "underch:dynamic_basalt", underch.dynamic.all_sides, 30)

underch.dynamic.register_extender("obsidian", "underch:afualite", "default:obsidian", 
	{{x=1, y=-1, z=1},{x=-1, y=-1, z=1},{x=1, y=-1, z=-1},{x=-1, y=-1, z=-1}},
	7/24)

underch.dynamic.register_extender("underground_bush", "air", "underch:underground_bush", 
	{{x=1, y=0, z=0},{x=-1, y=0, z=0},{x=0, y=0, z=-1},{x=0, y=0, z=-1}
	,{x=0, y=1, z=0},{x=0, y=1, z=0},{x=0, y=1, z=0},{x=0, y=1, z=0}},
	1/10)

underch.dynamic.register_extender("lava_crack", "underch:omphyrite", "underch:lava_crack", underch.dynamic.all_corners, 1/7)
underch.dynamic.register_flooder("malachite", "underch:peridotite", "underch:malachite", underch.dynamic.all_sides, 30)
underch.dynamic.register_flooder("vindesite", "underch:afualite", "underch:vindesite", underch.dynamic.all_sides, 100)
underch.dynamic.register_flooder("dark_vindesite", "underch:afualite", "underch:dark_vindesite", underch.dynamic.all_sides, 100)

underch.dynamic.register_flooder("mossy_dirt", "underch:granite", "default:dirt", underch.dynamic.all_sides, 100,
	{{block="underch:mossy_dirt", chance=2/3}})
underch.dynamic.register_flooder("jungle", "underch:andesite", "default:dirt", underch.dynamic.all_sides, 100,
	{{block="underch:mossy_dirt", chance=2/3}}, {{block="underch:dynamic_underground_bush", chance=1/5}})
underch.dynamic.register_flooder("jungleg", "underch:gabbro", "default:dirt", underch.dynamic.all_sides, 100,
	{{block="underch:mossy_dirt", chance=2/3}}, {{block="underch:dynamic_underground_bush", chance=1/5}})
underch.dynamic.register_flooder("sticks", "underch:basalt", "default:dirt", underch.dynamic.all_sides, 100,
	{{block="underch:mossy_dirt", chance=2/3}}, {{block="underch:dead_bush", chance=1/9}})

underch.dynamic.register_flooder("fire", "underch:phonolite", "underch:fiery_dust", underch.dynamic.all_sides, 30,
	nil, {{block="fire:permanent_flame", chance=2/3}})
underch.dynamic.register_flooder("fs", "underch:schist", "underch:fiery_dust", underch.dynamic.all_sides, 30)
underch.dynamic.register_flooder("fo", "underch:omphyrite", "underch:fiery_dust", underch.dynamic.all_sides, 30)
underch.dynamic.register_flooder("fp", "underch:pegmatite", "underch:fiery_dust", underch.dynamic.all_sides, 30)
underch.dynamic.register_flooder("fa", "underch:andesite", "underch:fiery_dust", underch.dynamic.all_sides, 30)



minetest.register_chatcommand("underch_lbm", {
	params = "",
	description = "Shows the current size of the pending LBM queue.",
	privs = {server = true}, 
	func = function(name, param)
		local queue_size = lbm_queue and (#lbm_queue - queue_start + 1) or 0
		return true, "LBM queue size: " .. queue_size
	end,
})
