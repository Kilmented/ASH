/obj/item/clothing/suit/hooded/seva
	name = "S-EVA suit"
	desc = "A home-made upcycled EVA suit designed by the R&D team with specifications from the Horizon Trade Union's salvagers. Thick to protect you from extreme pressures, the void, and temperature fluctuations. Has rigging points for a small bag."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	worn_icon_muzzled = 'modular_skyrat/master_files/icons/mob/clothing/suit_digi.dmi'
	worn_icon_teshari = 'modular_skyrat/master_files/icons/mob/clothing/species/teshari/suit.dmi'
	icon_state = "seva"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDEJUMPSUIT|HIDETAIL
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	w_class = WEIGHT_CLASS_BULKY
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	hoodtype = /obj/item/clothing/head/hooded/seva
	armor_type = /datum/armor/seva
	resistance_flags = FIRE_PROOF
	transparent_protection = HIDEJUMPSUIT
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/storage/backpack/satchel, /obj/item/storage/backpack/messenger)
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL

/datum/armor/seva // tweeked to perfection
	melee = 30
	bullet = 10
	laser = 25
	energy = 25
	bomb = 40 // The padding helps, in case you somehow fuck up using your scrapping charge (soonTM)
	bio = 100 // It's fully sealed. Theoretically.
	fire = 60 // Reduces damage significantly, but prolonged fire will MELT your ablative armor.
	acid = 90 // It's a full covering!
	wound = 10 // A test of skill.

/obj/item/clothing/head/hooded/seva
	name = "S-EVA helmet"
	desc = "A home-made retractable EVA helmet designed by the R&D team with specifications from the Horizon Trade Union's salvagers. Thick to protect you from extreme pressures, the void, temperature fluctuations, and blinding flashes."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	worn_icon_muzzled = 'modular_skyrat/master_files/icons/mob/clothing/head_muzzled.dmi'
	worn_icon_teshari = 'modular_skyrat/master_files/icons/mob/clothing/species/teshari/head.dmi'
	icon_state = "seva"
	body_parts_covered = HEAD
	flags_inv = HIDEHAIR|HIDEFACE|HIDEEARS|HIDESNOUT
	cold_protection = HEAD
	heat_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL
	flash_protect = FLASH_PROTECTION_WELDER
	armor_type = /datum/armor/seva
	resistance_flags = FIRE_PROOF
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION //I can't find the snout sprite so I'm just gonna force it to do this

/obj/item/clothing/mask/gas/seva
	name = "SEVA mask"
	desc = "A head-covering mask that can be connected to an external air supply. Intended for use with the SEVA Suit."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/masks.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/mask.dmi'
	worn_icon_teshari = 'modular_skyrat/master_files/icons/mob/clothing/species/teshari/mask.dmi'
	icon_state = "seva"
	resistance_flags = FIRE_PROOF
	flags_inv = HIDEFACIALHAIR|HIDEFACE|HIDEEYES|HIDEEARS|HIDEHAIR|HIDESNOUT
