// Beacon offer price caps
#define SPECIAL_OFFER_MIN_PRICE 200
#define SPECIAL_OFFER_MAX_PRICE 100000

// Data packets - inventories and offers
#define good_data(nam, randList, price) list("name" = nam, "amount_range" = randList, "price" = price)
#define custom_good_name(nam) good_data(nam, null, null)
#define custom_good_amount_range(randList) good_data(null, randList, null)
#define custom_good_nameprice(nam, randList) good_data(nam, randList, null)
#define custom_good_price(price) good_data(null, null, price)

#define offer_data(name, price, amount) list("name" = name, "price" = price, "amount" = amount, "attachments" = null, "attach_count" = null)
#define offer_data_mods(name, price, amount, attachments, count) list("name" = name, "price" = price, "amount" = amount, "attachments" = attachments, "attach_count" = count)

#define trade_category_data(nam, listOfTags) list("name" = nam, "tags" = listOfTags)

// Good price modifiers
#define WHOLESALE_GOODS 0.6
#define COMMON_GOODS 1
#define UNCOMMON_GOODS 1.4
#define RARE_GOODS 1.8
#define UNIQUE_GOODS 2.6

// Offer mod groups
#define OFFER_ABERRANT_ORGAN list(/obj/item/modification/organ/internal/input, /obj/item/modification/organ/internal/process, /obj/item/modification/organ/internal/output)
#define OFFER_ABERRANT_ORGAN_PLUS list(/obj/item/modification/organ/internal/input, /obj/item/modification/organ/internal/process, \
										/obj/item/modification/organ/internal/output, /obj/item/modification/organ/internal/special)
#define OFFER_MODDED_ORGAN list(/obj/item/modification/organ/internal/stromal, /obj/item/modification/organ/internal/parenchymal)
#define OFFER_MODDED_TOOL list(/obj/item/tool_upgrade)
#define OFFER_MODDED_GUN list(/obj/item/tool_upgrade, /obj/item/gun_upgrade)

// Export price multipliers
#define NONEXPORTABLE 0
#define JUNK 0.1
#define EXPORTABLE 0.8 //20% Taxs
#define HOCKABLE 0.3		// Term for items being sold to a pawnbroker; means the item can be exported but is not a typical export, sold at 30% value
#define REFUND 1
