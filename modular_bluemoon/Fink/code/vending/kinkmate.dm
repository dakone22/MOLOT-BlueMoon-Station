/obj/machinery/vending/kink/Initialize()
	var/list/extra_products = list()
	var/list/extra_contraband = list()

	var/list/extra_premium = list(
		/obj/item/clothing/mask/muzzle/mouthring = 5
		)

	LAZYADD(products, extra_products)
	LAZYADD(contraband, extra_contraband)
	LAZYADD(premium, extra_premium)
	. = ..()
