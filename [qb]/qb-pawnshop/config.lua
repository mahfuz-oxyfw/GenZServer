Config = {}


Config.UseBlip = true  --if you want a pawnshop logo on the map
Config.BlipTitle = 'Larrys Pawnshop' --title that shows up on the map if using blip

Config.ProgBarSpeed = 10000 --time to sell items

Config.PedLocation = {
    ['x'] = -1212.34,
	['y'] = -1782.15,                --self explanatory 
	['z'] = 2.91,
	['heading'] = 67.98
}


Config.TableLocation = {
	['x'] = -1213.65,
	['y'] = -1781.78,                    --wherever if you change ped location change the table too
	['z'] = 2.91,
	['heading'] = 73.54
}
  
Config.Items = {
    ['markedbills'] = {       --this
        itemName = 'markedbills', --and this must be the same
        MinSellPrice = 7000,
        MaxSellPrice = 12000,
    },

    ['rolex'] = {
        itemName = 'rolex',
        MinSellPrice = 400,
        MaxSellPrice = 700,
    },

    ['diamond_ring'] = {
        itemName = 'diamond_ring',
        MinSellPrice = 800,
        MaxSellPrice = 900,
    },

    ['diamond'] = {
        itemName = 'diamond',
        MinSellPrice = 600,
        MaxSellPrice = 700,
    },

    ['goldchain'] = {
        itemName = 'goldchain',
        MinSellPrice = 500,
        MaxSellPrice = 600,
    },

    ['10kgoldchain'] = {
        itemName = '10kgoldchain',
        MinSellPrice = 800,
        MaxSellPrice = 1100,
    },

    ['goldbar'] = {
        itemName = 'goldbar',
        MinSellPrice = 2200,
        MaxSellPrice = 2600,
    },

    ['iphone'] = {
        itemName = 'iphone',
        MinSellPrice = 200,
        MaxSellPrice = 500,
    },

    ['samsungphone'] = {
        itemName = 'samsungphone',
        MinSellPrice = 105,
        MaxSellPrice = 305,
    },

    ['laptop'] = {
        itemName = 'laptop',
        MinSellPrice = 500,
        MaxSellPrice = 850,
    },

    ['cryptostick'] = {
        itemName = 'cryptostick',
        MinSellPrice = 50,
        MaxSellPrice = 60,
    },

    ['romantic_book'] = {
        itemName = 'romantic_book',
        MinSellPrice = 50,
        MaxSellPrice = 60,
    },

    ['gold_watch'] = {
        itemName = 'gold_watch',
        MinSellPrice = 600,
        MaxSellPrice = 600,
    },

    ['gold_bracelet'] = {
        itemName = 'gold_bracelet',
        MinSellPrice = 400,
        MaxSellPrice = 500,
    },

    ['earings'] = {
        itemName = 'earings',
        MinSellPrice = 500,
        MaxSellPrice = 600,
    },

    ['necklace'] = {
        itemName = 'necklace',
        MinSellPrice = 500,
        MaxSellPrice = 600,
    },

    ['weed_skunk'] = {
        itemName = 'weed_skunk',
        MinSellPrice = 50,
        MaxSellPrice = 60,
    },

    ['moneybag'] = {
        itemName = 'moneybag',
        MinSellPrice = 1250,
        MaxSellPrice = 1700,
    }
}