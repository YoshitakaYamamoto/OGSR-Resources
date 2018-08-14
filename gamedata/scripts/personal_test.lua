
--Тестовая сборка мусора при закрытии меню
--[=[
if level.present() then
	level.add_call(function() return true end, function() collectgarbage("collect") end)
end

collectgarbage("collect")
--]=]

--[=[
--Вывод на карту НПС, которых создали респавнеры.
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
--]=]
--[=[
--Вывод на карту НПС, которых создали респавнеры, и которые не находятся в смартах.
  dsh_respawn.iterate_respawners( function( respawner )
    if not respawner.item_spawn and #respawner.spawned_obj > 0 then
      for _, id in ipairs( respawner.spawned_obj ) do
        local sobj = alife():object( id )
        if sobj then
          if sobj:smart_terrain_id() == 65535 then
            level.map_add_object_spot( sobj.id, "red_location", sobj:name()..": NO SMART TERRAIN! Respawner: "..respawner.name )
          end
        end
      end
    end
  end )
--]=]
--[=[
--Тест дробовика
ogse_addons.set_default_shg_params(ogse.spawn_item_in_inv("wpn_addon_remington_870mcs"))
ogse.spawn_item_in_inv("wpn_m16a1_sk1")
ogse.spawn_item_in_inv("wpn_addon_acog")
ogse.spawn_item_in_inv("wpn_addon_scope_eotech")
ogse.spawn_item_in_inv("wpn_addon_mag_mk6")
--]=]

--level.set_blender_mode_main(1) --Включить ночной режим для пнв в прицелах
