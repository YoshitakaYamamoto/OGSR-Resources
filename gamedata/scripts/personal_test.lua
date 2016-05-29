local spots = {
	"anomaly_bald_location",
	"anomaly_minc_location",
	"anomaly_grav_location",
	"anomaly_rad_location",
	"anomaly_elec_location",
	"anomaly_burn_location",
	"anomaly_hvat_location",
	"anomaly_hvat_location",
	"anomaly_liana_location",
	"anomaly_hvat_location",
	"anomaly_buzz_location",
}

for o = 1, 65534 do
	local sobj = alife():object(o)
	if sobj then
		for _, n in ipairs( spots ) do
			if level_tasks.is_map_spot_present_by_id(o, n) then
				level_tasks.remove_location_by_id(o,n,"DANGER")
			end
		end
	end
end
