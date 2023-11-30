local mods = {
    modEngine = {
        modNum = 11,
        label = "Moteur",
        parent = "upgradeMenu",
        title = "Engine",
        icon = "gauge",
        price = { 15.0, 35.0, 50.0, 70.0 },
    },
    modBrakes = {
        modNum = 12,
        label = "Freins",
        parent = "upgradeMenu",
        title = "Breaks",
        price = { 4.65, 9.3, 18.6, 13.95 }
    },
    modTransmission = {
        modNum = 13,
        label = "Transimission",
        parent = "upgradeMenu",
        title = "Transmission",
        price = { 15.0, 30.0, 50.0, 70.0 },
    },
    modSuspension = {
        modNum = 15,
        label = "Suspension",
        parent = "upgradeMenu",
        title = "Suspension",
        price = { 3.0, 7.0, 15.0, 30.0, 40.0, 40.0, 40.0 }
    },
    modArmor = {
        modNum = 16,
        label = "Armure",
        parent = "upgradeMenu",
        title = "Armure",
        price = { 69.77, 110.28, 120.00, 140.00, 170.00, 180.00 }
    },
    modTurbo = {
        modNum = 18,
        label = "Turbo",
        parent = "upgradeMenu",
        title = "Turbo",
        price = 55.0
    },
    --- body parts
    modSpoilers = {
        modNum = 0,
        label = "Ailerons",
        parent = "bodyPartsMenu",
        title = "Ailerons",
        icon = "wind",
        price = 4.65
    },
    modFrontBumper = {
        modNum = 1,
        label = "Pares-chocs Avant",
        parent = "bodyPartsMenu",
        title = "Pares-chocs Avant",
        icon = "car-rear",
        price = 5.12
    },
    modRearBumper = {
        modNum = 2,
        label = "Pares-chocs Arrière",
        parent = "bodyPartsMenu",
        title = "Pares-chocs Arrière",
        icon = "car-rear",
        price = 5.12
    },
    modSideSkirt = {
        modNum = 3,
        label = "Jupes Latérales",
        parent = "bodyPartsMenu",
        title = "Jupes Latérales",
        icon = "car-side",
        price = 4.65
    },
    modExhaust = {
        modNum = 4,
        label = "Echappements",
        parent = "bodyPartsMenu",
        title = "Echappements",
        icon = "car",
        price = 5.12
    },
    modFrame = {
        modNum = 5,
        label = "Arceaux",
        parent = "bodyPartsMenu",
        title = "Arceaux",
        icon = "car",
        price = 5.12
    },
    modGrille = {
        modNum = 6,
        label = "Calandres",
        parent = "bodyPartsMenu",
        title = "Calandres",
        icon = "car",
        price = 3.72
    },
    modHood = {
        modNum = 7,
        label = "Capots",
        parent = "bodyPartsMenu",
        title = "Capots",
        icon = "car",
        price = 4.88
    },
    modFender = {
        modNum = 8,
        label = "Aile Gauche",
        parent = "bodyPartsMenu",
        title = "Aile Gauche",
        icon = "car-side",
        price = 5.12
    },
    modRightFender = {
        modNum = 9,
        label = "Aile Droite",
        parent = "bodyPartsMenu",
        label = "Aile Droite",
        icon = "car-side",
        price = 5.12
    },
    modRoof = {
        modNum = 10,
        label = "Toit",
        parent = "bodyPartsMenu",
        title = "Toit",
        icon = "car",
        price = 5.58
    },
    modHorns = {
        modNum = 14,
        label = "Klaxons",
        parent = "cosmeticsMenu",
        title = "Klaxons",
        icon = "bullhorn",
        price = 1.12
    },
    modXenon = {
        modNum = 22,
        label = "Phares",
        parent = 'bodyPartsMenu',
        title = "Phares",
        icon = "lightbulb",
        price = 1.12
    },
    modFrontWheel0 = {
        label = "Sport",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Sport",
        icon = "dharmachakra",
        price = 4.65

    },
    modFrontWheel1 = {
        label = "Muscle",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Muscle",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel2 = {
        label = "Lowrider",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Lowrider",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel3 = {
        label = "SUV",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "SUV",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel4 = {
        label = "Tout-Terrain",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Tout-Terrain",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel5 = {
        label = "Tuning",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Tuning",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel6 = {
        label = "Motorcycle",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Motorcycle",
        icon = "dharmachakra",
        price = 4.65
    },
    modFrontWheel7 = {
        label = "Haut de Gamme",
        parent = 'wheelsMenu',
        modNum = 23,
        title = "Haut de Gamme",
        icon = "dharmachakra",
        price = 4.65
    },
    modPlateHolder = {
        modNum = 25,
        label = "Support Plaque",
        parent = 'cosmeticsMenu',
        title = "Support Plaque",
        icon = "credit-card",
        price = 3.49
    },
    modVanityPlate = {
        modNum = 26,
        label = "Vanity Plate",
        parent = 'cosmeticsMenu',
        title = "Vanity Plates",
        icon = "credit-card",
        price = 1.1
    },
    modTrimA = {
        modNum = 27,
        label = "Interieurs",
        parent = 'cosmeticsMenu',
        title = "Interieurs",
        icon = "couch",
        price = 6.98
    },
    modOrnaments = {
        modNum = 28,
        label = "Finitions",
        parent = 'cosmeticsMenu',
        title = "Finitions",
        icon = "t",
        price = 0.9
    },
    modDashboard = {
        modNum = 29,
        label = "Tableaux de bord",
        parent = 'cosmeticsMenu',
        title = "Tableaux de bord",
        icon = "car",
        price = 4.65
    },
    modDial = {
        modNum = 30,
        label = "Compteurs",
        parent = 'cosmeticsMenu',
        title = "Compteurs",
        icon = "gauge",
        price = 4.19
    },
    modDoorSpeaker = {
        modNum = 31,
        label = "Haut-Parleurs Portières",
        parent = 'cosmeticsMenu',
        title = "Haut-Parleurs Portières",
        icon = "door-open",
        price = 5.58
    },
    modSeats = {
        modNum = 32,
        label = "Sièges",
        parent = 'cosmeticsMenu',
        title = "Sièges",
        icon = "chair",
        price = 4.65
    },
    modSteeringWheel = {
        modNum = 33,
        label = "Volants",
        parent = 'cosmeticsMenu',
        title = "Volants",
        icon = "dharmachakra",
        price = 4.19
    },
    modShifterLeavers = {
        modNum = 34,
        label = "Leviers de vitesse",
        parent = 'cosmeticsMenu',
        title = "Leviers de vitesse",
        icon = "gear",
        price = 3.26
    },
    modAPlate = {
        modNum = 35,
        label = "Plaque",
        parent = 'cosmeticsMenu',
        title = "Plaque",
        icon = "credit-card",
        price = 4.19
    },
    modSpeakers = {
        modNum = 36,
        label = "Haut-Parleurs",
        parent = 'cosmeticsMenu',
        title = "Haut-Parleurs",
        icon = "headphones",
        price = 6.98
    },
    modTrunk = {
        modNum = 37,
        label = "Coffre",
        parent = 'cosmeticsMenu',
        title = "Coffre",
        icon = "car-rear",
        price = 5.58
    },
    modHydrolic = {
        modNum = 38,
        label = "Hydrolique",
        parent = 'cosmeticsMenu',
        title = "Hydrolique",
        icon = "h",
        price = 5.12
    },
    modEngineBlock = {
        modNum = 39,
        label = "Bloc Moteur",
        parent = 'cosmeticsMenu',
        title = "Bloc Moteur",
        icon = "battery-empty",
        price = 5.12
    },
    modAirFilter = {
        modNum = 40,
        label = "Filtre à Air",
        parent = 'cosmeticsMenu',
        title = "Filtre à Air",
        icon = "filter",
        price = 3.72
    },
    modStruts = {
        modNum = 41,
        label = "Barres support Moteur",
        parent = 'cosmeticsMenu',
        title = "Barres support Moteur",
        icon = "gear",
        price = 6.51
    },
    modArchCover = {
        modNum = 42,
        label = "Arch Cover",
        parent = 'cosmeticsMenu',
        title = "Arch Cover",
        icon = "bezier-curve",
        price = 4.19
    },
    modAerials = {
        modNum = 43,
        label = "Aerials",
        parent = 'cosmeticsMenu',
        title = "Aerials",
        icon = "signal",
        price = 1.12
    },
    modTrimB = {
        modNum = 44,
        label = "Wings",
        parent = 'cosmeticsMenu',
        title = "Wings",
        icon = "cloud",
        price = 6.05
    },
    modTank = {
        modNum = 45,
        label = "Tank",
        parent = 'cosmeticsMenu',
        title = "Tank",
        icon = "gas-pump",
        price = 4.19
    },
    modWindows = {
        modNum = 46,
        label = "Fenêtres",
        parent = 'cosmeticsMenu',
        title = "Fenêtres",
        icon = "window-maximize",
        price = 4.19
    },
    modLivery = {
        modNum = 48,
        label = "Livrées / Autocollants",
        parent = 'cosmeticsMenu',
        title = "Livrées / Autocollants",
        icon = "spray-can-sparkles",
        price = 9.3
    },

    plateIndex = {
        modNum = "plateIndex",
        label = "Plaque",
        parent = 'bodyPartsMenu',
        title = "Plaque",
        icon = "credit-card",
        price = 1.1
    },
    color = {
        icon = "droplet",
        price = 1.2
    },
    windowTint = {
        icon = "paint-roller",
        price = 1.2
    },
    neon = {
        icon = "paint-roller",
        price = 1.2
    },
    wheelsColor = {
        price = 1.2,
    }
}


return mods
