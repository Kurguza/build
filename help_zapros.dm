/obj/structure/ustroystvo_svizy
	name = "Устройство связи"
	desc = "Ваша последняя надежда на спасение!"
	icon = 'evet.dmi'
	icon_state = "frame"
	density = TRUE
	anchored = TRUE

/obj/machinery/holopad/scrap
	name = "Голопад?"
	desc = "Просто от-вра-ти-тель-на-я груда мусора, однако для вас — последняя надежда."
	icon = 'evet.dmi'
	icon_state = "scrap"
	density = TRUE
	anchored = TRUE

/datum/crafting_recipe/ustroystvo_svizy
	name = "ustroystvo_svizy"
	result = /obj/machinery/holopad/scrap
	time = 15 SECONDS
	reqs = list(
		/obj/item/stack/cable_coil = 8,
	)
	machinery = list(
		/obj/structure/ustroystvo_svizy = CRAFTING_MACHINERY_CONSUME,
	)
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)
	category = CAT_ENTERTAINMENT
