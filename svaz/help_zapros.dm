/obj/structure/ustroystvo_svizy
	name = "Устройство связи"
	desc = "Ваша последняя надежда на спасение!"
	icon = 'evet.dmi'
	icon_state = "frame"
	density = TRUE
	anchored = TRUE
	var/list/need_items = list(
		/obj/item/stock_parts/capacitor,
		/obj/item/stack/cable_coil)
	var/list/inside = list()

/obj/structure/ustroystvo_svizy/item_interaction(mob/living/user, obj/item/tool, list/modifiers)
	if(tool in need_items && !inside[tool])
		tool.use(1)
		inside += tool
	return

/obj/machinery/holopad/scrap
	name = "Голографический планшет"
	desc = "Планшет, который можно использовать для связи с внешним миром. Он был собран из обломков, найденных в космосе."
	icon = 'evet.dmi'
	icon_state = "device"
	density = TRUE
	anchored = TRUE

/obj/structure/ustroystvo_svizy/screwdriver_act(mob/living/user, obj/item/tool)
	. = ..()
	if(need_items == inside)
		qdel(src)
		new /obj/machinery/holopad/scrap(src)
	return
