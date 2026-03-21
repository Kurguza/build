/datum/crafting_recipe/ustroystvo_svizy
	name = "Устройство связи"
	result = /obj/machinery/holopad/scrap
	time = 45 SECONDS
	reqs = list(
		/obj/item/stack/cable_coil = 8,
		/obj/item/stock_parts/capacitor = 1,
		/obj/item/radio/entertainment/microphone/physical = 1,
		/obj/item/stock_parts/subspace/filter = 1,
		/obj/item/antenna = 1,
		/obj/item/boards = 1
	)
	machinery = list(
		/obj/structure/ustroystvo_svizy = CRAFTING_MACHINERY_CONSUME,
	)
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)
	category = CAT_TOOLS
