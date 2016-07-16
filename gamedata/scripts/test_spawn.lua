--читовый спавн test_spawn.lua из главного меню нажатием 'S'
local what_to_create = {
--?вылет по анимации ["wpn_lr300"] = 1,
}
if level.present() then
	--log1("spawn_for_test")
    for sec, num in pairs(what_to_create) do
		--log1(tostring(sec).."        :"..tostring(num))
		if sys_ini:section_exist(sec) and type(num) == "number" then
			for i=1,num do
				ogse.spawn_item_in_inv(sec)
			end
		end
    end
	
	local pos = db.actor:position()
	pos.y = pos.y + 2
	pos.x = pos.x + 4

	--alife():create('zombie_plague',pos,db.actor:level_vertex_id(),db.actor:game_vertex_id())
	--alife():create('esc_vehicle_btr',pos,db.actor:level_vertex_id(),db.actor:game_vertex_id())

ogse.send_tip("Ђ—частье дл€ всех, даром, и пусть никто не уйдЄт обиженный!ї")
end
