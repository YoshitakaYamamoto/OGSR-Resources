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

--[[---------------------------------------------------------
for i = 1, 65534 do
	local sobj = alife():object(i)
	if sobj then
		if sobj:clsid() == clsid.respawn then
			local pk = xs_netpk.net_respawn(sobj)
			if not pk:isOk() then log3("!!Error!!! PK Isn't OK fot [%s]", sobj:name()) return end
			local data = pk:get()
			log4("[Respawners]", "[Data of %s]: %s", sobj:name(), data)
			local cd   = data.custom_data:getTable()
			log4("[Respawners]", "Customdata: %s", cd)
		end
	end
end

dsh_respawn.cleanup_respawners()
]]-----------------------------------------------------------
