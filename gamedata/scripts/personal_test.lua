--[[
--Òåñò ñ ðóññêèìè áóêâàìè
log1(string.lower("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
log1(string.lower("ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß"))
log1(string.upper("abcdefghijklmnopqrstuvwxyz"))
log1(string.upper("àáâãäå¸æçèéêëìíîïðñòóôõö÷øùúûüýþÿ"))
--]]

--[[
--Òåñò ñòåêòðåéñ êîëëåêòîðîâ
level.add_call(function() return true end, function() fail("err") end)
--]]

--log1(debug.traceback())
collectgarbage("collect")

--Âûâîä íà êàðòó ÍÏÑ, êîòîðûõ ñîçäàëè ðåñïàâíåðû.
  dsh_respawn.iterate_respawners( function( respawner )
    if not respawner.item_spawn and #respawner.spawned_obj > 0 then
      for _, id in ipairs( respawner.spawned_obj ) do
        local sobj = alife():object( id )
        if sobj then
          local smart_name = "NOT FOUND"
          if sobj:smart_terrain_id() ~= 65535 then
			local smart_sobj = alife():object(sobj:smart_terrain_id())
			smart_name = smart_sobj:name()
		  end
          level.map_add_object_spot( sobj.id, "red_location", sobj:name()..": respawner ["..respawner.name.."] smart ["..smart_name.."]" )
        end
      end
    end
  end )
