
/obj/effect/decal/cleanable/food
	icon = 'icons/effects/tomatodecal.dmi'
	gender = NEUTER

/obj/effect/decal/cleanable/food/tomato_smudge
	name = "tomato smudge"
	desc = "It's red."
	icon_state = "tomato_floor1"
	random_icon_states = list("tomato_floor1", "tomato_floor2", "tomato_floor3")

/obj/effect/decal/cleanable/food/plant_smudge
	name = "plant smudge"
	desc = "Chlorophyll? More like borophyll!"
	icon_state = "smashed_plant"

/obj/effect/decal/cleanable/food/egg_smudge
	name = "smashed egg"
	desc = "Seems like this one won't hatch."
	icon_state = "smashed_egg1"
	random_icon_states = list("smashed_egg1", "smashed_egg2", "smashed_egg3")

/obj/effect/decal/cleanable/food/pie_smudge //honk
	name = "smashed pie"
	desc = "It's pie cream from a cream pie."
	icon_state = "smashed_pie"

/obj/effect/decal/cleanable/food/salt
	name = "salt pile"
	desc = "A sizable pile of table salt. Someone must be upset."
	icon_state = "salt_pile"

/obj/effect/decal/cleanable/food/salt/Crossed(mob/living/L)
	if(is_species(L, /datum/species/snail))
		while(L.loc == src.loc)
			L.adjustFireLoss(2, TRUE)
			sleep(20)
	if(is_species(H, /datum/species/squid))
		while(H.loc == src.loc)
			H.visible_message("<span class='danger'>Your tentacles shrivel as you step over the salt! It burns!</span>")
			H.adjustFireLoss(15, TRUE)
			sleep(10)

/obj/effect/decal/cleanable/food/flour
	name = "flour"
	desc = "It's still good. Four second rule!"
	icon_state = "flour"
