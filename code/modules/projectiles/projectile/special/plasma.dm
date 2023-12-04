/obj/projectile/plasma
	name = "plasma blast"
	icon_state = "plasmacutter"
	damage_type = BURN
	damage = 20 // awful, just for getting the job done.
	range = 4
	dismemberment = 20
	impact_effect_type = /obj/effect/temp_visual/impact_effect/purple_laser
	var/mine_range = 3 //mines this many additional tiles of rock
	tracer_type = /obj/effect/projectile/tracer/plasma_cutter
	muzzle_type = /obj/effect/projectile/muzzle/plasma_cutter
	impact_type = /obj/effect/projectile/impact/plasma_cutter

/obj/projectile/plasma/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(ismineralturf(target))
		var/turf/closed/mineral/M = target
		M.gets_drilled(firer, FALSE)
		if(mine_range)
			mine_range--
			range++
		if(range > 0)
			return BULLET_ACT_FORCE_PIERCE

/obj/projectile/plasma/adv
	damage = 25 // not as good as the Buzzsaw, but close.
	range = 5
	mine_range = 5

/obj/projectile/plasma/adv/mech
	damage = 80
	range = 12
	mine_range = 0
	dismemberment = 40
	catastropic_dismemberment = TRUE

/obj/projectile/plasma/turret
	//Between normal and advanced for damage, made a beam so not the turret does not destroy glass
	name = "plasma beam"
	damage = 24
	range = 7
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE

/obj/projectile/plasma/shipbreaker
	name = "supercritical hydrogen burst"
	icon_state = "plasmacutter"
	damage_type = BURN
	damage = 30 // half toy
	range = 7 // half tool
	dismemberment = 5 // Was 20, do I even need to describe why this is a bad idea?
	catastropic_dismemberment = TRUE // if you manage to crit a humanlike, they'll FEEL it.
