/**
 * # Voucher Set
 *
 * A set consisting of a various equipment that can be then used as a reward for redeeming a mining voucher.
 *
 */
/datum/voucher_set
	/// Name of the set
	var/name
	/// Description of the set
	var/description
	/// Icon of the set
	var/icon
	/// Icon state of the set
	var/icon_state
	/// List of items contained in the set
	var/list/set_items = list()

/datum/voucher_set/standard
	name = "Standard Kit"
	description = "Contains a HTUS-Buzzsaw and a pair of insulating tactical gloves to prevent a shocking demise."
	icon = 'icons/obj/mining.dmi'
	icon_state = "adv_plasmacutter"
	set_items = list(
		/obj/item/gun/energy/plasmacutter/shipbreaker,
		/obj/item/clothing/gloves/combat,
		/obj/item/storage/belt/utility)
