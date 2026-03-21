/datum/loadout_category/weapons
	category_name = "Weapons"
	category_ui_icon = FA_ICON_GUN
	type_to_generate = /datum/loadout_item/weapons
	tab_order = /datum/loadout_category/inhands::tab_order + 1
	VAR_PRIVATE/max_allowed = 1

/datum/loadout_category/weapons/New()
	. = ..()
	category_info = "([max_allowed] allowed)"

/datum/loadout_item/weapons/pre_equip_item(datum/outfit/outfit, datum/outfit/outfit_important_for_life, mob/living/carbon/human/equipper, visuals_only = FALSE)
	return FALSE

/datum/loadout_item/weapons/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE, override_items = LOADOUT_OVERRIDE_BACKPACK)
	if(outfit.r_hand && !outfit.l_hand)
		outfit.l_hand = item_path
	else
		if(outfit.r_hand)
			LAZYADD(outfit.backpack_contents, outfit.r_hand)
		outfit.r_hand = item_path


/datum/loadout_category/toys/handle_duplicate_entires(
	datum/preference_middleware/loadout/manager,
	datum/loadout_item/conflicting_item,
	datum/loadout_item/added_item,
	list/datum/loadout_item/all_loadout_items,
)
	var/list/datum/loadout_item/weapons = list()
	if(length(weapons) >= max_allowed)
		manager.deselect_item(weapons[1])
	return TRUE


// Милиха

/datum/loadout_item/weapons/noble_melee_weapon
	group = "Melee Weapons"
	abstract_type = /datum/loadout_item/weapons/noble_melee_weapon
	loadout_flags = parent_type::loadout_flags | LOADOUT_FLAG_ALLOW_NAMING

/datum/loadout_item/weapons/noble_melee_weapon/soulscythe
	name = "Soul Scythe"
	item_path = /obj/item/soulscythe/nest

/datum/loadout_item/weapons/noble_melee_weapon/baseball_bat
	name = "Baseball Bat"
	item_path = /obj/item/melee/baseball_bat

/datum/loadout_item/weapons/noble_melee_weapon/british
	name = "British Baseball Bat"
	item_path = /obj/item/melee/baseball_bat/british

/datum/loadout_item/weapons/noble_melee_weapon/ablative
	name = "Ablative Baseball Bat"
	item_path = /obj/item/melee/baseball_bat/ablative

/datum/loadout_item/weapons/noble_melee_weapon/spear
	name = "Spear"
	item_path = /obj/item/spear

/datum/loadout_item/weapons/noble_melee_weapon/bamboo_spear
	name = "Bamboo Spear"
	item_path = /obj/item/spear/bamboospear

/datum/loadout_item/weapons/noble_melee_weapon/surv_knive
	name = "Survival Knife"
	item_path = /obj/item/knife/combat/survival

/datum/loadout_item/weapons/noble_melee_weapon/stubatton
	name = "Stun Baton"
	item_path = /obj/item/melee/baton/security/stun_gun/stun_knife/loaded

/datum/loadout_item/weapons/noble_melee_weapon/energy_sword
	name = "Energy Sword"
	item_path = /obj/item/melee/energy/sword/surplus/improvised

/datum/loadout_item/weapons/noble_melee_weapon/cane
	name = "Cane"
	item_path = /obj/item/cane/crutch/wood

/datum/loadout_item/weapons/noble_melee_weapon/knuckleduster
	name = "Knuckleduster"
	item_path = /obj/item/melee/knuckleduster

/datum/loadout_item/weapons/noble_melee_weapon/tomohawk
	name = "Tomohawk"
	item_path = /obj/item/melee/tomahawk

/datum/loadout_item/weapons/noble_melee_weapon/knife
	name = "Knife"
	item_path = /obj/item/knife

/datum/loadout_item/weapons/noble_melee_weapon/shiv
	name = "Glass Shard"
	item_path = /obj/item/knife/shiv

/datum/loadout_item/weapons/noble_melee_weapon/plasmacutter
	name = "Plasma Shard"
	item_path = /obj/item/knife/shiv/plasma


// А тута ДБ

/datum/loadout_item/weapons/fucking_range
	group = "Range Weapons"
	abstract_type = /datum/loadout_item/weapons/fucking_range
	loadout_flags = parent_type::loadout_flags | LOADOUT_FLAG_ALLOW_NAMING

/datum/loadout_item/weapons/fucking_range/laser_musket
	name = "Laser Musket"
	item_path = /obj/item/gun/energy/laser/musket

/datum/loadout_item/weapons/fucking_range/rebarxbow
	name = "Rebar Crossbow"
	item_path = /obj/item/gun/ballistic/rifle/rebarxbow
	restricted_roles = list(JOB_CHIEF_ENGINEER, JOB_STATION_ENGINEER, JOB_ENGINEERING_GUARD, JOB_ATMOSPHERIC_TECHNICIAN, JOB_TELECOMMS_SPECIALIST)

/datum/loadout_item/weapons/fucking_range/pipe_pistol
	name = "Pipe Pistol"
	item_path = /obj/item/gun/ballistic/rifle/boltaction/pipegun/pistol

/datum/loadout_item/weapons/fucking_range/pipe_rifle
	name = "Pipe Rifle"
	item_path = /obj/item/gun/ballistic/rifle/boltaction/pipegun

/datum/loadout_item/weapons/fucking_range/pipebow
	name = "Pipe Bow"
	item_path = /obj/item/gun/ballistic/bow/tribalbow/pipe
