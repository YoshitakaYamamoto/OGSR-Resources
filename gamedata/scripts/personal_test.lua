--[[---------------------------------------------------------
log1(string.lower("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
log1(string.lower("ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞß"))
log1(string.upper("abcdefghijklmnopqrstuvwxyz"))
log1(string.upper("àáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿ"))
--]]--[[-------------------------------------------------------
local ebt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local rbt = "ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞß"
local emt = "abcdefghijklmnopqrstuvwxyz"
local rmt = "àáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿ"
log1(ebt:lower())
log1(rbt:lower())
log1(emt:upper())
log1(rmt:upper())
--]]---------------------------------------------------------

--[=[
local arts_str = "Art1,art2,arti3,ARTEF4"
log3("arts_str = %s", arts_str)
local cd = base64.enc( arts_str )
log3("cd after enc = %s", cd)
local arts_str2 = base64.dec( cd )
log3("cd after dec = %s", arts_str2)
--]=]


--[=[
for smart_idx=1, 6 do
	local sobj = alife():object("deadcity_zombies_"..smart_idx)
	--level.map_add_object_spot_ser( sobj.id, "green_location", "deadcity_zombies_"..smart_idx )
	for i=1, 10 do
		local path_name = "deadcity_zombies_"..smart_idx.."_kamp_"..i
		if level.patrol_path_exists(path_name) then
			local patrol = patrol( path_name )
			local map_spot = alife():create("medkit", patrol:point( 0 ), patrol:level_vertex_id( 0 ), patrol:game_vertex_id( 0 ))
			level.map_add_object_spot_ser( map_spot.id, "red_location", path_name )
		end
	end
end
--]=]

--[=[
for i = 1, 65534 do
	local sobj = alife():object(i)
	if sobj then
		if sobj:clsid() == clsid.smart_terrain then
			if object_level_name(sobj) == "l09_deadcity_ogse" then
				local pk = get_netpk(sobj, 1)
				ASSERT( pk:isOk(), "can't read netpacket of %s", sobj:name() )
				local data = pk:get()
				local cd = data.custom_data:getTable()
				level.map_add_object_spot_ser( sobj.id, "red_location", sobj:name().." : "..cd.smart_terrain.type )
			end
		end
	end
end
--]=]

--[=[
for i = 1, 65534 do
	local sobj = alife():object(i)
	if sobj then
		if sobj:clsid() == clsid.respawn then
			if object_level_name(sobj) == "l09_deadcity_ogse" then
				local pk = get_netpk(sobj, 1)
				ASSERT( pk:isOk(), "can't read netpacket of %s", sobj:name() )
				local data = pk:get()
				local cd = data.custom_data:getTable()
				log3("CD of [%s]: %s", sobj:name(), cd)
				level.map_add_object_spot_ser( sobj.id, "red_location", sobj:name() )
			end
		end
	end
end
--]=]


--__scripts_cleanup.garbage_collect()
