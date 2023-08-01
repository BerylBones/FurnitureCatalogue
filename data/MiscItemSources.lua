FurC.MiscItemSources = FurC.MiscItemSources or {}

local ver = FurC.Constants.Versioning
local src = FurC.Constants.ItemSources

-- locations
local onSummerset = " on Summerset"
local backwaterSwamp = " in Murkmire"
local gloriousHome = " on Vvardenfell"
local inWrothgar = " in Wrothgar"
local elsewhere = " in S. Elsweyr"
local in_skyrim = " in Western Skyrim"
local in_blackwood = " in Blackwood"
local in_summerset = " in Summerset"
local in_elsweyr = " in Elsweyr"

-- Quests and Guilds
local questRewardString = GetString(SI_FURC_QUESTREWARD)
local questRewardSuran = GetString(SI_FURC_QUESTREWARD) .. " Suran"
local tribute = GetString(SI_FURC_TRIBUTE)
local tribute_ranked = GetString(SI_FURC_TRIBUTE_RANKED)
local db_poison = zo_strformat("<<1>> <<2>>", GetString(SI_FURC_DB), GetString(SI_FURC_DB_POISON))
local db_sneaky = zo_strformat("<<1>> <<2>>", GetString(SI_FURC_DB), GetString(SI_FURC_DB_STEALTH))
local db_equip = zo_strformat("<<1>> <<2>>", GetString(SI_FURC_DB), GetString(SI_FURC_DB_EQUIP))

-- Stealing
local stealable = GetString(SI_FURC_CANBESTOLEN)
local stealable_guard = GetString(SI_FURC_CANBEPICKED) .. " from guards"
local stealable_cc = stealable .. " in Clockwork City"
local stealable_scholars = stealable .. " from scholars"
local stealable_nerds = stealable_scholars .. " and mages"
local stealable_priests = stealable .. " from priests and pilgrims"
local stealable_thief = stealable .. " from thieves"
local stealable_woodworkers = stealable .. " from woodworkers"
local stealable_drunkards = stealable .. " from drunkards"
local stealable_wrothgar = stealable .. inWrothgar
local stealable_swamp = stealable .. backwaterSwamp
local stealable_elsewhere = GetString(SI_FURC_CANBESTOLEN) .. in_elsweyr

-- Other
local automaton_loot_cc = GetString(SI_FURC_AUTOMATON) .. " in Clockwork City"
local automaton_loot_vv = GetString(SI_FURC_AUTOMATON) .. " on Vvardenfell"
local sinister_hollowjack = "Sinister Hollowjack Items"
local chests_string = GetString(SI_FURC_CHESTS)
local chests_skyrim = chests_string .. in_skyrim
local chests_blackwood = chests_string .. in_blackwood
local chests_summerset = chests_string .. in_summerset
local chests_elsweyr = chests_string .. in_elsweyr
local mischouse = "From select house purchases"
local chests_high = chests_string .. " in High Isle"
local chests_blackr_grcaverns = chests_string .. " in Blackreach: Greymoor Caverns"

local scrying = GetString(SI_FURC_CANBESCRYED)

local book_hall = "From chests in the Scrivener's Hall vault"

local elsweyr_event = GetString(SI_FURC_EVENT_ELSWEYR)
local priceUnknown = "?"

local blackwood_event = GetString(SI_FURC_EVENT_BLACKWOOD)
local puplicdungeon_fw_vv = GetString(SI_FURC_DROP) .. " in Forgotten Wastes" .. gloriousHome
local plants_vvardenfell = GetString(SI_FURC_PLANTS) .. gloriousHome

local fishing_summerset = GetString(SI_FURC_CANBEFISHED) .. onSummerset
local fishing_swamp = GetString(SI_FURC_CANBEFISHED) .. backwaterSwamp

local painting_summerset = GetString(SI_FURC_ITEMSOURCE_SAFEBOX) .. " (Summerset)"

local questRewardLilandril = questRewardString .. "Lilandril"
local mephalaItemSet = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Trappings of Mephala Worship")

-- Crowns
local crownstoresource = GetString(SI_FURC_CROWNSTORESOURCE)
local scambox_string = GetString(SI_FURC_SCAMBOX)
local scambox_newmoon = zo_strformat("<<1>> (<<2>>)", scambox_string, "New Moon")
local scambox_gloomspore = zo_strformat("<<1>> (<<2>>)", scambox_string, "Gloomspore")
local scambox_sovngarde = zo_strformat("<<1>> (<<2>>)", scambox_string, "Sovngarde")
local scambox_frosty = zo_strformat("<<1>> (<<2>>)", scambox_string, "Frost Atronach")
local scambox_wraith = zo_strformat("<<1>> (<<2>>)", scambox_string, "Wraithtide")
local scambox_sunken = zo_strformat("<<1>> (<<2>>)", scambox_string, "Sunken Trove")
local scambox_stonelore = zo_strformat("<<1>> (<<2>>)", scambox_string, "Stonelore")
local scambox_dark = zo_strformat("<<1>> (<<2>>)", scambox_string, "Dark Chivalry")
local scambox_fireatro = zo_strformat("<<1>> (<<2>>)", scambox_string, GetString(SI_FURC_FLAME_ATRONACH))
local scambox_dwemer = zo_strformat("<<1>> (<<2>>)", scambox_string, GetString(SI_FURC_DWEMER))
local scambox_reaper = zo_strformat("<<1>> (<<2>>)", scambox_string, GetString(SI_FURC_REAPER))

local itemPackMoonBishop = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Moon Bishop’s Sanctuary")
local itemPackOasis = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Moons-Blessed Oasis")
local itemPackVampire = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Vampiric Libations")
local itemPackHeart = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Heart's Day Retreat")
local itemPackCragKnicks = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Craglorn Multicultural Knick-Knacks")
local itemPackHubTreasure = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Hubalajad's Final Treasure")
local itemPackDibella = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Dibella's Garden")
local itemPackMermaid = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Steam Bath Serenity")
local itemPackZeni = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Chapel of Zenithar")
local itemPackWindows = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Windows of the Divines")
local itemPackAmbitions = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Daedric Ambitions")
local itemPackForge = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Forge-Lord's Great Works")
local itemPackCoven = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Witches' Coven")
local itemPackTyrants = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Tyrants of the Merethic Era")
local itemPackKhajiit = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Khajiiti Life")
local itemPackMalacath = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Malacath's Chosen")
local itemPackAlchemist = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Mad Alchemist")
local itemPackAzura = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Daedric Set of Azura")
local itemPackColdharbour = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Coldharbour Arcanaeum")
local itemPackFargrave = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Fargrave Bazaar")
local itemPackAquatic = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Aquatic Splendor")
local itemPackMaormer = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Maormer Boarding Party")
local itemPackNewLife2018 = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "New Life Festival")
local itemPackDeepmire = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Deepmire Expedition")
local itemPackDwemer = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Dwemer")
local itemPackVivec = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Lord Vivec")
local itemPackSwamp = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Shadow and Stone")
local itemPackMolag = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Molag Bal")
local itemPackAyleid = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "Ayleid")
local itemPackSotha = zo_strformat(GetString(SI_FURC_ITEMSOURCE_ITEMPACK), "The Clockwork God's Domain")

local function getCrownPrice(price)
  local priceString = ((not price or price < 0) and priceUnknown) or tostring(price)
  return string.format("%s (%s)", crownstoresource, priceString)
end

local scamgemString = GetString(SI_FURC_SCAMBOX_GEMS)
local function getGemPrice(price)
  local priceString = ((not price or price < 0) and priceUnknown) or tostring(price)
  return string.format("%s (%s)", scamgemString, priceString)
end

local housesource = GetString(SI_FURC_HOUSE)
local function getHouseString(houseId1, houseId2) -- use collectible number from https://wiki.esoui.com/Collectibles instead of houseIDs.
  local houseName = GetCollectibleName(houseId1)
  if houseId2 then
    houseName = houseName .. ", " .. GetCollectibleName(houseId2)
  end
  return zo_strformat(housesource, houseName)
end

-- 27 Base Game Patch
FurC.MiscItemSources[ver.BASED] = {}

-- 26 Necrom
FurC.MiscItemSources[ver.NECROM] = {
  [src.CROWN] = {},
  [src.DROP] = {},
}

-- 25 Scribes of Fate
FurC.MiscItemSources[ver.SCRIBE] = {

  [src.CROWN] = {},

  [src.DROP] = {
    [194456] = book_hall, -- Invocation of Hircine,
    [194460] = book_hall, -- Apocrypha, Apocrypha,
    [194459] = book_hall, -- Dream of a Thousand Dreamers,
    [194458] = book_hall, -- Lord Hollowjack's Dream Realm,
    [194455] = book_hall, -- Havocrel: Strangers from Oblivion,
    [194454] = book_hall, -- The Waters of Oblivion,
    [194453] = book_hall, -- A Memory Book, Part 1,
    [194452] = book_hall, -- A Memory Book, Part 2,
    [194451] = book_hall, -- A Memory Book, Part 3,
    [194449] = book_hall, -- In Dreams We Awaken,
    [194448] = book_hall, -- Glorious Upheaval,
    [194447] = book_hall, -- Stonefire Ritual Tome,
    [194446] = book_hall, -- Bisnensel: Our Ancient Roots,
    [194445] = book_hall, -- Boethiah and Her Avatars,
    [194444] = book_hall, -- Persistence of Daedric Veneration,
    [194443] = book_hall, -- Daedra Dossier: The Titans,
    [194419] = book_hall, -- Scrivener's Hall Vault Door,
    [194420] = book_hall, -- Nesting Stones, Green,
    [194421] = book_hall, -- Nesting Boulder, Green,
    [194422] = book_hall, -- Hermaeus Mora Banner, Extra Long,
    [194423] = book_hall, -- Hermaeus Mora Banner, Long,
    [194442] = book_hall, -- Journal of Culanwe,
    [194441] = book_hall, -- Graccus' Journal, Volume I,
    [194440] = book_hall, -- Tome of Daedric Portals,
    [194439] = book_hall, -- The Journal of Emperor Leovic,
    [194450] = book_hall, -- Thwarting the Daedra: Dagon's Cult,
  },
}

-- 24 Firesong
FurC.MiscItemSources[ver.DRUID] = {
  [src.CROWN] = {
    [190945] = getCrownPrice(5000), -- Tree, Seasons of Y'ffre

    [190946] = scambox_stonelore .. getGemPrice(40), -- Earthen Root Essence
    [190947] = scambox_stonelore .. getGemPrice(40), -- Druidic Arch, Floral
    [190950] = scambox_stonelore .. getGemPrice(40), -- Rose Petal Cascade
    [190951] = scambox_stonelore .. getGemPrice(100), -- Target Spriggan, Robust

    [192405] = itemPackMaormer, -- Maormer Tent, Raid Leader's
    [192406] = itemPackMaormer, -- Maormer Ship's Prow, Serpentine
    [192407] = getCrownPrice(720) .. " or " .. itemPackMaormer, -- Maormer Tent, Raider's
    [192408] = getCrownPrice(70) .. " or " .. itemPackMaormer, -- Maormer Trunk, Carved
    [192409] = getCrownPrice(3000) .. " or " .. itemPackMaormer, -- Maormer Cookfire
    [192410] = getCrownPrice(85) .. " or " .. itemPackMaormer, -- Maormer Chair, Carved
    [192412] = getCrownPrice(340) .. " or " .. itemPackMaormer, -- Maormer Curtain, Serpentine Cloth
    [192413] = getCrownPrice(180) .. " or " .. itemPackMaormer, -- Maormer Table, Carved
    [192414] = getCrownPrice(160) .. " or " .. itemPackMaormer, -- Maormer Armchair, Carved
    [192418] = getCrownPrice(10) .. " or " .. itemPackMaormer, -- Maormer Mug, Serpentine
    [192420] = getCrownPrice(180) .. " or " .. itemPackMaormer, -- Maormer Rug, Serpentine
    [192425] = getCrownPrice(150) .. " or " .. itemPackMaormer, -- Maormer Teapot, Serpentine
    [192427] = getCrownPrice(70) .. " or " .. itemPackMaormer, -- Maormer Lamp, Serpentine
    [192429] = getCrownPrice(110) .. " or " .. itemPackMaormer, -- Maormer Sconce, Serpentine
    [192422] = getCrownPrice(80) .. " or " .. itemPackMaormer, -- Maormer Half-Rug
    [192423] = getCrownPrice(340) .. " or " .. itemPackMaormer, -- Maormer Runner, Amethyst Waves
  },

  [src.DROP] = {
    [187922] = scrying .. " in Fargrave ", -- Antique Map of Fargrave",
    [192430] = scrying .. " in Galen ", -- Vulk'esh Egg",
    [192431] = scrying .. " in Galen ", -- Antique Map of Galen",
    [192432] = scrying .. " in Galen (3 Pieces)", -- Shipbuilder's Woodworking Station",
    [190938] = scrying .. " in Galen (5 Pieces)", -- Music Box, Blessings of Stone",

    [192401] = tribute, -- The Chimera Tribute Tapestry",
    [192402] = tribute, -- The Chimera Tribute Tapestry, Large",
    [192403] = tribute, -- Forest Wraith Tribute Tapestry",
    [192404] = tribute, -- Forest Wraith Tribute Tapestry, Large",
  },
}

-- 23 Lost Depths
FurC.MiscItemSources[ver.DEPTHS] = {
  [src.CROWN] = {
    [188341] = scambox_wraith .. " (100 gems)", -- Red Diamond Stained Glass,
    [188342] = scambox_wraith .. " (40 gems)", -- Bat Swarm, Domesticated,
    [188343] = scambox_wraith .. " (100 gems)", -- Moonlight Path Bridge,
    [188344] = scambox_wraith .. " (40 gems)", -- Y'ffre's Falling Leaves, Autumn,

    [189463] = getCrownPrice(3500), -- Statue, Bendu Olo,
    [189464] = getCrownPrice(1000), -- Music Box, Deeproot Dirge,
    [189465] = getCrownPrice(1200), -- Music Box, Gonfalon Galliard,
  },

  [src.DROP] = {
    [187804] = tribute_ranked, -- Tribute Trophy, Orichalcum,
    [187805] = tribute_ranked, -- Tribute Trophy, Ebony,
    [187806] = tribute_ranked, -- Tribute Trophy, Quicksilver,
    [187807] = tribute_ranked, -- Tribute Trophy, Voidsteel,
  },
}

-- 22 High Isle
FurC.MiscItemSources[ver.BRETON] = {
  [src.CROWN] = {
    [187861] = getCrownPrice(110), -- High Isle Hourglass, Compass Rose
    [187665] = getCrownPrice(3500), -- Statue, Kynareth's Blessings
    [187860] = getCrownPrice(65), -- High Isle Vase, Gilded
    [187865] = getCrownPrice(55), -- Flowers, Butterweed Cluster
    [147926] = getCrownPrice(6000), -- Target Iron Atronach, Trial
    [187664] = getCrownPrice(6000), -- Target Deadlands Harvester, Trial

    [187666] = getCrownPrice(1000), -- Music Box, Steadfast Armistice
    [187667] = getCrownPrice(1200), -- Music Box, High Isle Duel

    [187661] = scambox_dark .. getGemPrice(40), -- Mage's Flame
    [187662] = scambox_dark .. getGemPrice(100), -- House Dufort Chandelier
    [187663] = scambox_dark .. getGemPrice(40), -- Blue Fang Shark, Mounted
    [187660] = scambox_dark .. getGemPrice(100), -- Mages Guild Stained Glass
  },

  [src.DROP] = {
    [187802] = scrying .. " in High Isle ", -- Druidic Provisioning Station
    [187800] = scrying .. " in High Isle ", -- Draoife Storystone
    [187801] = scrying .. " in High Isle ", -- Sea Elf Galleon Helm
    [187799] = scrying .. " in High Isle ", -- Antique Map of High Isle

    [187868] = chests_high, -- Ascendant Silence Painting, Metal
    [187869] = chests_high, -- Noble Still Life Painting, Metal
    [187870] = chests_high, -- Gifts of the Sun Painting, Metal
    [187871] = chests_high, -- High Isle Seahome Painting, Metal
    [187873] = chests_high, -- Abecean Bounty Painting, Wood
    [187874] = chests_high, -- Masted Behemoth Painting, Wood
    [187875] = chests_high, -- Tor Draioch Towers Painting, Wood
    [187876] = chests_high, -- Gonfalon Colossus Painting, Wood
    [187877] = chests_high, -- Gates of Gonfalon Bay Painting, Wood
    [187872] = chests_high, -- Light's Warning Painting, Wood

    [188272] = tribute, -- Blackfeather Knight Tribute Tapestry
    [188273] = tribute, -- Blackfeather Knight Tribute Tapestry, Large
    [188274] = tribute, -- Hagraven Matron Tribute Tapestry
    [188275] = tribute, -- Hagraven Matron Tribute Tapestry, Large
    [188276] = tribute, -- Hlaalu Councilor Tribute Tapestry
    [188277] = tribute, -- Hlaalu Councilor Tribute Tapestry, Large
    [188278] = tribute, -- Knight Commander Tribute Tapestry
    [188279] = tribute, -- Knight Commander Tribute Tapestry, Large
    [188280] = tribute, -- Prowling Shadow Tribute Tapestry
    [188281] = tribute, -- Prowling Shadow Tribute Tapestry, Large
    [188282] = tribute, -- Pyandonean War Fleet Tribute Tapestry
    [188283] = tribute, -- Pyandonean War Fleet Tribute Tapestry, Large
    [188284] = tribute, -- Serpentguard Rider Tribute Tapestry
    [188285] = tribute, -- Serpentguard Rider Tribute Tapestry, Large
    [187808] = tribute_ranked, -- Tribute Trophy, Rubedite

    [188201] = "Reward for completeing Ember's rapport quests", -- Letter From Ember
    [188202] = "Reward for completeing Isobel's rapport quests", -- Letter From Isobel
  },
}

-- 21 Ascending Tide
FurC.MiscItemSources[ver.TIDES] = {
  [src.CROWN] = {
    [184072] = scambox_sunken .. " (100 gems)", -- Aquarium, Large Abecean Coral,
    [184071] = scambox_sunken .. " (40 gems)", -- Aquarium, Abecean Coral,
    [184127] = scambox_sunken .. " (40 gems)", -- Tranquility Pond, Botanical,
    [184126] = scambox_sunken .. " (100 gems)", -- Waterfall Fountain, Round,

    [183200] = getCrownPrice(1100), -- Music Box: Wonders of the Shoals,
    [183201] = getCrownPrice(1000), -- Music Box: Bleak Beacon Shanty,

    [178477] = getCrownPrice(170), -- Nedic Bookcase, Filled,
    [183198] = "Fargrave homegoods vendor, or " .. getCrownPrice(10), -- Bushes, Withered Cluster,
    [184175] = getCrownPrice(3500), -- Statue, Ancestor-King Auri-El,
    [184242] = getCrownPrice(370), -- Nedic Brazier, Cold-Flame,
    [184243] = getCrownPrice(640), -- Nedic Brazier, Cold-Flame Pillar,
    [184244] = getCrownPrice(110), -- Nedic Sconce, Torch,
    [184245] = getCrownPrice(610), -- Nedic Chandelier, Swords,
    [184246] = getCrownPrice(130), -- Nedic Bench, Carved,
    [184250] = getCrownPrice(240), -- Nedic Banner, Ancient,
    [120853] = "This is craftable, or " .. getCrownPrice(430), -- Stockade,

    --Crown Furnishing Packs--
    [184107] = getCrownPrice(20) .. " or " .. itemPackAquatic, -- Kelp Stalk, Tall,
    [184108] = getCrownPrice(90) .. " or " .. itemPackAquatic, -- Kelp Grouping, Thin,
    [184110] = getCrownPrice(170) .. " or " .. itemPackAquatic, -- Verdant Anemone, Strong,
    [184111] = getCrownPrice(170) .. " or " .. itemPackAquatic, -- Lilac Anemone, Sprout,
    [183891] = itemPackAquatic, -- Jellyfish Bloom, Heliotrope,
    [183892] = getCrownPrice(430) .. " or " .. itemPackAquatic, -- Minnow School,
    [183893] = getCrownPrice(1500) .. " or " .. itemPackAquatic, -- Bubbles of Aeration,
    [183894] = itemPackAquatic, -- Nedic Chest, Bubbling,
    [184109] = getCrownPrice(90) .. " or " .. itemPackAquatic, -- Kelp Grouping, Robust,
    [184112] = getCrownPrice(170) .. " or " .. itemPackAquatic, -- Lilac Coral, Strong,
    [184205] = getCrownPrice(120) .. " or " .. itemPackAquatic, -- Sand Drift, Oceanic,
    [184106] = getCrownPrice(20) .. " or " .. itemPackAquatic, -- Kelp Stalk, Plain,
    [184105] = getCrownPrice(45) .. " or " .. itemPackAquatic, -- Green Algae Coral Formation, Tree Capped,
    [184104] = getCrownPrice(45) .. " or " .. itemPackAquatic, -- Red Algae Coral Formation, Waving Hands,
    [184103] = getCrownPrice(45) .. " or " .. itemPackAquatic, -- Red Algae Coral Formation, Tree Antler,
    [183856] = itemPackAquatic, -- Target Mudcrab, Robust Coral,
    [184247] = getCrownPrice(45) .. " or " .. itemPackAquatic, -- Brittle-Vein Coral, Cluster,
    [184248] = getCrownPrice(20) .. " or " .. itemPackAquatic, -- Stones, Coral Cluster,
    [184249] = getCrownPrice(20) .. " or " .. itemPackAquatic, -- Elkhorn Coral, Branching,
  },
}

-- 20 Deadlands
FurC.MiscItemSources[ver.DEADL] = {
  --[[ ============== To do: =======================

	Furnishing packs!
		Limited Time -
			Lord vivec
			intrepid gourmet
			moons bless oasis
			moon bishop's sanctuary
			clockwork god's domain
			stone and shadow
			dwarven pipes?
			island hideaway parlor

		Always in crown store -
			Summerset Noble's Bathing
			Summerset Noble's Parlor
			Formal Garden Shrubbery
			Tamrielic Household Necessities
			Trees of Tamriel Garden
			Craglorn Multicultural Bedroom
			Home in Nibenay Bedroom
			Summerset Noble's Bedroom
			Crag Multicultural Kitchen
			Niben Valley Kitchen
			Summerset Noble's Kitchen
			Craglorn Multicultural Parlor
			Cyrodilic Parlor

	 Crown crate/gem furnishings!
		Frost Atronach
		Grimm Harlequin
		Celestial
		Ayleid
		Sovngarde

	 Remove rumoursource items that have been given a source. No need for them to be listed multiple times.

	 Can I add a separate crown source for housing editor vs normal crown store? Seems like it should be fairly easy. Model after SI_FURC_CROWNSTORESOURCE and getCrownPrice

	 Add seals of endeavor prices with the gem prices for crate items (can I add a constant for pricing? ie: getGemPrice(40) would output "40 Gems or 2000 Endeavors"

	 Learn how to add housing sources (I see it there, just need to play with it)

	 Sort things into their proper versions! I've been adding most things to the top of the most recent version, but sorting needs to happen!
	]]

  [src.DROP] = {
    [178694] = blackwood_event, -- Target Ogrim,
    [166960] = "From combining Stone Husk Fragments from the Labyrinthian in Western Skyrim", -- Target Stone Husk,

    [156644] = scambox_frosty .. " (40 gems)", -- Books, Towering Pile

    [182302] = scrying .. " in the Deadlands (3 pieces)", -- Daedric Enchanting Station,
    [175728] = scrying .. " in Blackwood", -- Z'en Idol,
    [175729] = scrying .. " in Blackwood", -- Kothringi Tidal Canoe,
    [178459] = scrying .. " in Blackwood", -- Antique Map of Blackwood,
    [183196] = scrying .. " in the Deadlands", -- Antique Map of the Deadlands,
    [171431] = scrying .. " in the Reach", -- Antique Map of the Reach,
    [165992] = scrying .. " in Western Skyrim", -- Antique Map of Western Skyrim
    [163431] = scrying .. " (3 pieces)", -- Music Box, Aldmeri Symphonia "in dreams and memories"
    [182303] = scrying .. " in the Deadlands", -- Dagon's Scalding Gibbet,
    [165863] = scrying .. " in Grahtwood", -- St. Alessia, Paravant

    [178442] = chests_blackwood, -- Idylls of Gideon Painting, Wood,
    [178443] = chests_blackwood, -- Path of Eternity Painting, Wood,
    [178444] = chests_blackwood, -- A Study in Structure Painting, Wood,
    [178445] = chests_blackwood, -- Leyawiin at Night Painting, Wood,
    [178446] = chests_blackwood, -- Fire-Shaped Shadows Painting, Silver,
    [178447] = chests_blackwood, -- Music in Repose Painting, Silver,
    [178448] = chests_blackwood, -- Undying Light Painting, Silver,
    [178449] = chests_blackwood, -- The Legacy of Kaladas Painting, Wood,
    [178450] = chests_blackwood, -- Harvest's Gifts Painting, Wood,
    [178451] = chests_blackwood, -- Reverence's Mandate Painting, Wood,
    [139076] = chests_summerset, -- Painting of Ancient Road, Refined
    [165829] = chests_elsweyr, -- Before the Trade Gathering Painting, Wood
    [165830] = chests_elsweyr, -- Elsweyr Vista Painting, Wood
    [165831] = chests_elsweyr, -- Catnap Painting, Gold
    [165832] = chests_elsweyr, -- Elsweyr Landscape Painting, Gold
    [165833] = chests_elsweyr, -- Elsweyr Dome Architecture Painting, Gold
    [165835] = chests_elsweyr, -- Painting of Khajiiti Arch, Gold,
    [139075] = chests_summerset, -- Painting of Sinkhole, Refined

    [94100] = "Can be gained as a level up reward or Crown Store (50)", -- Imperial BookCase, Swirled
    [145595] = "From sneaking up on Scuttleblooms in Murkmire", -- Scuttlebloom
    [147644] = "Frostvault rare drop", -- Palisade, Crude,
    [147642] = "Frostvault rare drop", -- Boar Totem, Balance,
    [147643] = "Frostvault rare drop", -- Boar Totem, Solitary,
    [163432] = "Reward for 'An Instrumental Triumph' achievement from the Bard's College in Solitude, Western Skyrim", -- Music Box, Merry Mead Maker
    [166027] = "Drops from chaurus mobs in Blackreach", -- Chaurus Egg, Dormant

    [134403] = "Can be stolen, mostly from wardrobes in Hew's Bane", --Spool, Red Thread,

    [178472] = "Given to members of the Dauntless Bananas Guild as part of a 2020 contest", -- Guild Banner, Dauntless Bananas,
    [178498] = "Given to members of the Dauntless Bananas Guild as part of a 2020 contest", -- A Tale of the Dauntless Bananas,
  },

  [src.CROWN] = {
    [171857] = getCrownPrice(3000), -- Aetherial Well,

    -- ==================== Crown Housing Editor ==============================
    [182915] = getCrownPrice(260), -- Fargrave Container Plants, Long,
    [182916] = getCrownPrice(260), -- Fargrave Container Plant, Large Square,
    [182917] = getCrownPrice(260), -- Fargrave Container Plants, Large Round,
    [182914] = getCrownPrice(140), -- Fargrave Container Plants,
    [182913] = getCrownPrice(140), -- Fargrave Container Plants, Small,
    [141832] = getCrownPrice(70), -- Tree, Robust Fig,
    [141833] = getCrownPrice(150), -- Tree, Ancient Fig,
    [141834] = getCrownPrice(170), -- Tree, Towering Fig,
    [141835] = getCrownPrice(70), -- Tree, Whorled Fig,
    [181532] = getCrownPrice(3600), -- Leyawiin Fountain, Round Grand,
    [182281] = getCrownPrice(2300), -- Fargrave Fountain,
    [118148] = getCrownPrice(80) .. " or " .. mischouse, --Firelogs, Ashen,
    [118146] = getCrownPrice(80) .. " or " .. mischouse, --Firelogs, Flaming,
    [118147] = getCrownPrice(80) .. " or " .. mischouse, --Firelogs, Charred,
    [167294] = getCrownPrice(20) .. " or " .. mischouse, -- Boulder, Jagged Stone,
    [118350] = getCrownPrice(25), --Box of Tangerines,
    [118352] = getCrownPrice(25), --Box of Oranges,
    [118353] = getCrownPrice(25), --Box of Grapes,
    [118354] = getCrownPrice(25), --Box of Fruit,
    [134278] = getCrownPrice(3500), --Clockwork Alchemy Station,
    [134279] = getCrownPrice(3500), --Clockwork Blacksmithing Station,
    [134282] = getCrownPrice(3500), --Clockwork Woodworking Station,
    [134281] = getCrownPrice(3500), --Clockwork Clothing Station,
    [134277] = getCrownPrice(3000), --Clockwork Provisioning Station,
    [134276] = getCrownPrice(4500), --Clockwork Dye Station,
    [134280] = getCrownPrice(3500), --Clockwork Enchanting Station,
    [139064] = getCrownPrice(20) .. " or " .. mischouse, -- Flowers, Hummingbird Mint
    [118175] = getCrownPrice(170), --Shutters, Hinged Lattice,
    [118174] = getCrownPrice(170), --Shutters, Blue Lattice,
    [118173] = getCrownPrice(170), --Shutters, Blue Hinged,
    [118172] = getCrownPrice(170), --Shutters, Blue Slatted,
    [118171] = getCrownPrice(170), --Shutters, Blue Hatch,
    [118170] = getCrownPrice(170), --Shutters, Blue Double,
    [118169] = getCrownPrice(170), --Shutters, Blue Single,
    [141845] = getCrownPrice(370), -- Mushrooms, Climbing Ambershine
    [141846] = getCrownPrice(370), -- Mushrooms, Ambershine Cluster
    [141844] = getCrownPrice(70), -- Plants, Amber Spadeleaf Cluster
    [182918] = getCrownPrice(160), -- Boulder, Weathered Fargrave,
    [182919] = getCrownPrice(160), -- Rocks, Fargrave Cluster,
    [141841] = getCrownPrice(40), -- Tree Ferns, Cluster,
    [141842] = getCrownPrice(10), -- Tree Ferns, Juvenile Cluster,
    [171817] = getCrownPrice(730) .. " or " .. mischouse, -- Ayleid Chandelier, Caged,
    [181602] = getCrownPrice(30), -- Bush, Low Greenleaf Cluster,
    [181604] = getCrownPrice(30), -- Bush, Snow Lillies,
    [182935] = getCrownPrice(140), -- Stump, Charred Deadlands,
    [182934] = getCrownPrice(140), -- Log, Charred Deadlands,
    [182933] = getCrownPrice(260), -- Tree, Charred Large Deadlands,
    [182932] = getCrownPrice(260), -- Tree, Charred Large Twisted Deadlands,
    [182931] = getCrownPrice(140), -- Tree, Charred Deadlands,
    [182930] = getCrownPrice(110), -- Plant, Pixas,
    [182929] = getCrownPrice(110), -- Plant, Hynvik,
    [125581] = getCrownPrice(25), -- Mushroom, Buttercake,

    --======================= Limited Time Crown Store Items ==========================
    [156645] = getCrownPrice(4000), -- Statue, Kaalgrontiid's Ascent
    [159439] = getCrownPrice(3500), -- Statue, Pride of Alkosh Hero
    [147646] = getCrownPrice(3000), -- Meridia, Lady of Infinite Energies,
    [165991] = getCrownPrice(3500), -- Statue, Vampiric Sovereign
    [147747] = getCrownPrice(2500), -- Cadwell's Astounding Portal
    [147746] = getCrownPrice(1400), -- Bust: Abnur Tharn

    --======================= Music Boxes ===========================================
    [156554] = getCrownPrice(800), -- Music Box, A Frost Melt Melody
    [171943] = getCrownPrice(1000), -- Music Box, The Liberation of Leyawiin,
    [142235] = getCrownPrice(800), -- Music Box, Flickering Shadows
    [171543] = getCrownPrice(1000), -- Music Box, Feast of All Flames,
    [171944] = getCrownPrice(1000), -- Music Box, The Mirefrog's Hymn,
    [171542] = getCrownPrice(800), -- Music Box, Farewell to Nenalata,
    [167428] = getCrownPrice(1000), -- Music Box, Mother Morrowind's Sacred Lullaby,
    [167429] = getCrownPrice(1000), -- Music Box, Never Fall, Never Die,
    [167007] = getCrownPrice(1000), -- Music Box, Subterranean Sonata,
    [167006] = getCrownPrice(1000), -- Music Box, Hymn of Five-Hundred Axes,
    [153634] = getCrownPrice(800), -- Music Box, Diamond Melody
    [163428] = getCrownPrice(800), -- Music Box, The Shadows Stir
    [163429] = getCrownPrice(1000), -- Music Box, Enigmas of the Elder Way
    [156553] = getCrownPrice(800), -- Music Box, That Breezy Night in Bruma
    [159596] = getCrownPrice(800), -- Music Box, The Mad Harlequin's Reverie
    [159598] = getCrownPrice(800), -- Music Box, Dreams of Yokuda
    [151909] = getCrownPrice(800), -- Music Box, A Clash of Fang and Flame
    [151910] = getCrownPrice(800), -- Music Box, Dancing Among the Flowers Fine
    [147507] = getCrownPrice(800), -- Music Box, Hinterlands
    [147505] = getCrownPrice(800), -- Music Box, Y'ffre in Every Leaf
    [147506] = getCrownPrice(800), -- Music Box, Sands of the Alik'r
    [178522] = getCrownPrice(800), -- Music Box, Silver Rose
    [181636] = getCrownPrice(1000), -- Music Box, \"Fargrave Daydreams\",
    [181637] = getCrownPrice(1200), -- Music Box, \"Time's Architect\",
    [153633] = getCrownPrice(800), -- Music Box, The Ghosts of Frostfall
    [178521] = getCrownPrice(1000), -- Music Box, \"Invitation to Chaos\",

    -- ====================== Crown Furnishing Packs =============================
    [156775] = itemPackHeart, -- Bed, Petal-Strewn Double
    [156764] = getCrownPrice(85) .. " or " .. itemPackHeart, -- Bouquet, Small Dibella's
    [156776] = getCrownPrice(85) .. " or " .. itemPackHeart, -- Bouquet, Large Dibella's
    [156777] = getCrownPrice(85) .. " or " .. itemPackHeart, -- Bouquet, Medium Dibella's
    [156765] = getCrownPrice(290) .. " or " .. itemPackHeart, -- Chair, Love-Blessed
    [156766] = getCrownPrice(180) .. " or " .. itemPackHeart, -- Petals, Blanket
    [156767] = itemPackHeart, -- Sweetroll Platter
    [156768] = getCrownPrice(100) .. " or " .. itemPackHeart, -- Love's Flame Candlestick
    [156769] = getCrownPrice(500) .. " or " .. itemPackHeart, -- Kitten Moppet, Heart's Promise
    [156770] = getCrownPrice(500) .. " or " .. itemPackHeart, -- Kitten Moppet, Love-Blessed
    [156771] = getCrownPrice(410) .. " or " .. itemPackHeart, -- Table, Love-Blessed
    [156772] = getCrownPrice(340) .. " or " .. itemPackHeart, -- Petals, Large Blanket
    [156773] = getCrownPrice(180) .. " or " .. itemPackHeart, -- Rug, Love-Blessed
    [156774] = getCrownPrice(180) .. " or " .. itemPackHeart, -- Tapestry, Love-Blessed
    [156778] = getCrownPrice(85) .. " or " .. itemPackHeart, -- Flower, Dibella's Promise
    [134971] = getCrownPrice(100) .. " or " .. itemPackHeart, -- Candles, Votive Group

    [134879] = itemPackHubTreasure, -- Hubalajad's Reflection
    [134880] = itemPackHubTreasure, -- Ra Gada Reliquary, Miniature Palace,
    [134881] = itemPackHubTreasure, -- In Defense of Prince Hubalajad,
    [134882] = getCrownPrice(90) .. " or " .. itemPackHubTreasure, -- Gold Drakes, Pristine,
    [134883] = getCrownPrice(360) .. " or " .. itemPackHubTreasure, -- Ra Gada Funerary Statue, Stone Cat,
    [134884] = getCrownPrice(360) .. " or " .. itemPackHubTreasure, -- Ra Gada Funerary Statue, Gilded Cat,
    [134885] = getCrownPrice(360) .. " or " .. itemPackHubTreasure, -- Ra Gada Funerary Statue, Gilded Ibis,
    [134886] = getCrownPrice(360) .. " or " .. itemPackHubTreasure, -- Ra Gada Funerary Statue, Gilded Servant,
    [134887] = getCrownPrice(2000) .. " or " .. itemPackHubTreasure, -- Ra Gada Guardian Statue, Lion Ibis,
    [134888] = getCrownPrice(2000) .. " or " .. itemPackHubTreasure, -- Ra Gada Guardian Statue, Winged Bull,
    [134889] = getCrownPrice(2000) .. " or " .. itemPackHubTreasure, -- Ra Gada Guardian Statue, Riding Camel,
    [117901] = getCrownPrice(140) .. " or " .. itemPackHubTreasure, --Redguard Amphora, Gilded,
    [117894] = getCrownPrice(240) .. " or " .. itemPackHubTreasure, --Redguard Divider, Gilded,
    [117904] = getCrownPrice(190) .. " or " .. itemPackHubTreasure, --Redguard Trunk, Garish,
    [134823] = itemPackHubTreasure, -- Target Mournful Aegis,

    [117906] = elsweyr_event .. (" or " .. itemPackCragKnicks), -- Redguard Urn, Gilded
    [121053] = getCrownPrice(170) .. " or " .. itemPackCragKnicks .. " or " .. itemPackHubTreasure, -- Jar, Gilded Canopic
    [121046] = itemPackCragKnicks, -- Cheeses of Tamriel,
    [121049] = itemPackCragKnicks, -- Parcels, Wrapped,
    [120417] = itemPackCragKnicks, -- Redguard Barrel, Corded
    [118490] = itemPackCragKnicks, --Scroll, Rolled,

    [134890] = itemPackDibella, -- Dibella, Lady of Love,
    [134848] = getCrownPrice(1500) .. " or " .. itemPackDibella .. " or " .. itemPackOasis, -- Blue Butterfly Flock
    [134961] = itemPackDibella, -- Dibella's Mysteries and Revelations,
    [134899] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Flower Spray, Crimson Daisies,
    [134901] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Flower Spray, Starlight Daisies,
    [134896] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Flower, Lover's Lily
    [134898] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Flowers, Midnight Sage,
    [134900] = getCrownPrice(20) .. " or " .. itemPackDibella, -- Flowers, Red Poppy,
    [134902] = getCrownPrice(20) .. " or " .. itemPackDibella, -- Flowers, Violet Bellflower,
    [134903] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Flowers, Midnight Glory,
    [94163] = getCrownPrice(290) .. " or " .. itemPackDibella, --Imperial Bench, Scrollwork
    [134849] = getCrownPrice(1500) .. " or " .. itemPackDibella .. " or " .. itemPackOasis, -- Monarch Butterfly Flock
    [134891] = getCrownPrice(2500) .. " or " .. itemPackDibella, -- Pergola, Festive Flowers
    [134895] = getCrownPrice(1800) .. " or " .. itemPackDibella, -- Redguard Fountain, Mosaic
    [134904] = getCrownPrice(260) .. " or " .. itemPackDibella, -- Seal of Dibella
    [134905] = getCrownPrice(260) .. " or " .. itemPackDibella, -- Ritual Stone, Dibella
    [134906] = getCrownPrice(240) .. " or " .. itemPackDibella, -- Ritual Brazier, Gilded
    [134892] = getCrownPrice(85) .. " or " .. itemPackDibella, -- Tree, Pale Gold
    [134893] = getCrownPrice(85) .. " or " .. itemPackDibella, -- Tree, Argent Blue
    [134894] = getCrownPrice(20) .. " or " .. itemPackDibella, -- Wildflowers, Yellow and Orange
    [134897] = getCrownPrice(45) .. " or " .. itemPackDibella, -- Vine Curtain, Festive Flowers

    [181547] = getCrownPrice(1000) .. " or " .. itemPackMermaid, -- Leyawiin Fountain, Corner,
    [181486] = getCrownPrice(2700) .. " or " .. itemPackMermaid, -- Leyawiin Fountain, Round,
    [181599] = getCrownPrice(1100) .. " or " .. itemPackMermaid, -- Leyawiin Fountain, Tall,
    [181485] = itemPackMermaid, -- Statue, Mermaid of Anvil,
    [181435] = getCrownPrice(1500) .. " or " .. itemPackMermaid, -- Steam of Repose,

    [175695] = getCrownPrice(510) .. " or " .. itemPackZeni, -- Leyawiin Shrine of the Eight,
    [175696] = getCrownPrice(410) .. " or " .. itemPackZeni, -- Leyawiin Tapestry, Divines Horizontal,
    [175697] = getCrownPrice(410) .. " or " .. itemPackZeni, -- Leyawiin Tapestry, Divines Vertical,
    [175698] = itemPackZeni, -- Zenithar, God of Work and Commerce,
    [175699] = itemPackZeni .. " or " .. itemPackWindows, -- Stained Glass of Zenithar,

    [181483] = itemPackWindows, -- Stained Glass of Akatosh,
    [181484] = itemPackWindows, -- Stained Glass of Julianos,
    [181482] = itemPackWindows, -- Stained Glass of Arkay,
    [181481] = itemPackWindows, -- Stained Glass of Dibella,
    [181480] = itemPackWindows, -- Stained Glass of Stendarr,
    [181479] = itemPackWindows, -- Stained Glass of Mara,
    [181478] = itemPackWindows, -- Stained Glass of Kynareth,

    [182292] = getCrownPrice(260) .. " or " .. itemPackAmbitions, -- Deadlands Base, Tower,
    [182291] = getCrownPrice(1500) .. " or " .. itemPackAmbitions, -- Deadlands Window, Fireglass,
    [182290] = getCrownPrice(140) .. " or " .. itemPackAmbitions, -- Deadlands Grate, Large,
    [182289] = getCrownPrice(140) .. " or " .. itemPackAmbitions, -- Deadlands Wall, Etched,
    [182295] = getCrownPrice(510) .. " or " .. itemPackAmbitions, -- Deadlands Firepit, Large,
    [182294] = getCrownPrice(770) .. " or " .. itemPackAmbitions, -- Deadlands Platform, Tower,
    [182293] = getCrownPrice(260) .. " or " .. itemPackAmbitions, -- Deadlands Stairway, Tower,
    [182912] = getCrownPrice(270) .. " or " .. itemPackAmbitions, -- Deadlands Pillar, Tall,

    [147585] = getCrownPrice(40) .. " or " .. itemPackForge, -- Dwarven Gear, Large Spokes,
    [147586] = getCrownPrice(50) .. " or " .. itemPackForge, -- Dwarven Hub, Sentry Wheel,
    [147587] = getCrownPrice(40) .. " or " .. itemPackForge, -- Dwarven Gear, Large Open,
    [147588] = getCrownPrice(220) .. " or " .. itemPackForge, -- Dwarven Conduit, Rounded,
    [147589] = getCrownPrice(150) .. " or " .. itemPackForge, -- Dwarven Brazier, Open,
    [147590] = itemPackForge, -- Dwarven Bust, Forge-Lord,
    [147664] = getCrownPrice(270) .. " or " .. itemPackForge, -- Dwarven Dais, Conduit,
    [147574] = itemPackForge, -- Dwarven Frieze, Wrathstone,
    [147575] = itemPackForge, -- Dwarven Frieze, Power in Twain,
    [147576] = itemPackForge, -- Dwarven Frieze, Colossal Power,
    [147577] = getCrownPrice(920) .. " or " .. itemPackForge, -- Dwarven Platform, Fan,
    [147578] = getCrownPrice(1400) .. " or " .. itemPackForge, -- Dwarven Throne, Conduit,
    [147579] = getCrownPrice(240) .. " or " .. itemPackForge, -- Dwarven Gearwork, Perpetual,
    [147580] = getCrownPrice(310) .. " or " .. itemPackForge, -- Dwarven Lamps, Heavy,
    [147581] = getCrownPrice(350) .. " or " .. itemPackForge, -- Dwarven Table, Heavy Workbench,
    [147582] = getCrownPrice(50) .. " or " .. itemPackForge, -- Dwarven Part, Sentry Head,
    [147583] = getCrownPrice(220) .. " or " .. itemPackForge, -- Dwarven Valve, Sealed,
    [147584] = getCrownPrice(160) .. " or " .. itemPackForge, -- Dwarven Rack, Spider Legs,

    [130226] = getCrownPrice(85) .. " or " .. itemPackCoven, -- Carcass, Hanging Deer
    [131424] = itemPackCoven, -- Fogs of the Hag Fen,
    [130220] = getCrownPrice(3300) .. " or " .. itemPackCoven, -- Hagraven Altar,
    [130222] = getCrownPrice(260) .. " or " .. itemPackCoven, -- Hagraven Totem, Skull
    [131423] = getCrownPrice(750) .. " or " .. itemPackCoven, -- Mists of the Hag Fen
    [130221] = getCrownPrice(430) .. " or " .. itemPackCoven, -- Reachmen Cage, Sturdy
    [130216] = getCrownPrice(510) .. " or " .. itemPackCoven, -- Witches' Basin, Scrying
    [130219] = getCrownPrice(240) .. " or " .. itemPackCoven, -- Witches' Brazier, Beast Skull
    [130223] = getCrownPrice(340) .. " or " .. itemPackCoven, -- Reachmen Rug, Mottled Skin
    [130224] = getCrownPrice(180) .. " or " .. itemPackCoven, -- Reachmen Rug, Smooth Skin
    [130225] = getCrownPrice(340) .. " or " .. itemPackCoven, -- Skulls, Heap
    [130227] = getCrownPrice(850) .. " or " .. itemPackCoven, -- Witches' Tent, Lean-To
    [130229] = getCrownPrice(290) .. " or " .. itemPackCoven, -- Tree, Wretched Cypress
    [130230] = getCrownPrice(90) .. " or " .. itemPackCoven, -- Stump, Wretched Cypress
    [130247] = getCrownPrice(290) .. " or " .. itemPackCoven, -- Tree, Fetid Cypress
    [130228] = itemPackCoven, -- The Witches of Hag Fen,
    [130215] = itemPackCoven, -- Witches' Cauldron, Provisioning,
    [130334] = getCrownPrice(260) .. " or " .. itemPackCoven, -- Witches Totem, Antler Charms,

    [134870] = itemPackTyrants, -- Ancient Nord Chest, Dragon Crest,
    [134871] = itemPackTyrants, -- Ancient Nord Urn, Dragon Crest,
    [134873] = itemPackTyrants, -- Ancient Nord Bookshelf, Wide,
    [134874] = itemPackTyrants, -- Ancient Nord Bookshelf, Narrow,
    [134875] = itemPackTyrants, -- Ancient Nord Funerary Jar, Linked Rings,
    [134876] = itemPackTyrants, -- Ancient Nord Funerary Jar, Crimson Sash,
    [134877] = itemPackTyrants, -- Ancient Nord Funerary Jar, Dragon Figure,
    [134878] = itemPackTyrants, -- Ancient Nord Funerary Jar, Dragon Crest,
    [134872] = itemPackTyrants, -- Ancient Nord Brazier, Dragon Crest
    [134863] = itemPackTyrants, -- Ancient Nord Sconce, Dragon Crest
    [134862] = itemPackTyrants, -- Ancient Nord Runestone, Memorial,
    [134856] = itemPackTyrants, -- Dragon Skeleton, Mid-Flight,
    [134857] = itemPackTyrants, -- Dragon Priest Frieze: Triumph,
    [134858] = itemPackTyrants, -- Dragon Priest Frieze: Exodus,
    [134859] = itemPackTyrants, -- Dragon Priest Frieze: Restoration,
    [134860] = itemPackTyrants, -- Dragon Priest Frieze: Ascension,
    [134861] = itemPackTyrants, -- The History of Zaan The Scalecaller,
    [134864] = itemPackTyrants, -- Dragon Cranium, Ancient,
    [134865] = itemPackTyrants, -- Unidentified Bones, Gargantuan,
    [134866] = itemPackTyrants, -- Lamia Cranium, Ancient,
    [134867] = itemPackTyrants, -- Argonian Skull, Complete,
    [134868] = itemPackTyrants, -- Khajiit Skull, Complete,
    [134869] = itemPackTyrants, -- Orc Skull, Complete,

    [151901] = getCrownPrice(20) .. " or " .. itemPackKhajiit, -- Elsweyr Bowl, Moon-Sugar,
    [153660] = getCrownPrice(560) .. " or " .. itemPackKhajiit, -- Elsweyr Cart, Moons-Blessed
    [153669] = getCrownPrice(300) .. " or " .. itemPackKhajiit, -- Elsweyr Well, Simple Arched
    [153658] = getCrownPrice(70) .. " or " .. itemPackKhajiit, -- Moon-Sugar, Row
    [153659] = getCrownPrice(30) .. " or " .. itemPackKhajiit, -- Moon-Sugar, Cluster
    [153667] = getCrownPrice(170) .. " or " .. itemPackKhajiit, -- Moon-Sugar, Harvested Large
    [153668] = getCrownPrice(90) .. " or " .. itemPackKhajiit, -- Moon-Sugar, Harvested Small
    [153632] = getCrownPrice(1500) .. " or " .. itemPackKhajiit, -- Sapphire Candlefly Gathering
    [153661] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Straw Pile
    [153662] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Tool, Plow
    [153663] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Tool, Sickle
    [153664] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Tool, Pitchfork
    [153665] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Tool, Hoe
    [153666] = getCrownPrice(40) .. " or " .. itemPackKhajiit, -- Tool, Two-Person Crosscut Saw

    [134270] = getCrownPrice(85) .. " or " .. itemPackMalacath, -- Cave Deposit, Large Double-Sided
    [134271] = getCrownPrice(85) .. " or " .. itemPackMalacath, -- Cave Deposit, Tall Stalagmite
    [134272] = getCrownPrice(10) .. " or " .. itemPackMalacath, -- Cave Deposit, Stalagmite Cluster,
    [134258] = itemPackMalacath, -- Prayer to the Furious One,
    [134259] = itemPackMalacath, -- Malacath, God of Oaths and Curses,
    [134260] = itemPackMalacath, -- Orcish Bas-Relief, Axe,
    [134261] = itemPackMalacath, -- Orcish Bas-Relief, Sword,
    [134262] = itemPackMalacath, -- Orcish Bas-Relief, Spear,
    [134268] = getCrownPrice(570) .. " or " .. itemPackMalacath, -- Orcish Brazier, Column
    [134269] = getCrownPrice(220) .. " or " .. itemPackMalacath, -- Orcish Dais, Raised
    [116518] = getCrownPrice(270) .. " or " .. itemPackMalacath, -- Orcish Drop Hammer, Repeating,
    [152147] = itemPackMalacath, -- Orcish Statue, Strength,
    [134267] = getCrownPrice(380) .. " or " .. itemPackMalacath, -- Orcish Table, Grand Furs
    [134263] = getCrownPrice(410) .. " or " .. itemPackMalacath, -- Orcish Throne, Ancient

    [126114] = itemPackAzura, -- Statue of Azura, Queen of Dawn and Dusk,
    [126115] = itemPackAzura, -- Statue of Azura's Moon,
    [126116] = itemPackAzura, -- Statue of Azura's Sun,
    [126117] = itemPackAzura, -- Tapestry of Azura,
    [126118] = itemPackAzura, -- Banner of Azura,
    [125489] = itemPackAzura, -- Daedric Brazier, Flaming,
    [126128] = itemPackAzura, -- The Five Points of the Star,

    [134251] = itemPackColdharbour, -- Coldharbour Bookshelf, Filled,
    [134252] = itemPackColdharbour, -- Coldharbour Bookshelf, Black Laboratory,
    [134253] = itemPackColdharbour, -- Coldharbour Bookshelf, Filled Wide,
    [134256] = itemPackColdharbour, -- Coldharbour Bookshelf, Filled Pillar,
    [134254] = itemPackColdharbour, -- Seal of Molag Bal,
    [134255] = itemPackColdharbour, -- Transliminal Rupture,
    [134257] = itemPackColdharbour, -- Daedra Dossier: Cold-Flame Atronach
    [134264] = getCrownPrice(190) .. " or " .. itemPackColdharbour, -- Daedric Brazier, Cold-Flame
    [134273] = getCrownPrice(200) .. " or " .. itemPackColdharbour, -- Daedric Plinth, Sacrificial
    [134274] = getCrownPrice(200) .. " or " .. itemPackColdharbour, -- Coldharbour Crate, Black Soul Gem
    [134275] = getCrownPrice(200) .. " or " .. itemPackColdharbour, -- Coldharbour Bin, Black Soul Gem

    [182285] = getCrownPrice(160) .. " or " .. itemPackFargrave, -- Book Wall, Levitating,
    [182286] = getCrownPrice(860) .. " or " .. itemPackFargrave, -- Fargrave Terrarium, Snakevine,
    [182288] = getCrownPrice(820) .. " or " .. itemPackFargrave, -- Fargrave Terrarium, Massive Gas Blossom,
    [182284] = getCrownPrice(20) .. " or " .. itemPackFargrave, -- Fargrave Bread Loaves, Round,
    [182283] = getCrownPrice(870) .. " or " .. itemPackFargrave, -- Fargrave Terrarium, Lantern Flower,
    [182282] = getCrownPrice(560) .. " or " .. itemPackFargrave, -- Fargrave Water Globules, Levitating,
    [182258] = getCrownPrice(540) .. " or " .. itemPackFargrave, -- Fargrave Terrarium, Claws,
    [182230] = getCrownPrice(140) .. " or " .. itemPackFargrave, -- Mushrooms, Glowing Shelf,
  },
}

-- 19 Blackwood
FurC.MiscItemSources[ver.BLACKW] = {}

-- 18 Flames of Ambition
FurC.MiscItemSources[ver.FLAMES] = {
  [src.CROWN] = {
    [171932] = getCrownPrice(160), -- Daedric Sconce, Torch,
    [171933] = getCrownPrice(80), -- Daedric Candles, Tall Stand,
    [171934] = getCrownPrice(360), -- Daedric Brazier, Plinth,
    [118482] = getCrownPrice(25), -- Book Stack, Tall
  },

  [src.DROP] = {
    [171428] = scrying .. " (gold lead, Harrowstorm Reliquary)", -- Vampiric Stained Glass
  },
}

-- 17 Markarth
FurC.MiscItemSources[ver.MARKAT] = {
  [src.DROP] = {
    [171428] = scrying .. " in the Reach (Harrowstorms)", -- Vampiric Stained Glass
  },

  [src.CROWN] = {
    [171397] = itemPackAlchemist, -- Stone Garden Tank, Vacant,
    [171398] = itemPackAlchemist, -- Stone Garden Vat, Alchemized Bristleback,
    [171399] = itemPackAlchemist, -- Stone Garden Vat, Alchemized Chaurus,
    [171400] = itemPackAlchemist, -- Stone Garden Vat, Alchemized Durzog,
    [171401] = itemPackAlchemist, -- Stone Garden Vat, Vacant,
    [171402] = itemPackAlchemist, -- Stone Garden Circulator, Rootbound,
    [171403] = itemPackAlchemist, -- Stone Garden Casket, Alchemized Bloodknight,
    [169117] = itemPackAlchemist, -- Target Bloodknight,

    [167299] = getCrownPrice(920), -- Dwarven Chandelier, Polished Braced,
    [167301] = getCrownPrice(560), -- Dwarven Lamppost, Polished Powered,
    [167300] = getCrownPrice(160), -- Dwarven Lantern, Polished Wall,
    [167298] = getCrownPrice(310), -- Dwarven Sconce, Polished Barred,
  },
}

-- 16 Stonethorn
FurC.MiscItemSources[ver.STONET] = {
  [src.CROWN] = {
    [119587] = getCrownPrice(10), -- Auridon Coneplants, Cluster
    [118347] = getCrownPrice(20), -- Bread, Various Loaves
    [118344] = getCrownPrice(20), -- Breads, Assortment
    [118287] = getCrownPrice(85), -- Carcass, Brown Hare
    [118282] = getCrownPrice(85), -- Carcass, Fresh Goose
    [118162] = getCrownPrice(340), -- Carpet of the Desert Flame, Faded
    [118167] = getCrownPrice(340), -- Carpet of the Desert Flame, Faded
    [118166] = getCrownPrice(340), -- Carpet of the Desert, Faded
    [118161] = getCrownPrice(340), -- Carpet of the Mirage, Faded
    [118159] = getCrownPrice(340), -- Carpet of the Oasis, Faded
    [118158] = getCrownPrice(340), -- Carpet of the Sun, Faded Summer
    [118043] = getCrownPrice(25), -- Common Torch, Holder
    [118261] = getCrownPrice(25), -- Cushion, Faded Yellow
    [118260] = getCrownPrice(25), -- Cushion, Faded Blue
    [118259] = getCrownPrice(25), -- Cushion, Faded Red
    [94091] = getCrownPrice(95), -- Imperial Carpet, Akatosh
    [94092] = getCrownPrice(95), -- Imperial Carpet, Kyne
    [94093] = getCrownPrice(95), -- Imperial Carpet, Stendarr
    [94094] = getCrownPrice(140), -- Imperial Banner, Akatosh
    [94095] = getCrownPrice(140), -- Imperial Banner, Kyne
    [94096] = getCrownPrice(140), -- Imperial Banner, Stendarr
    [94097] = getCrownPrice(95), -- Imperial Bed, Bunk
    [94099] = getCrownPrice(60), -- Imperial Dresser, Short
    [94101] = getCrownPrice(45), -- Imperial Chair, Slatted
    [94102] = getCrownPrice(120), -- Imperial Rack, Cask
    [94103] = getCrownPrice(60), -- Imperial Dresser, Open
    [94104] = getCrownPrice(40), -- Imperial Stool, Sturdy
    [94105] = getCrownPrice(95), -- Imperial Table, Family
    [94106] = getCrownPrice(95), -- Imperial Desk, Sturdy
    [94107] = getCrownPrice(50), -- Imperial Table, Common
    [94108] = getCrownPrice(50), -- Imperial Shelf, Wall
    [94109] = getCrownPrice(50), -- Imperial Lantern, Wall
    [94110] = getCrownPrice(110), -- Imperial Lightpost, Stone
    [94111] = getCrownPrice(95), -- Imperial Well, Grated
    [94112] = getCrownPrice(70), -- Imperial Pedestal, Stone
    [94113] = getCrownPrice(70), -- Imperial Basin, Stone
    [94114] = getCrownPrice(430), -- Imperial Statue, Monolith
    [94115] = getCrownPrice(430), -- Imperial Statue, Obelisk
    [94117] = getCrownPrice(220), -- Imperial Rug, Akatosh
    [94118] = getCrownPrice(220), -- Imperial Rug, Kynareth
    [94119] = getCrownPrice(220), -- Imperial Rug, Stars
    [94120] = getCrownPrice(220), -- Imperial Rug, Stendarr
    [94129] = getCrownPrice(220), -- Imperial Tapestry, Akatosh
    [94130] = getCrownPrice(220), -- Imperial Tapestry, Kynareth
    [94131] = getCrownPrice(220), -- Imperial Tapestry, Stendarr
    [94132] = getCrownPrice(150), -- Imperial Brazier, Firepot
    [94133] = getCrownPrice(220), -- Imperial Bed, Four-Poster
    [94134] = getCrownPrice(220), -- Imperial Bed, Double
    [94135] = getCrownPrice(160), -- Imperial Pew, Windowed
    [94136] = getCrownPrice(160), -- Imperial Bench, Fitted
    [94137] = getCrownPrice(110), -- Imperial Bookcase, Scrollwork
    [94138] = getCrownPrice(100), -- Imperial Chair, Rocking
    [94139] = getCrownPrice(100), -- Imperial Chair, Windowed
    [94140] = getCrownPrice(85), -- Imperial Chest, Sturdy
    [94141] = getCrownPrice(120), -- Imperial Hutch, Scrollwork
    [94142] = getCrownPrice(120), -- Imperial Cupboard, Scrollwork
    [94143] = getCrownPrice(180), -- Imperial Chest of Drawers
    [94144] = getCrownPrice(220), -- Imperial Counter, Long Cabinet
    [94145] = getCrownPrice(110), -- Imperial Shelf, Barrel
    [94146] = getCrownPrice(220), -- Imperial Desk, Swirled
    [94147] = getCrownPrice(220), -- Imperial Table, Dining
    [94148] = getCrownPrice(220), -- Imperial Trestle, Sturdy
    [94149] = getCrownPrice(85), -- Imperial Table, Game
    [94150] = getCrownPrice(220), -- Imperial Table, Kitchen
    [94151] = getCrownPrice(240), -- Imperial Lightpost, Pair
    [94152] = getCrownPrice(240), -- Imperial Lightpost, Single
    [94153] = getCrownPrice(220), -- Imperial Well, Arched
    [94154] = getCrownPrice(160), -- Imperial Basin, Heavy
    [94155] = getCrownPrice(1000), -- Imperial Tent, Commander's
    [94156] = getCrownPrice(290), -- Imperial Brazier, Caged
    [94157] = getCrownPrice(410), -- Imperial Medallion, Crest
    [94158] = getCrownPrice(410), -- Imperial Tapestry, Stars
    [94159] = getCrownPrice(450), -- Imperial Streetlight, Imperial City
    [94161] = getCrownPrice(310), -- Imperial Pedestal, Chiseled
    [94162] = getCrownPrice(290), -- Imperial Pew, Scrollwork
    [94163] = getCrownPrice(290), -- Imperial Bench, Scrollwork
    [94164] = getCrownPrice(220), -- Imperial Sideboard, Scrollwork
    [94165] = getCrownPrice(200), -- Imperial Chair, Scrollwork
    [94166] = getCrownPrice(220), -- Imperial Armchair, Scrollwork
    [94167] = getCrownPrice(220), -- Imperial Cabinet, Scrollwork
    [94168] = getCrownPrice(220), -- Imperial Curio, Scrollwork
    [94169] = getCrownPrice(160), -- Imperial Coffer, Scrollwork
    [94170] = getCrownPrice(270), -- Imperial Dresser, Scrollwork
    [94171] = getCrownPrice(240), -- Imperial Counter, Corner
    [94172] = getCrownPrice(490), -- Imperial Bar, Cabinet
    [94173] = getCrownPrice(200), -- Imperial Mirror, Standing
    [94174] = getCrownPrice(120), -- Imperial Nightstand, Scrollwork
    [94175] = getCrownPrice(200), -- Imperial Divider, Folding
    [94176] = getCrownPrice(200), -- Imperial Divider, Curved
    [94177] = getCrownPrice(170), -- Imperial Stool, Padded
    [94178] = getCrownPrice(410), -- Imperial Desk, Scrollwork
    [94179] = getCrownPrice(410), -- Imperial Table, Formal
    [94180] = getCrownPrice(410), -- Imperial Trestle, Scrollwork
    [94182] = getCrownPrice(160), -- Imperial Footlocker, Scrollwork
    [94183] = getCrownPrice(350), -- Imperial Wardrobe, Scrollwork
    [94184] = getCrownPrice(240), -- Imperial Wine Rack, Scrollwork
    [94185] = getCrownPrice(450), -- Imperial Lightpost, Full
    [94187] = getCrownPrice(410), -- Imperial Well, Covered
    [94188] = getCrownPrice(410), -- Imperial Carpet, Gilded Dibella
    [94189] = getCrownPrice(410), -- Imperial Carpet, Verdant Dibella
    [94190] = getCrownPrice(410), -- Imperial Rug, Dibella
    [94191] = getCrownPrice(410), -- Imperial Tapestry, Dibella
    [94192] = getCrownPrice(610), -- Imperial Banner, Dibella
    [94193] = getCrownPrice(410), -- Imperial Pillar, Straight
    [94194] = getCrownPrice(410), -- Imperial Pillar, Chipped
    [94195] = getCrownPrice(410), -- Imperial Bed, Canopy
    [94196] = getCrownPrice(410), -- Imperial Cradle, Scrollwork
    [94197] = getCrownPrice(610), -- Imperial Shrine of the Bay
    [94198] = getCrownPrice(610), -- Imperial Altar of the Bay
    [94200] = getCrownPrice(1000), -- Imperial Fountain of the Bay
    [94201] = getCrownPrice(820), -- Imperial Statue, Knight
    [94202] = getCrownPrice(820), -- Imperial Statue, Emperor
    [94203] = getCrownPrice(820), -- Imperial Statue, Warrior
    [118160] = getCrownPrice(340), -- Mat of Meditation, Faded
    [118164] = getCrownPrice(340), -- Mat of the Sunset, Faded
    [118163] = getCrownPrice(340), -- Mat of the Oasis, Faded
    [118165] = getCrownPrice(340), -- Mat of the Sunrise, Faded
    [115421] = getCrownPrice(110), -- Nord Sconce, Torch
    [118244] = getCrownPrice(340), -- Orc Rug, Echatere Skin
    [118131] = getCrownPrice(180), -- Pelt, Bear
    [118107] = getCrownPrice(40), -- Pie, Display
  },

  [src.DROP] = {
    [171429] = scrying .. "in the Reach", -- Red Eagle Cave Painting
  },
}

-- 15 Greymoor
FurC.MiscItemSources[ver.SKYRIM] = {
  [src.JUSTICE] = {
    [165828] = GetString(SI_FURC_CANBESTOLEN) .. in_skyrim, -- Painting: Life in Repose Painting, Wood
  },

  [src.DROP] = {
    [165836] = chests_skyrim, -- Painting: A Warm Welcome Awaits Painting, Wood
    [165837] = chests_skyrim, -- Painting: Jarl of Morthal Painting, Wood
    [165838] = chests_skyrim, -- Painting: Painting of Nord Ship, Wood
    [165839] = chests_skyrim, -- Painting: Ursine Wandering Painting, Wood
    [165826] = chests_skyrim, -- Painting: Fields of Plenty Painting, Wood
    [165827] = chests_skyrim, -- Painting: Eternal Moment Painting, Wood
    [165840] = chests_skyrim, -- Painting: The Bridge of Dragon Painting, Wood
    [165842] = chests_skyrim, -- Painting: Dockside Painting, Silver
    [165845] = chests_skyrim, -- Painting: Painting of the Arch, Silver
    [165843] = chests_skyrim, -- Painting: River's Journey Painting, Silver
    [165841] = chests_skyrim, -- Painting: Silent Solitude Painting, Silver
    [165844] = chests_skyrim, -- Painting: The Light Within Painting, Silver
    [166440] = chests_blackr_grcaverns, -- Painting: Light as Art Painting, Wood
    [166441] = chests_blackr_grcaverns, -- Painting: Gargoyle Guardians Painting, Wood
    [166449] = chests_blackr_grcaverns, -- Painting: Scion's Throne Painting, Wood
    [166442] = chests_blackr_grcaverns, -- Painting: The Deception of Light Painting, Wood
    [166438] = chests_blackr_grcaverns, -- Painting: Red Mist Blooming Painting, Wood
    [166439] = chests_blackr_grcaverns, -- Painting: Depths of Darkness Painting, Brass
    [166443] = chests_blackr_grcaverns, -- Painting: Contrasts Painting, Brass
    [166444] = chests_blackr_grcaverns, -- Painting: Luminescence Painting, Brass
    [166445] = chests_blackr_grcaverns, -- Painting: The Keep Painting, Brass
    [166447] = chests_blackr_grcaverns, -- Painting: Boon Companion, Brass
    [166448] = chests_blackr_grcaverns, -- Painting: The Scion Strides Forth Painting, Brass
    [166446] = chests_blackr_grcaverns, -- Painting: Still Life in Death Painting, Wood
    [166437] = chests_blackr_grcaverns, -- Painting: Stillness Everlasting Painting, Wood

    [165866] = scrying .. " in Stonefalls", -- Ashen Infernace Gate
    [165859] = scrying .. " in Bal Foyen", -- The Dutiful Guar
    [165854] = scrying .. " in Murkmire", -- Nisswo's Soul Tender
    [165860] = scrying .. " in Grahtwood", -- Eight-Star Chandelier
    [166474] = scrying .. " in Craglorn", -- Altar of Celestial Convergence
    [161204] = scrying .. " in Wrothgar", -- Anvil of Old Orsinium
    [165875] = scrying .. " in Betnikh", -- Ayleid Lightwell
    [163705] = scrying .. " in Betnikh", -- Warcaller's Painted Drum
    [165848] = scrying .. in_skyrim, -- Font of Auri-El
    [165870] = scrying .. " in Coldharbour", -- Daedric Pillar of Torment
    [166434] = scrying .. " in Alikr", -- The Heartland
    [165876] = scrying .. " in Bleakrock Isle", -- Ruby Dragon Skull",
    [161216] = scrying .. " in Bal Foyen", -- Tri-Angled Truth Altar
    [163706] = scrying .. " in Stros M'Kai", -- Dwemer Star Chart
    [166013] = scrying .. " in Rift", -- Ebony Fox Totem
    [165849] = scrying .. " in Auridon", -- Echoes of Aldmeris
    [161206] = scrying .. " in Greenshade", -- Branch of Falinesti
    [165857] = scrying .. " in Bleakrock Isle", -- Brazier of Frozen Flame
    [165871] = scrying .. " in Eastmarch", -- Carved Whale Totem
    [165864] = scrying .. " in Deshaan", -- Blessed Dais of Mother Morrowind
    [165861] = scrying .. " in Gold Coast", -- Golden Idol of Morihaus
    [166473] = scrying .. " in Greenshade", -- Greensong Gathering Circle
    [166436] = scrying .. " in Wrothgar ", -- Tusks of the Orc-Father
    [165856] = scrying .. " in Eastmarch", -- Sacred Chalice of Ysgramor
    [165852] = scrying .. " in Vvardenfell", -- St. Nerevar, Moon-and-Star
    [161207] = scrying .. " in Malabal Tor", -- Hollowbone Wind Chimes
    [165874] = scrying .. " in Glenumbra", -- Jeweled Skull of Ayleid Kings
    [165867] = scrying .. " in Khenarthi's Roost", -- Cat's Eye Prism
    [161213] = scrying .. " in Reaper's March", -- Sorcerer-King's Blade
    [163704] = scrying .. " in Glenumbra", -- Kingmaker's Trove
    [166471] = scrying .. " in Bangkorai", -- Tall Papa's Lamp
    [161205] = scrying .. " in Coldharbour", -- Void-Crystal Anomaly
    [165865] = scrying .. " in Stormhaven", -- Beacon of Tower Zero
    [166015] = scrying .. " in Khenarthi's Roost", -- Sweet Khenarthi's Song
    [165869] = scrying .. " in Auridon", -- Maormeri Serpent Shrine
    [165873] = scrying .. " in Gold Coast", -- Meridian Sconce
    [165850] = scrying .. " in Clockw. City", -- Mnemonic Star-Sphere
    [165853] = scrying .. " in S. Elsweyr", -- Moons-Blessed Ceremonial Pool
    [165868] = scrying .. " in Reaper's March", -- Moonlight Mirror
    [165872] = scrying .. " in N. Elsweyr", -- Stained Glass of Lunar Phases
    [166472] = scrying .. " in Hew's Bane", -- Morwha's Blessing
    [165862] = scrying .. " in N. Elsweyr", -- Moth Priest's Cleansing Bowl
    [161210] = scrying .. " in Summerset", -- Prismatic Sunbird Feather
    [165878] = scrying .. " in Stros M'Kai", -- Dwarven Puzzle Box
    [165851] = scrying .. " in Vvardenfell", -- Sixth House Ritual Table
    [165855] = scrying .. " in Stormhaven", -- Noble Knight's Rest
    [161208] = scrying .. " in Rift", -- Rune-Carved Mammoth Skull
    [161209] = scrying .. " in Shadowfen", -- Nest of Shadows
    [161212] = scrying .. " in Malabal Tor", -- Silvenari Sap-Stone
    [166435] = scrying .. in_skyrim, -- Seat of the Snow Prince
    [166451] = scrying .. " in Rivenspire", -- Riven King's Throne
    [161211] = scrying .. " in Rivenspire", -- Remnant of the False Tower
    [165858] = scrying .. " in Alikr", -- Coil of Satakal
    [161215] = scrying .. " in Hew's Bane", -- Yokudan Skystone Scabbard
    [161214] = scrying .. " in Craglorn", -- Spellscar Shard
    [166014] = scrying .. elsewhere, -- Shrine of Boethra
    [163710] = scrying .. " in Alik'r Desert", -- Antique Map of Alik'r Desert
    [165996] = scrying .. " in Gold Coast", -- Antique Map of Gold Coast
    [163727] = scrying .. " in Northern Elsweyr", -- Antique Map of Northern Elsweyr
    [163728] = scrying .. elsewhere, -- Antique Map of Southern Elsweyr
    [163717] = scrying .. " in Auridon", -- Antique Map of Auridon
    [163711] = scrying .. " in Bangkorai", -- Antique Map of Bangkorai
    [163713] = scrying .. " in Deshaan", -- Antique Map of Deshaan
    [163707] = scrying .. " in Glenumbra", -- Antique Map of Glenumbra
    [163718] = scrying .. " in Grahtwood", -- Antique Map of Grahtwood
    [163719] = scrying .. " in Greenshade", -- Antique Map of Greenshade
    [165997] = scrying .. " in Hew's Bane", -- Antique Map of Hew's Bane
    [165993] = scrying .. " in Coldharbour", -- Antique Map of Coldharbour
    [165994] = scrying .. " in Craglorn", -- Antique Map of Craglorn
    [163709] = scrying .. " in Rivenspire", -- Antique Map of Rivenspire
    [163720] = scrying .. " in Malabal Tor", -- Antique Map of Malabal Tor
    [163715] = scrying .. " in Eastmarch", -- Antique Map of Eastmarch
    [163716] = scrying .. " in Rift", -- Antique Map of The Rift
    [163714] = scrying .. " in Shadowfen", -- Antique Map of Shadowfen
    [163721] = scrying .. " in Reaper's March", -- Antique Map of Reaper's March
    [163725] = scrying .. " in Summerset", -- Antique Map of Summerset
    [163708] = scrying .. " in Stormhaven", -- Antique Map of Stormhaven
    [163712] = scrying .. " in Stonefalls", -- Antique Map of Stonefalls
    [163724] = scrying .. " in Vvardenfell", -- Antique Map of Vvardenfell
    [163726] = scrying .. " in Murkmire", -- Antique Map of Murkmire
    [163723] = scrying .. " in Wrothgar", -- Antique Map of Wrothgar
  },

  [src.CROWN] = {
    [167230] = scambox_sovngarde .. " (100 gems)", -- Alkosh's Hourglass, Replica
    [167231] = scambox_sovngarde .. " (100 gems)", -- Celestial Nimbus
    [167332] = scambox_sovngarde .. " (40 gems)", -- The Mage's Staff Painting, Gold

    [153675] = getCrownPrice(200), -- Daedric Altar, Four Alcoves
    [153676] = getCrownPrice(270), -- Daedric Sarcophagus, Stone
    [159462] = getCrownPrice(170), -- Redguard Fence, Wooden
    [166452] = getCrownPrice(440), -- Vampiric Column, Ancient
    [166044] = getCrownPrice(90), -- Watering Trough, Full
    [159460] = getCrownPrice(310), -- Tree, Slim Wrothgar Pine
    [159461] = getCrownPrice(30), -- Shrubs, Desert Scrub
    [159496] = getCrownPrice(240), -- Tree, Ancient Bristlecone
    [159456] = getCrownPrice(410), -- Orsinium Well, Open
    [159457] = getCrownPrice(170), -- Tree, Dagger Bark
    [159458] = getCrownPrice(310), -- Tree, Broad Wrothgar Pine
    [159459] = getCrownPrice(310), -- Trees, Paired Wrothgar Pine
  },

  [src.FISHING] = {},
}

-- 14 Harrowstorm
FurC.MiscItemSources[ver.HARROW] = {}

-- 13 Dragonhold
FurC.MiscItemSources[ver.DRAGON2] = {}

-- 12 Scalebreaker
FurC.MiscItemSources[ver.SCALES] = {}

-- 11 Elsweyr
FurC.MiscItemSources[ver.KITTY] = {
  [src.JUSTICE] = {
    [151892] = stealable_elsewhere, -- Elsweyr Fragrance Bottle, Moons-Blessed
    [151889] = stealable_elsewhere, -- Elsweyr Comb, Grooming
    [151893] = stealable_elsewhere, -- Elsweyr Fragrance Bottle, Moonlit Tryst
    [151899] = stealable_elsewhere, -- Elsweyr Pillow, Night Blues Wide,
    [151898] = stealable_elsewhere, -- Elsweyr Pillow, Gold-Ruby Roll,
    [151900] = stealable_elsewhere, -- Elsweyr Pillow, Gold-Ruby Throw,
    [151895] = stealable_elsewhere, -- Elsweyr Cloth, Rolled,
    [151643] = stealable_elsewhere, -- Elsweyr Rolling Pin, Well-Worn,
    [151890] = stealable .. " from nobles", -- Elsweyr Hand Mirror, Bronze Oval,
    [151891] = stealable .. " from nobles", -- Elsweyr Hand Mirror, Rectangular,
    [151897] = stealable_elsewhere, -- Elsweyr Fabric, Display,
    [151886] = stealable_elsewhere, -- Elsweyr Fan, Handheld,
    [151887] = stealable_elsewhere, -- Elsweyr Brush, Body,
    [151888] = stealable_elsewhere, -- Elsweyr Brush, Head,
    [151894] = stealable_elsewhere, -- Elsweyr Mirror, Carved Wall
  },

  [src.DROP] = {
    [153563] = elsweyr_event, -- Target Bone Goliath, Reanimated
    [153814] = elsweyr_event, -- Dragon's Treasure Trove
    [145317] = "Witches' Festival, Plunder Skull", -- Gravestone, Broken
    [153751] = "In Cyrodiil for Volundrung Vanquisher or Volendrung Wielder", -- Volendrung Replica TODO set up properly
    [165834] = chests_elsweyr, -- A Simple Five-Claw Life Painting, Gold
  },

  [src.CROWN] = {
    [153630] = scambox_newmoon .. " (55 gems)",
    [159436] = scambox_gloomspore, -- Dwarven Miniature Sun, Portable
    [159437] = scambox_gloomspore, -- Painting of Blackreach, Rough

    [151838] = itemPackOasis, -- Elsweyr Fountain, Moons-Blessed,
    [151840] = getCrownPrice(70) .. " or " .. itemPackOasis, -- Plant, Desert Fan,
    [151841] = getCrownPrice(70) .. " or " .. itemPackOasis, -- Plant, Tall Desert Fan,
    [151842] = getCrownPrice(20) .. " or " .. itemPackOasis, -- Plant, Cask Palm,
    [151843] = getCrownPrice(45) .. " or " .. itemPackOasis, -- Cactus, Flowering Cluster,
    [151844] = getCrownPrice(30) .. " or " .. itemPackOasis, -- Cactus, Bilberry,
    [151845] = getCrownPrice(95) .. " or " .. itemPackOasis, -- Elsweyr Potted Cactus, Flowering,
    [151846] = getCrownPrice(35) .. " or " .. itemPackOasis .. " or " .. itemPackMermaid, -- Elsweyr Potted Plant, Cask Palm,
    [151835] = itemPackOasis, -- Cathay-Raht Statue, Warrior,
    [151836] = itemPackOasis, -- Tojay Statue, Dancer,
    [151837] = itemPackOasis, -- Ohmes-Raht Statue, Trickster,
    [151847] = getCrownPrice(20) .. " or " .. itemPackOasis, -- Plant, Flowering Desert Aloe,
    [151848] = getCrownPrice(15) .. " or " .. itemPackOasis, -- Trees, Sunset Palm Cluster,
    [151849] = getCrownPrice(45) .. " or " .. itemPackOasis, -- Cactus, Lily Flower,
    [151850] = getCrownPrice(20) .. " or " .. itemPackOasis, -- Tree, Anequina Bonsai,
    [151834] = getCrownPrice(90) .. " or " .. itemPackOasis, -- Tree, Desert Acacia Shade,

    [151906] = itemPackMoonBishop, -- Robust Target Dro-m'Athra,
    [151829] = itemPackMoonBishop, -- Suthay Statue, Nimble Bishop,
    [151824] = itemPackMoonBishop, -- Lunar Tapestry, The Open Path,
    [151825] = itemPackMoonBishop, -- Lunar Tapestry, The Gathering,
    [151826] = itemPackMoonBishop, -- Lunar Tapestry, The Dance,
    [151827] = itemPackMoonBishop, -- Lunar Tapestry, The Gate,
    [151828] = itemPackMoonBishop, -- Lunar Tapestry, The Demon,
    [151830] = getCrownPrice(190) .. " or " .. itemPackMoonBishop, -- Elsweyr Divider, Elegant Wooden,
    [151832] = getCrownPrice(100) .. " or " .. itemPackMoonBishop, -- Elsweyr Ceremonial Lantern, Jone,
    [151833] = getCrownPrice(100) .. " or " .. itemPackMoonBishop, -- Elsweyr Ceremonial Lantern, Jode,

    [165578] = itemPackVampire, -- Basin of Loss
    [165569] = itemPackVampire, -- Soul-Sworn Thrall

    [151808] = getCrownPrice(10), -- Tree, Fan Palm,
    [151813] = getCrownPrice(10), -- Sapling, Desert Acacia,
    [151816] = getCrownPrice(10), -- Plant, Flowering Thorned Succulent,
    [151820] = getCrownPrice(10), -- Desert Grass, Tall,
    [151821] = getCrownPrice(15), -- Desert Grass, Patch,
    [151831] = getCrownPrice(290), -- Elsweyr Sugar Pipe, Ceremonial,
    [151857] = getCrownPrice(150), -- Elsweyr Gazebo, Ancient Stone,
    [151867] = getCrownPrice(340), -- Hakoshae Lanterns, Festival,
    [151868] = getCrownPrice(180), -- Hakoshae Banners, Festival,
    [151869] = getCrownPrice(300), -- Elsweyr Wagon, Covered,
    [151870] = getCrownPrice(560), -- Elsweyr Wagon, Pedlar,
    [151871] = getCrownPrice(300), -- Elsweyr Dais, Temple,
    [151874] = getCrownPrice(300), -- Elsweyr Shrine, Ancient Stone,
    [151875] = getCrownPrice(560), -- Elsweyr Bridge, Ancient Stone,
    [151876] = getCrownPrice(590), -- Elsweyr Tent, Caravan,
    [151877] = getCrownPrice(590), -- Elsweyr Canopy, Bazaar,
    [151878] = getCrownPrice(450), -- Elsweyr Canopy, Peaked,
    [151883] = getCrownPrice(240), -- Tree, Towering Iroko,
    [151905] = getCrownPrice(10), -- Rock, Wide Flat Slate,
    [151911] = getCrownPrice(5), -- Rock, Flat Slate,
    [151912] = getCrownPrice(10), -- Stepping Stones, Slate,
    [151914] = getCrownPrice(25), -- Tree, Desert Acacia Tall,
    [151804] = getCrownPrice(30), -- Elsweyr Pillar, Rough Wooden,
    [151807] = getCrownPrice(5), -- Rock Field, Ancient Stone,
    [151884] = getCrownPrice(310), -- Tree, Giant Ficus,
    [151885] = getCrownPrice(310), -- Tree, Massive Ficus,
    [151872] = getCrownPrice(110), -- Boulder, Towering Lunar Spire,
    [151873] = getCrownPrice(50), -- Boulder, Lunar Crag,
    [151879] = getCrownPrice(560), -- Cactus, Lunar Tendrils,
    [151880] = getCrownPrice(640), -- Cactus, Lunar Branching,
    [151881] = getCrownPrice(640), -- Cactus, Lunar Branching Tall,
    [151882] = getCrownPrice(140), -- Cactus, Banded Lunar Violet Trio,
    [151904] = getCrownPrice(370), -- Glowgrass, Patch,
    [151913] = getCrownPrice(5), -- Rock, Slate,
  },

  [src.FISHING] = {},
}

-- 10 Wrathstone
FurC.MiscItemSources[ver.WOTL] = {}

-- 9 Wolfhunter
FurC.MiscItemSources[ver.WEREWOLF] = {
  [src.DROP] = {
    [141851] = GetString(SI_FURC_WW_DUNGEON_DROP), -- Bear Skull, Fresh
    [141850] = GetString(SI_FURC_WW_DUNGEON_DROP), -- Bear Skeleton, Picked Clean
    [141847] = GetString(SI_FURC_WW_DUNGEON_DROP), -- Animal Bones, Gnawed
    [141848] = GetString(SI_FURC_WW_DUNGEON_DROP), -- Animal Bones, Jumbled
    [141849] = GetString(SI_FURC_WW_DUNGEON_DROP), -- Animal Bones, Fresh

    [141921] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Bowl, Geometric Pattern

    [141923] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Amphora, Seed Pattern
    [141922] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Dish, Geometric Pattern
    [141924] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Vase, Scale Pattern
    [141925] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Hearth Shrine, Sithis Relief
    [141926] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Hearth Shrine, Sithis Figure
    [141920] = GetString(SI_FURC_SLAVES_DAILY), -- Murkmire Brazier, Ceremonial

    [147639] = GetString(SI_FURC_DOM_DUNGEON_DROP), -- Magna-Geode
    [147640] = GetString(SI_FURC_DOM_DUNGEON_DROP), -- Magna-Geode, Large
    [147641] = GetString(SI_FURC_DOM_DUNGEON_DROP), -- Garlas Alpinia, Tall
  },

  [src.CROWN] = {
    [141836] = getCrownPrice(170), -- Monolith, Lord Hircine Ritual
    [141843] = getCrownPrice(30), -- Plants, Yellow Frond Cluster
    [125681] = getCrownPrice(50), -- Vines, Volcanic Roses
    [134921] = getCrownPrice(520), -- Redguard Lamppost, Stone
    [134922] = getCrownPrice(250), -- Redguard Pillar, Tiered
    [134923] = getCrownPrice(2000), -- Redguard Trellis, Peaked
    [134924] = getCrownPrice(380), -- Redguard Fence, Brass Capped
    [134925] = getCrownPrice(2200), -- Redguard Fountain, Pillar
    [134926] = getCrownPrice(1200), -- Redguard Awning, Wall
    [134927] = getCrownPrice(1200), -- Wedding Pergola, Double
    [134928] = getCrownPrice(1200), -- Wedding Pergola, Triple
    [134929] = getCrownPrice(45), -- Trees, Savanna Cluster
    [134930] = getCrownPrice(30), -- Bushes, Swordgrass Cluster
    [134931] = getCrownPrice(50), -- Boulder, Weathered Desert
    [134932] = getCrownPrice(50), -- Boulder, Tiered Desert
    [134933] = getCrownPrice(90), -- Cranium, Jawless
    [134934] = getCrownPrice(10), -- Rocks, Basalt Chunks
    [134936] = getCrownPrice(110), -- Cave Deposit, Tall Stalagmite Cluster
    [134938] = getCrownPrice(110), -- Cave Deposit, Stalagmite Group
    [134945] = getCrownPrice(200), -- Cave Deposit, Extended Spire
    [134973] = getCrownPrice(200), -- Cave Deposit, Stalactite Cone Cluster
    [134939] = getCrownPrice(110), -- Cave Deposit, Stalactite Cone
    [134941] = getCrownPrice(110), -- Cave Deposit, Spire
    [120603] = getCrownPrice(20), -- Boulder, Flat Mossy
    [120604] = getCrownPrice(20), -- Rock, Slanted Mossy
    [120605] = getCrownPrice(20), -- Rocks, Deep Mossy
    [120606] = getCrownPrice(20), -- Stones, Mossy Cluster
    [134943] = getCrownPrice(1000), -- Brotherhood Banner, Long
    [134944] = getCrownPrice(340), -- Brotherhood Column, Tall Ornate
    [134946] = getCrownPrice(340), -- Brotherhood Column, Ornate
    [120612] = getCrownPrice(10), -- Plant, Tall Mammoth Ear
    [120613] = getCrownPrice(10), -- Plant, Towering Mammoth Ear
    [120614] = getCrownPrice(10), -- Plant Cluster, Jungle Leaf
    [134951] = getCrownPrice(30), -- Mushrooms, Assorted Cluster
    [134952] = getCrownPrice(30), -- Mushrooms, Sporous Browncap
    [134953] = getCrownPrice(340), -- Brotherhood Carpet, Large Worn
    [126774] = getCrownPrice(510), -- Dres Tapestry, House
    [126775] = getCrownPrice(510), -- Hlaalu Tapestry, House
    [126777] = getCrownPrice(510), -- Redoran Tapestry, House
    [126778] = getCrownPrice(510), -- Telvanni Tapestry, House
    [134974] = getCrownPrice(340), -- Brotherhood Carpet, Worn
    [126830] = getCrownPrice(10), -- Mushrooms, Volcanic Cluster
    [120631] = getCrownPrice(5), -- Pebble, Stacked Mossy
    [134330] = getCrownPrice(490), -- Clockwork Control Panel, Double
    [134337] = getCrownPrice(1800), -- Clockwork Somnolostation, Octet
    [121036] = getCrownPrice(30), -- Shrub, Sparse Violet
    [121035] = getCrownPrice(30), -- Plant, Paired Verdant Hosta
    [121034] = getCrownPrice(10), -- Shrub, Delicate Forest
    [121032] = getCrownPrice(25), -- Saplings, Young Laurel
    [121031] = getCrownPrice(45), -- Topiary, Paired Cypress
    [121030] = getCrownPrice(54), -- Topiary, Young Cypress
    [121029] = getCrownPrice(45), -- Topiary, Strong Cypress
    [120709] = getCrownPrice(70), -- Tree, Sturdy Young Birch
    [121026] = getCrownPrice(45), -- Hedge, Dense High Wall
    [121025] = getCrownPrice(70), -- Trees, Sprawling Juniper Cluster
    [121024] = getCrownPrice(70), -- Trees, Paired Leaning Juniper
    [121021] = getCrownPrice(10), -- Plants, Dry Underbrush
    [121020] = getCrownPrice(10), -- Plants, Sparse Underbrush
    [121018] = getCrownPrice(10), -- Plant, Forest Sprig
    [121014] = getCrownPrice(20), -- Topiary, Sparse
    [121012] = getCrownPrice(70), -- Trees, Fragile Autumn Birch
    [121009] = getCrownPrice(70), -- Tree, Young Healthy Birch
    [120726] = getCrownPrice(20), -- Rock, Jagged Algae Coated
    [120727] = getCrownPrice(5), -- Stone, Angled Mossy
    [120728] = getCrownPrice(20), -- Rock, Jagged Lichen
    [121006] = getCrownPrice(45), -- Flower Patch, Violets
    [120730] = getCrownPrice(45), -- Topiary, Lush Evergreen
    [120731] = getCrownPrice(25), -- Tree, Mossy Summer
    [120732] = getCrownPrice(70), -- Tree, Mossy Forest
    [120733] = getCrownPrice(70), -- Tree, Gnarled Forest
    [120734] = getCrownPrice(25), -- Saplings, Squat Desert
    [120735] = getCrownPrice(52), -- Saplings, Young Desert
    [120736] = getCrownPrice(290), -- Tree, Gentle Weeping Willow
    [120737] = getCrownPrice(150), -- Tree, Weeping Willow
    [120738] = getCrownPrice(70), -- Tree, Towering Willow
    [120743] = getCrownPrice(70), -- Tree, Strong Cypress
    [120996] = getCrownPrice(120), -- Banner, Tattered Red
    [120745] = getCrownPrice(60), -- Tree, Water Palm
    [120483] = getCrownPrice(30), -- Cactus, Lemon Bulbs
    [120748] = getCrownPrice(70), -- Tree, Leaning Swamp
    [120749] = getCrownPrice(10), -- Grass, Tall Bamboo Shoots
    [120750] = getCrownPrice(10), -- Grass, Drying Bamboo Shoots
    [120751] = getCrownPrice(10), -- Grass, Twin Bamboo Shoots
    [120752] = getCrownPrice(10), -- Grass, Young Bamboo Shoots
    [120471] = getCrownPrice(25), -- Tree, Wilted Palm
    [120756] = getCrownPrice(10), -- Plant, Palm Fronds
    [120463] = getCrownPrice(20), -- Boulder, Weathered Flat
    [120456] = getCrownPrice(5), -- Stone, Smooth Desert
    [134579] = getCrownPrice(5), -- Rubble Pile, Worked Stone
    [120760] = getCrownPrice(50), -- Flower, Red Honeysuckle
    [125544] = getCrownPrice(30), -- Fern, Strong Dusky
    [125547] = getCrownPrice(85), -- Flower, Healthy Purple Bat Bloom
    [125546] = getCrownPrice(85), -- Flower Patch, Lava Blooms
    [120765] = getCrownPrice(15), -- Breton Cup, Empty
    [120766] = getCrownPrice(15), -- Breton Cup, Full
    [134950] = getCrownPrice(31), -- Mushrooms, Flapjack Stack
    [139238] = getCrownPrice(190), -- Alinor Wall Mirror, Ornate
    [139239] = getCrownPrice(190), -- Alinor Wall Mirror, Verdant
    [139389] = getCrownPrice(200), -- Crystal, Crimson Cluster
    [139184] = getCrownPrice(200), -- Alinor Plinth, Sarcophagus

    [130093] = itemPackMolag, -- Coldharbour Compact
    [130071] = getCrownPrice(300) .. " or " .. itemPackMolag, -- Daedric Torch, Coldharbour
    [130075] = getCrownPrice(380) .. " or " .. itemPackMolag, -- Daedric Altar, Molag Bal
    [130078] = getCrownPrice(380) .. " or " .. itemPackMolag, -- Soul Gem, Single
    [130079] = getCrownPrice(380) .. " or " .. itemPackMolag, -- Soul Gems, Pile
    [130082] = getCrownPrice(640) .. " or " .. itemPackMolag, -- Soul-Shriven, Robed
    [130094] = getCrownPrice(140) .. " or " .. itemPackMolag, -- Daedric Chains, Hanging
    [130095] = getCrownPrice(640) .. " or " .. itemPackMolag, -- Daedric Torture Device, Chained
    [130069] = getCrownPrice(2000) .. " or " .. itemPackMolag, -- Daedric Spout, Block
    [130070] = getCrownPrice(2000) .. " or " .. itemPackMolag, -- Daedric Spout, Arched
    [130080] = itemPackMolag, -- Soul Gems, Scattered
    [130081] = itemPackMolag, -- Soul-Shriven, Armored
    [130083] = itemPackMolag, -- Daedric Block, Seat
    [130084] = itemPackMolag, -- Daedric Tapestry, Molag Bal
    [130085] = itemPackMolag, -- Daedric Banner, Molag Bal
    [130086] = itemPackMolag, -- Daedric Pennant, Molag Bal
    [130089] = getCrownPrice(360) .. " or " .. itemPackMolag, -- Daedric Brazier, Molag Bal
    [130087] = itemPackMolag, -- Daedric Shards, Coldharbour
    [130091] = itemPackMolag, -- Statue of Molag Bal, God of Schemes
    [130090] = getCrownPrice(310) .. " or " .. itemPackMolag, -- Daedric Sconce, Molag Bal
    [130088] = itemPackMolag, -- Daedric Fragment, Coldharbour
    [130092] = itemPackMolag, -- Seal of Molag Bal, Grand

    [126138] = itemPackDwemer, -- A Guide to Dwemer Mega-Structures
    [125516] = itemPackDwemer, -- Dwarven Gear Assembly, Grinding

    [126140] = itemPackVivec, -- Vivec's Grand Bed
    [126141] = itemPackVivec, -- Vivec's Grand Throne
    [126142] = itemPackVivec, -- Vivec's Divination Pool
    [126143] = itemPackVivec, -- Statue, Vivec's Triumph
    [126144] = itemPackVivec, -- Seal of Vivec
    [126145] = itemPackVivec, -- Sigil of Vivec
    [126146] = itemPackVivec, -- Banner, Vivec
    [126149] = itemPackVivec, -- Tapestry, Vivec
    [126150] = itemPackVivec, -- Tribunal Tablet of Sotha Sil
    [126152] = itemPackVivec, -- The Cliff-Strider Song
  },
}

-- 8 Murkmire
FurC.MiscItemSources[ver.SLAVES] = {
  [src.JUSTICE] = {
    [145399] = stealable_swamp, -- Murkmire Rug, Crawling Serpents Worn
    [145400] = stealable_swamp, -- Murkmire Rug, Lurking Lizard Worn
    [145398] = stealable_swamp, -- Murkmire Rug, Supine Turtle Worn
    [145397] = stealable_swamp, -- Murkmire Rug, Hist Gathering Worn
    [145396] = stealable_swamp, -- Murkmire Tapestry, Hist Gathering Worn
    [145550] = stealable_swamp .. " or random mobs in Murkmire", -- Murkmire Hunting Lure, Grisly
    [145401] = stealable_swamp, -- Murkmire Tapestry, Xanmeer Worn
    [145403] = stealable_swamp, -- Jel Parchment
  },

  [src.DROP] = {
    [141856] = sinister_hollowjack, -- Decorative Hollowjack Daedra-Skull
    [141855] = sinister_hollowjack, -- Decorative Hollowjack Wraith-Lantern
    [141854] = sinister_hollowjack, -- Decorative Hollowjack Flame-Skull
    [141870] = sinister_hollowjack, -- Raven-Perch Cemetery Wreath
    [141875] = sinister_hollowjack, -- Witches Festival Scarecrow
    [139157] = sinister_hollowjack, -- Webs, Thick Sheet
    [139162] = sinister_hollowjack, -- Webs, Cone
    [141939] = sinister_hollowjack, -- Grave, Grasping
    [141965] = sinister_hollowjack, -- Hollowjack Lantern, Soaring Dragon
    [141966] = sinister_hollowjack, -- Hollowjack Lantern, Toothy Grin
    [141967] = sinister_hollowjack, -- Hollowjack Lantern, Ouroboros
    [142004] = sinister_hollowjack, -- Specimen Jar, Spare Brain
    [142005] = sinister_hollowjack, -- Specimen Jar, Monstrous Remains
    [142003] = sinister_hollowjack, -- Specimen Jar, Eyes
    [120877] = sinister_hollowjack, -- Gravestone, Cracked
    [120876] = sinister_hollowjack, -- Gravestone, Imp Engraving
    [120875] = sinister_hollowjack, -- Gravestone, Clover Engraving
    [141778] = sinister_hollowjack, -- Target Wraith-of-Crows

    [145923] = "Part of the achievement item 'Look upon Their Nothing Eyes' in Lilmoth, Murkmire, 15k gold", -- Lies of the Dread-Father
    [145926] = "Part of the achievement item 'Look upon Their Nothing Eyes' in Lilmoth, Murkmire, 15k gold", -- That of Void
    [145927] = "Part of the achievement item 'Look upon Their Nothing Eyes' in Lilmoth, Murkmire, 15k gold", -- Acts of Honoring
    [145928] = "Part of the achievement item 'Look upon Their Nothing Eyes' in Lilmoth, Murkmire, 15k gold", -- Speakers of Nothing
    [145597] = "Part of the achievement item 'Look upon Their Nothing Eyes' in Lilmoth, Murkmire, 15k gold", -- Scales of Shadow
  },

  [src.CROWN] = {
    [146048] = itemPackNewLife2018, -- New Life Festive Fir
    [146049] = itemPackNewLife2018, -- Winter Festival Hearth
    [146050] = itemPackNewLife2018, -- Winter Festival Hearthfire
    [146052] = itemPackNewLife2018, -- Vvardvark Ice Sculpture
    [146053] = itemPackNewLife2018, -- Guar Ice Sculpture
    [146059] = itemPackNewLife2018, -- New Life Snowmortal, Khajiit
    [146057] = itemPackNewLife2018, -- New Life Snowmortal, Human
    [146058] = itemPackNewLife2018, -- New Life Snowmortal, Argonian
    [146060] = itemPackNewLife2018, -- New Life Ladle
    [146062] = itemPackNewLife2018, -- Winter Ouroboros Wreath
    [146061] = itemPackNewLife2018, -- New Life Triptych Banner
    [146055] = itemPackNewLife2018, -- New Life Garland Wreath
    [146056] = itemPackNewLife2018, -- New Life Cookies and Ale
    [146047] = itemPackNewLife2018, -- From Old Life To New
    [146051] = itemPackNewLife2018, -- Mudcrab Ice Sculpture
    [146054] = itemPackNewLife2018, -- New Life Garland

    [145427] = itemPackDeepmire, -- Serpent Skull, Colossal
    [145447] = getCrownPrice(260) .. " or " .. itemPackSwamp, -- Murkmire Dais, Engraved

    [145428] = getCrownPrice(65) .. " or " .. itemPackDeepmire, -- Murkmire Lantern Post, Covered
    [145437] = getCrownPrice(240) .. " or " .. itemPackDeepmire, -- Reed Felucca, Double Hulled
    [145431] = getCrownPrice(35) .. " or " .. itemPackDeepmire, -- Plant, Marsh Nigella
    [145432] = getCrownPrice(70) .. " or " .. itemPackDeepmire, -- Plant, Canna Lily
    [145434] = getCrownPrice(110) .. " or " .. itemPackDeepmire, -- Plant, Large Inert Lantern Flower
    [145439] = getCrownPrice(140) .. " or " .. itemPackDeepmire, -- Grave Stake, Large Fearsome
    [145438] = getCrownPrice(140) .. " or " .. itemPackDeepmire, -- Grave Stake, Large Glyphed
    [145440] = getCrownPrice(140) .. " or " .. itemPackDeepmire, -- Grave Stake, Large Skull
    [145441] = getCrownPrice(140) .. " or " .. itemPackDeepmire, -- Grave Stake, Large Serpent
    [145442] = getCrownPrice(140) .. " or " .. itemPackDeepmire, -- Grave Stake, Large Twinned
    [145436] = itemPackDeepmire, -- Canopied Felucca, Double Hulled
    [145443] = getCrownPrice(270) .. " or " .. itemPackDeepmire, -- Murkmire Shrine, Sithis Looming
    [145445] = itemPackDeepmire, -- The Sharper Tongue: A Jel Primer
    [145461] = getCrownPrice(30) .. " or " .. itemPackDeepmire, -- Plant Cluster, Cardinal Flower
    [145433] = getCrownPrice(60) .. " or " .. itemPackDeepmire, -- Plant, Rafflesia
    [145426] = getCrownPrice(410) .. " or " .. itemPackDeepmire, -- Murkmire Felucca, Canopied
    [145435] = getCrownPrice(110) .. " or " .. itemPackDeepmire, -- Plant, Marsh Mani Flower
    [146073] = getCrownPrice(70) .. " or " .. itemPackDeepmire, -- Plant Cluster, Marsh Nigella,
    [145430] = getCrownPrice(55) .. " or " .. itemPackDeepmire, -- Plant, Star Blossom

    [145429] = getCrownPrice(65), -- Plant Cluster, Bounteous Flower Large
    [145459] = getCrownPrice(90), -- Murkmire Kiln, Ancient Stone
    [145460] = getCrownPrice(30), -- Plant, Canna Leaves
    [145411] = getCrownPrice(410), -- Plant, Luminous Lantern Flower
    [145462] = getCrownPrice(40), -- Plant, Cardinal Flower
    [145463] = getCrownPrice(35), -- Plant Cluster, Red Sister Ti
    [145464] = getCrownPrice(30), -- Plant, Red Sister Ti
    [145465] = getCrownPrice(40), -- Plant Cluster, Wilted Hist Bulb
    [145466] = getCrownPrice(30), -- Plant, Wilted Hist Bulb
    [141869] = getCrownPrice(150), -- Alinor Potted Plant, Cypress
    [141976] = getCrownPrice(60), -- Pumpkin Patch, Display
    [141853] = getCrownPrice(2500), -- Statue of Hircine's Bitter Mercy
    [145448] = getCrownPrice(1000), -- Murkmire Throne, Engraved
    [145444] = getCrownPrice(130), -- Murkmire Totem, Hist Guardian

    [145322] = getCrownPrice(800), -- Music Box, Blood and Glory

    [134248] = itemPackSotha, -- Grand Mnemograph
    [134249] = itemPackSotha, -- Sotha Sil, The Clockwork God
    [134246] = itemPackSotha, -- The Law of Gears
    [134250] = getCrownPrice(750), -- Fabrication Sphere, Inactive
    [134326] = getCrownPrice(260), -- Clockwork Pump, Horizontal
  },

  [src.FISHING] = {
    -- fishing
    [145402] = fishing_swamp, -- Fish, Black Marsh
  },
}

-- 7 Summerset Isles
FurC.MiscItemSources[ver.ALTMER] = {
  [src.CROWN] = {
    [139065] = getCrownPrice(20), -- Flowers, Lizard Tail
    [139066] = getCrownPrice(30), -- Plant, Redtop Grass
    [139067] = getCrownPrice(20) .. " or from harvesting plants in Summerset", -- Flower, Yellow Oleander
    [139068] = getCrownPrice(20), -- Plants, Springwheeze

    [118142] = getCrownPrice(410), -- Painting of Swamp, Refined

    [118145] = getCrownPrice(410), -- Painting of a Desert, Refined
    [118144] = getCrownPrice(410), -- Painting of a Forest, Refined
    [118140] = getCrownPrice(410), -- Painting of a Waterfall, Refined
    [118138] = getCrownPrice(410), -- Painting of Mountains, Refined

    [126463] = getCrownPrice(610), -- Telvanni Painting, Oversized Forest
    [126464] = getCrownPrice(610), -- Telvanni Painting, Oversized Valley
    [126462] = getCrownPrice(610), -- Telvanni Painting, Oversized Volcanic

    [139083] = getCrownPrice(30), -- Plants, Grasswort Patch

    [139088] = getCrownPrice(50), -- Alinor Table Runner, Verdant
    [139089] = getCrownPrice(50), -- Alinor Table Runner, Coiled
    [139090] = getCrownPrice(100), -- Alinor Table Runner, Cloth of Silver

    [139097] = mephalaItemSet, -- Spiral Skein Glowstalks, Sprouts

    [139126] = getCrownPrice(50), -- Sapling, Ginkgo

    [139140] = getCrownPrice(340), -- Crystals, Crimson Spray
    [139141] = getCrownPrice(310), -- Crystals, Crimson Bed
    [139142] = getCrownPrice(380), -- Crystals, Crimson Spikes
    [139143] = getCrownPrice(310), -- Crystals, Midnight Cluster
    [139144] = getCrownPrice(400), -- Crystals, Midnight Spire
    [139145] = getCrownPrice(430), -- Crystals, Midnight Tower
    [139146] = getCrownPrice(490), -- Crystals, Midnight Bloom

    [139147] = getCrownPrice(30), -- Plants, Scarlet Sawleaf
    [139149] = getCrownPrice(30), -- Plant, Scarlet Fleshfrond
    [139148] = getCrownPrice(70), -- Mushroom, Nettlecap

    [139150] = getCrownPrice(70), -- Mushrooms, Midnight Cluster
    [139151] = getCrownPrice(140), -- Mushrooms, Shadowpalm Cluster

    [139152] = getCrownPrice(360), -- Cocoon, Enormous Empty
    [139153] = getCrownPrice(40), -- Cocoon, Dormant
    [139154] = getCrownPrice(40), -- Cocoons, Dormant Cluster
    [139155] = getCrownPrice(80), -- Cocoon, Food Storage
    [139156] = getCrownPrice(360), -- Cocoon, Skeleton

    [139158] = getCrownPrice(150), -- Daedric Candelabra, Tall
    [139159] = getCrownPrice(920), -- Daedric Chandelier, Gruesome
    [139160] = getCrownPrice(200), -- Daedric Armchair, Severe
    [139161] = getCrownPrice(1500), -- Daedric Table, Grand Necropolis

    [139163] = mephalaItemSet, -- Mephala, The Webspinner (statue)

    [139293] = getCrownPrice(30), -- Alinor Chalice, Silver Ornate

    [139237] = getCrownPrice(190), -- Alinor Wall Mirror, Noble

    [139329] = getCrownPrice(45), -- Coral Formation, Heart
    [139330] = getCrownPrice(45), -- Coral Formation, Waving Hands
    [139331] = getCrownPrice(45), -- Coral Formation, Tree Antler
    [139332] = getCrownPrice(45) .. " or " .. itemPackAquatic, -- Coral Formation, Tree Shelf
    [139333] = getCrownPrice(45), -- Coral Formation, Trees Capped
    [139334] = getCrownPrice(20), -- Coral Formation, Tree Capped (green)

    [139335] = getCrownPrice(310), -- Tree, Shade Ancient
    [139336] = getCrownPrice(90), -- Trees, Shade Interwoven
    [139337] = getCrownPrice(580), -- Tree, Ancient Blooming Ginkgo

    [139338] = getCrownPrice(25), -- Vines, Sun-Bronzed Ivy Swath
    [139339] = getCrownPrice(25), -- Vines, Sun-Bronzed Ivy Climber

    [139340] = getCrownPrice(310), -- Tree, Ancient Summerset Spruce
    [139341] = getCrownPrice(310), -- Tree, Towering Poplar
    [139342] = getCrownPrice(45), -- Tree, Vibrant Pink
    [139343] = getCrownPrice(45), -- Tree, Cloud White

    [139344] = getCrownPrice(45), -- Flowers, Hummingbird Mint Cluster
    [139345] = getCrownPrice(45), -- Flowers, Lizard Tail Cluster
    [139346] = getCrownPrice(45), -- Flowers, Lizard Tail Patch
    [139347] = getCrownPrice(45), -- Flowers, Yellow Oleander Cluster

    [139348] = getCrownPrice(940), -- Alinor Pergola, Purple Wisteria
    [139349] = getCrownPrice(940), -- Alinor Pergola, Blue Wisteria Peaked
    [139350] = getCrownPrice(940), -- Alinor Pergola, Purple Wisteria Overhang

    [139351] = getCrownPrice(200), -- Alinor Monument, Marble
    [139352] = getCrownPrice(1000), -- Alinor Tomb, Ornate

    [139353] = getCrownPrice(340), -- Mind Trap Coral Spire, Branched
    [139354] = getCrownPrice(340), -- Mind Trap Coral Spire, Bulbous
    [139355] = getCrownPrice(340), -- Mind Trap Coral Formation, Heart
    [139356] = getCrownPrice(340), -- Mind Trap Coral Formation, Waving Hands
    [139357] = getCrownPrice(340), -- Mind Trap Coral Formation, Tree Antler
    [139358] = getCrownPrice(340), -- Mind Trap Coral Formation, Tree Capped
    [139359] = getCrownPrice(340), -- Mind Trap Coral Formation, Trees Capped
    [139360] = getCrownPrice(510), -- Mind Trap Kelp, Cluster
    [139361] = getCrownPrice(270), -- Mind Trap Kelp, Young

    [139362] = getCrownPrice(340), -- Sload Astral Nodule, Small
    [139363] = getCrownPrice(340), -- Sload Astral Nodule, Large
    [139364] = getCrownPrice(1500), -- Sload Neural Tree, Active

    [139365] = getCrownPrice(370), -- Psijic Lighting Globe, Framed

    [139366] = getCrownPrice(2000), -- Alinor Fountain, Regal
    [139368] = getCrownPrice(100), -- Alinor Bathing Robes, Decorative

    [139376] = getCrownPrice(260), -- Alinor Banner, Hanging

    [139481] = getCrownPrice(200), -- Alinor Column, Jagged Timeworn
    [139482] = getCrownPrice(200), -- Alinor Column, Huge Timeworn
    [139483] = getCrownPrice(90), -- Alinor Column, Tumbled Timeworn

    [139480] = getCrownPrice(30), -- Plants, Redtop Grass Tuft
    [139650] = getCrownPrice(30), -- Bushes, Ivy Cluster

    [140220] = mephalaItemSet, -- Rumours of the Spiral Skein

    [139327] = getCrownPrice(45), -- Coral Spire, Sturdy
    [139328] = getCrownPrice(45), -- Coral Spire, Branched
    [132165] = getCrownPrice(750), -- Hlaalu Bath Tub, Empty Basin
    [126034] = getCrownPrice(4000), -- The Lord
    [125451] = getCrownPrice(4000), -- The Apprentice
    [125452] = getCrownPrice(4000), -- The Lady
    [125453] = getCrownPrice(4000), -- The Warrior
    [125454] = getCrownPrice(4000), -- The Tower
    [125455] = getCrownPrice(4000), -- The Thief
    [125456] = getCrownPrice(4000), -- The Steed
    [125457] = getCrownPrice(4000), -- The Shadow
    [125458] = getCrownPrice(4000), -- The Serpent
    [125459] = getCrownPrice(4000), -- The Ritual
    [125460] = getCrownPrice(4000), -- The Mage
    [125461] = getCrownPrice(4000), -- The Lover
    [119556] = getCrownPrice(4000), -- The Atronach
    [126037] = getCrownPrice(4000), -- Target Centurion, Lambent
    [126038] = getCrownPrice(4000), -- Target Centurion, Robust Lambent
    [134247] = getCrownPrice(190), -- Soul Gem Module, Experimental
    [118491] = getCrownPrice(55), -- Scroll, Bound
  },

  [src.DROP] = {
    [139059] = GetString(SI_FURC_DROP), -- Ivory, Polished - drops from Echatere, and probably alot else
    [139066] = GetString(SI_FURC_HARVEST), -- Plant, Redtop Grass

    [139060] = GetString(SI_FURC_GIANT_CLAM), -- Giant Clam, Ancient
    [139062] = GetString(SI_FURC_GIANT_CLAM), -- Pearl, Large
    [139063] = GetString(SI_FURC_GIANT_CLAM), -- Pearl, Enormous
    [139061] = GetString(SI_FURC_GIANT_CLAM), -- Giant Clam, Sealed

    [139073] = questRewardLilandril, -- Painting of Summerset Coast, Refined
    [139072] = GetString(SI_FURC_ELF_PIC), -- Painting of Monastery of Serene Harmony, Refined
    [139074] = GetString(SI_FURC_ELF_PIC), -- Painting of Aldmeri Ruins, Refined
    [139069] = GetString(SI_FURC_ELF_PIC), -- Painting of Griffin Nest, Refined
    [139070] = GetString(SI_FURC_ELF_PIC), -- Painting of College of the Sapiarchs, Refined
    [139071] = GetString(SI_FURC_ELF_PIC), -- Painting of High Elf Tower, Refined

    [87709] = GetString(SI_FURC_LEVELUP), -- Imperial Brazier, Spiked
    [94098] = GetString(SI_FURC_LEVELUP), -- Imperial Bed, Single

    [118143] = painting_summerset, -- Painting of Tree, Refined
    [118141] = painting_summerset, -- Painting of Cottage, Refined
    [118139] = painting_summerset, -- Painting of Valley, Refined

    [130192] = scambox_reaper, -- Statuette of Sheogorath, the Mad God
  },

  [src.FISHING] = {
    [139080] = fishing_summerset, -- Coral Formation, Ancient Pillar Polyps
    [139079] = fishing_summerset, -- Coral Formation, Fan Cluster
    [139081] = fishing_summerset, -- Plant, Sea Grapes
    [139084] = fishing_summerset, -- Plants, Pearlwort Cluster
    [139085] = fishing_summerset, -- Plants, Pearlwort Cluster
    [139068] = fishing_summerset, -- Plants, Springwheeze
    [139077] = fishing_summerset, -- Coral Formation, Bulwark
    [139078] = fishing_summerset, -- Coral Formation, Pillar Polyps
    [139082] = fishing_summerset, -- Plants, Ruby Glasswort Patch
  },
}

-- 6 Dragon Bones
FurC.MiscItemSources[ver.DRAGONS] = {
  [src.DROP] = {
    [134909] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushrooms, Puspocket Group
    [134910] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushrooms, Puspocket Cluster
    [134911] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushroom, Puspocket Sporecap
    [134912] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushroom, Large Puspocket
    [134913] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushroom, Tall Puspocket
    [134914] = GetString(SI_FURC_DRAGON_DUNGEON_DROP), -- Mushrooms, Large Puspocket Cluster
  },

  [src.JUSTICE] = {},

  [src.CROWN] = {
    [134970] = getCrownPrice(100), -- Mushrooms, Glowing Sprawl
    [134947] = getCrownPrice(100), -- Mushrooms, Glowing Field
    [134948] = getCrownPrice(400), -- Mushrooms, Glowing Cluster
    [134971] = getCrownPrice(400), -- Candles, Votive Group
    [134972] = getCrownPrice(400), -- Brotherhood Brazier, Wrought Iron
    [94100] = getCrownPrice(50), -- Imperial BookCase, Swirled
    [130211] = getCrownPrice(50), -- Books, Ordered Row
    [130210] = getCrownPrice(50), -- Books, Scattered Row
  },
}

-- 5 Clockwork City
FurC.MiscItemSources[ver.CLOCKWORK] = {
  [src.DROP] = {
    [134407] = automaton_loot_cc, -- Factotum Torso, Obsolete
    [134404] = automaton_loot_cc, -- Factotum Knee, Obsolete
    [134408] = automaton_loot_cc, -- Factotum Elbow, Obsolete
    [134405] = automaton_loot_cc, -- Factotum Arm, Obsolete
    [134409] = automaton_loot_cc, -- Factotum Head, Obsolete
    [134406] = automaton_loot_cc, -- Factotum Body, Obsolete

    [132348] = questRewardString .. "the Brass Citadel", -- The Precursor
  },

  [src.JUSTICE] = {
    [134410] = stealable_cc, -- Clockwork Crank, Miniature
    [134411] = stealable_cc, -- Clockwork Gear Shaft, Miniature
    [134412] = stealable_cc, -- Clockwork Piston, Miniature
    [134413] = stealable_cc, -- Clockwork Magnifier, Handheld
    [134414] = stealable_cc, -- Clockwork Micrometer, Handheld
    [134415] = stealable_cc, -- Clockwork Dial Calipers, Handheld
    [134416] = stealable_cc, -- Clockwork Slide Calipers, Handheld
    [134402] = stealable, -- Spool, Empty
    [134400] = stealable, -- Soft Leather, Stacked
    [134401] = stealable, -- Soft Leather, Folded
    [134417] = stealable_cc, -- Clockwork Firm-Joint Calipers, Handheld
    [134399] = stealable, -- Quality Fabric, Folded
    [117939] = stealable_woodworkers, -- Rough Axe, Practical
  },

  [src.CROWN] = {
    [134266] = getCrownPrice(80), -- Daedric Books, Stacked
    [134265] = getCrownPrice(80), -- Daedric Books, Piled
    [134373] = getCrownPrice(410), -- Clockwork Wall Machinery, Rectangular
    [134374] = getCrownPrice(410), -- Clockwork Wall Machinery, Circular
    [134382] = getCrownPrice(870), -- Fabricant Tree, Beryl Cypress
    [134383] = getCrownPrice(870), -- Fabricant Tree, Towering Maple
    [134385] = getCrownPrice(870), -- Fabricant Tree, Brass Swamp
    [134387] = getCrownPrice(870), -- Fabricant Tree, Tall Cobalt Spruce
    [134388] = getCrownPrice(870), -- Fabricant Tree, Cobalt Oak
    [134384] = getCrownPrice(870), -- Fabricant Tree, Decorative Electrum
    [134386] = getCrownPrice(260), -- Fabricant Tree, Forked Cherry Blossom
    [134389] = getCrownPrice(140), -- Fabricant Tree, Decorative Brass
    [134390] = getCrownPrice(140), -- Clockwork Junk Heap, Large
    [134391] = getCrownPrice(510), -- Clockwork Sequence Spool, Column
    [134392] = getCrownPrice(260), -- Clockwork Recharging Column, Octet
    [134393] = getCrownPrice(270), -- Clockwork Workbench, Spacious
    [134394] = getCrownPrice(460), -- Clockwork Illuminator, Capsule Chandelier
    [134395] = getCrownPrice(150), -- Clockwork Illuminator, Wall Capsule
    [134396] = getCrownPrice(410), -- Clockwork Wall Machinery, Tall
    [134397] = getCrownPrice(410), -- Clockwork Wall Machinery, Ovoid
    [134398] = getCrownPrice(1300), -- Clockwork Gazebo, Copper and Basalt
  },
}

-- 4 Horns of the Reach
FurC.MiscItemSources[ver.REACH] = {
  [src.JUSTICE] = {
    [130191] = stealable, -- Shivering Cheese
    [118206] = stealable_thief, -- Gaming dice
  },
  [src.DROP] = {
    -- Coldharbour items
    [130284] = GetString(SI_FURC_HARVEST), -- Glowstalk, Seedlings
    [131422] = GetString(SI_FURC_HARVEST), -- Flower Patch, Glowstalks
    [130283] = GetString(SI_FURC_HARVEST), -- Glowstalk, Sprout
    [130285] = GetString(SI_FURC_HARVEST), -- Glowstalk, Young
    [131420] = GetString(SI_FURC_HARVEST), -- Shrub, Glowing Thistle
    [130281] = GetString(SI_FURC_HARVEST), -- Glowstalk, Towering
    [130282] = GetString(SI_FURC_HARVEST), -- Glowstalk, Strong

    [130067] = GetString(SI_FURC_DAEDRA_SOURCE), -- Daedric Chain Segment
  },
}

-- 3 Morrowind
FurC.MiscItemSources[ver.MORROWIND] = {
  [src.DROP] = {

    --Public dungeon Forgotten Wastes / maybe rarest drop at all ingame
    [127149] = puplicdungeon_fw_vv, -- Morrowind Banner of the 6th House

    -- Dwemer parts
    [126660] = automaton_loot_vv, -- Dwemer Gear, Tiered
    [126659] = automaton_loot_vv, -- Dwemer Gear, Flat

    -- lootable in tombs
    [126754] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Seeker
    [126705] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Wisdom
    [126704] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Majesty
    [126706] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Knowledge
    [126701] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Nerevar
    [126764] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Prowess
    [126702] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Reverance
    [126700] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Honor
    [126703] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Mysteries
    [126752] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Discovery
    [126755] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Change
    [126756] = GetString(SI_FURC_TOMBS), -- Velothi Shroud, Mercy

    [126773] = GetString(SI_FURC_TOMBS), -- Velothi Caisson, Crypt
    [126753] = GetString(SI_FURC_TOMBS), -- Velothi Cerecloth, Austere
    [126758] = GetString(SI_FURC_TOMBS), -- Velothi Mat, Prayer
    [126757] = GetString(SI_FURC_TOMBS),

    [126465] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Modest Volcanic
    [126466] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Modest Forest
    [126467] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Modest Valley

    [126468] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Classic Volcanic
    [126469] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Classic Forest
    [126470] = GetString(SI_FURC_CHEST_VV), -- Telvanni Painting, Classic Valley

    [126593] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tryptich, Volcano
    [126594] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Classic Volcano
    [126595] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Modest Volcano
    [126596] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tapestry, Volcano
    [126605] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tryptich, Waterfall
    [126606] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tapestry, Waterfall
    [126608] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Classic Waterfall
    [126609] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Modest Waterfall
    [126599] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tryptich, Geyser
    [126600] = GetString(SI_FURC_VV_PAINTING), -- Velothi Tapestry, Geyser
    [126602] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Classic Geyser
    [126603] = GetString(SI_FURC_VV_PAINTING), -- Velothi Painting, Modest Geyser

    -- Ashlander dailies
    [126119] = GetString(SI_FURC_DAILY_ASH), -- Crimson Shard of Moonshadow
    [126393] = GetString(SI_FURC_DAILY_ASH), -- Ashlander Knife, Cheese

    -- drops from plants
    [125631] = plants_vvardenfell, -- Plants, Ash Frond
    [131420] = plants_vvardenfell, -- Plants, Ash Frond
    [125553] = plants_vvardenfell, -- Flowers, Netch Cabbage Stalks
    [125551] = plants_vvardenfell, -- Flowers, Netch Cabbage
    [125552] = plants_vvardenfell, -- Flowers, Netch Cabbage Patch
    [125543] = plants_vvardenfell, -- Fern, Ashen
    [125633] = plants_vvardenfell, -- Plants, Hanging Pitcher Pair
    [125680] = plants_vvardenfell, -- Vines, Ashen Moss

    [125562] = plants_vvardenfell, -- Grass, Foxtail Cluster
    [125595] = plants_vvardenfell, -- Mushroom, Poison Pax Shelf
    [125596] = plants_vvardenfell, -- Mushroom, Poison Pax Stool
    [125600] = plants_vvardenfell, -- Mushroom, Spongecap Patch
    [125606] = plants_vvardenfell, -- Mushroom, Young Milkcap
    [125608] = plants_vvardenfell, -- Mushrooms, Buttercake Cluster
    [125609] = plants_vvardenfell, -- Mushrooms, Buttercake Stack
    [125613] = plants_vvardenfell, -- Mushrooms, Lavaburst Sprouts
    [125590] = plants_vvardenfell, -- Mushrooms, Lavaburst Cluster
    [125617] = plants_vvardenfell, -- Plant, Bitter Stalk
    [125618] = plants_vvardenfell, -- Plant, Golden Lichen
    [125619] = plants_vvardenfell, -- Plant, Hanging Pitcher
    [125620] = plants_vvardenfell, -- Plant, Hefty Elkhorn
    [125621] = plants_vvardenfell, -- Plant, Lava Brier
    [125622] = plants_vvardenfell, -- Plant, Lava Leaf
    [125630] = plants_vvardenfell, -- Plant, Young Elkhorn
    [125632] = plants_vvardenfell, -- Plants, Hanging Pitcher Cluster
    [125634] = plants_vvardenfell, -- Plants, Lava Pitcher Cluster
    [125635] = plants_vvardenfell, -- Plants, Lava Pitcher Shoots
    [125636] = plants_vvardenfell, -- Plants, Swamp Pitcher Cluster
    [125637] = plants_vvardenfell, -- Plants, Swamp Pitcher Shoots
    [125647] = plants_vvardenfell, -- Shrub, Bitter Brush
    [125648] = plants_vvardenfell, -- Shrub, Bitter Cluster
    [125649] = plants_vvardenfell, -- Shrub, Flowering Dusk
    [125650] = plants_vvardenfell, -- Shrub, Golden Lichen
    [125670] = plants_vvardenfell, -- Toadstool, Bloodtooth
    [125671] = plants_vvardenfell, -- Toadstool, Bloodtooth Cap
    [125672] = plants_vvardenfell, -- Toadstool, Bloodtooth Cluster

    [126759] = questRewardSuran, -- Sir Sock's Ball of Yarn

    [126592] = GetString(SI_FURC_PLANTS), -- Plants, Hanging Pitcher Pair

    [126039] = scambox_dwemer, -- Statue of masked Clavicus Vile with Barbas
  },

  [src.CROWN] = {
    [130202] = getCrownPrice(170) .. " or " .. itemPackAyleid, -- Ayleid Grate, Tall
    [130204] = getCrownPrice(410) .. " or " .. itemPackAyleid, -- Welkynd Stones, Glowing
    [130205] = getCrownPrice(680) .. " or " .. itemPackAyleid, -- Ayleid Statue, Pious Priest
    [130207] = getCrownPrice(270) .. " or " .. itemPackAyleid, -- Ayleid Plinth, Engraved
    [130197] = getCrownPrice(170) .. " or " .. itemPackAyleid, -- Ayleid Bookcase, Filled
    [130199] = getCrownPrice(170) .. " or " .. itemPackAyleid, -- Ayleid Bookshelf, Bare
    [130201] = getCrownPrice(170) .. " or " .. itemPackAyleid, -- Ayleid Grate, Small
    [130213] = getCrownPrice(430) .. " or " .. itemPackAyleid, -- Ayleid Cage, Hanging
    [130206] = getCrownPrice(370) .. " or " .. itemPackAyleid, -- Ayleid Apparatus, Welkynd
    [130212] = itemPackAyleid, -- Daedra Worship: The Ayleids

    [125566] = getHouseString(1243), -- Hlaalu Shed, Enclosed
    [125568] = getHouseString(1243), -- Hlaalu Sidewalk, Sillar Stone
    [125577] = getHouseString(1243), -- Hlaalu Wall Post, Sillar Stone
    [125579] = getHouseString(1243), -- Hlaalu Well, Braced Sillar Stone
    [125573] = getHouseString(1243, 1244), -- Hlaalu Streetlamp, Paper
    [125565] = getHouseString(1244), -- Hlaalu Lantern, Hanging Paper
    [125567] = getHouseString(1244), -- Hlaalu Shed, Open
    [125580] = getHouseString(1244), -- Hlaalu Well, Covered Sillar Stone
    [118663] = getHouseString(1078, 1079), -- Dark Elf Bed of Coals
    [126475] = getCrownPrice(260), -- Telvanni Lantern, Organic Amber
    [126476] = getCrownPrice(200), -- Telvanni Lamp, Organic Amber
    [126477] = getCrownPrice(560), -- Telvanni Streetlight, Organic Amber
    [126478] = getCrownPrice(560), -- Telvanni Arched Light, Organic Amber
    [126479] = getCrownPrice(310), -- Telvanni Sconce, Organic Amber
    [121001] = getCrownPrice(45), -- Flowers, Golden Prairie
    [121002] = getCrownPrice(45), -- Flowers, Violet Prairie
    [121017] = getCrownPrice(10), -- Bush, Dense Forest
    [121019] = getCrownPrice(10), -- Plants, Dense Underbrush
    [121027] = getCrownPrice(45), -- Hedge, Dense Low Arc
    [121033] = getCrownPrice(25), -- Sapling, Sparse Laurel
    [121037] = getCrownPrice(30), -- Shrub, Sparse Pink
    [121038] = getCrownPrice(30), -- Plant, Paired White Hosta
    [121039] = getCrownPrice(30), -- Plant, Blooming White Hosta
    [121040] = getCrownPrice(30), -- Plant, Verdant Hosta
    [121041] = getCrownPrice(10), -- Plant, Young Verdant Hosta
    [121042] = getCrownPrice(10), -- Plant, Young Summer Hosta
    [121043] = getCrownPrice(30), -- Plant, Summer Hosta
    [121044] = getCrownPrice(30), -- Plant, Healthy White Hosta
    [121045] = getCrownPrice(25), -- Book Row, Decorative
    [121047] = getCrownPrice(25), -- Book Row, Long
    [121052] = getCrownPrice(100), -- Vase, Gilded Offering
    [121053] = getCrownPrice(170), -- Jar, Gilded Canopic
    [121054] = getCrownPrice(30), -- Breton Mug, Empty
    [121056] = getCrownPrice(25), -- Book Stack, Decorative
    [134379] = getCrownPrice(50), -- Boulder, Large Metallic Shard
    [134380] = getCrownPrice(110), -- Rocks, Sintered Arch
    [134381] = getCrownPrice(110), -- Rocks, Sintered Outcropping
    [130316] = getCrownPrice(25), -- Pumpkin, Frail
    [130317] = getCrownPrice(25), -- Pumpkin, Sickly
    [130318] = getCrownPrice(10), -- Crop, Wheat Pile
    [130319] = getCrownPrice(10), -- Crop, Wheat Stack
    [130322] = getCrownPrice(90), -- Tool, Harvest Scythe
    [130329] = getCrownPrice(240), -- Primal Brazier, Rock Slab
    [131425] = getCrownPrice(360), -- Orcish Tent, Soldier's
    [131426] = getCrownPrice(680), -- Orcish Tent, Officer's
    [131427] = getCrownPrice(1700), -- Orcish Tent, General's
    [134565] = getCrownPrice(130), -- Fabrication Tank, Reinforced
    [134566] = getCrownPrice(30), -- Shrub Cluster, Snowswept
    [134567] = getCrownPrice(10), -- Bush Cluster, Snowswept
    [134568] = getCrownPrice(40), -- Tree, Snowswept Evergreen
    [134569] = getCrownPrice(40), -- Trees, Snowswept Pair
    [134570] = getCrownPrice(110), -- Snow Pile
    [134571] = getCrownPrice(120), -- Snow Pile, Large
    [134572] = getCrownPrice(5), -- Stones, Snowswept Cluster
    [134573] = getCrownPrice(5), -- Stone, Snowswept Shard
    [134574] = getCrownPrice(50), -- Boulder, Snowswept Peak
    [134575] = getCrownPrice(50), -- Boulder, Snowswept Crag
    [134576] = getCrownPrice(190), -- Orcish Brazier, Snowswept Column
    [134577] = getCrownPrice(50), -- Ice Floe, Thin
    [134578] = getCrownPrice(110), -- Ice Floe, Thick
    [125482] = getCrownPrice(50), -- Boulder, Volcanic Crag
    [125484] = getCrownPrice(30), -- Bush, Lush Laurel
    [121399] = getCrownPrice(2000), -- Target Skeleton, Robust Khajiit
    [121400] = getCrownPrice(2000), -- Target Skeleton, Robust Argonian
    [120408] = getCrownPrice(25), -- Argonian Fish in a Basket
    [120409] = getCrownPrice(100), -- Argonian Rack, Woven
    [120412] = getCrownPrice(50), -- Noble's Chalice
    [120413] = getCrownPrice(30), -- Breton Pitcher, Clay
    [120414] = getCrownPrice(30), -- Breton Tankard, Empty
    [120415] = getCrownPrice(30), -- Breton Tankard, Full
    [120416] = getCrownPrice(40), -- Common Cloak on a Hook
    [120420] = getCrownPrice(140), -- Plaque, Bolted Deer Antlers
    [125545] = getCrownPrice(30), -- Fern, Young Dusky
    [120426] = getCrownPrice(1500), -- Target Skeleton, Khajiit
    [120427] = getCrownPrice(1500), -- Target Skeleton, Argonian
    [125548] = getCrownPrice(85), -- Flower, Towering Purple Bat Bloom
    [125549] = getCrownPrice(85), -- Flowers, Double Purple Bat Blooms
    [125554] = getCrownPrice(85), -- Flowers, Opposing Purple Bat Blooms
    [125555] = getCrownPrice(85), -- Flowers, Sullen Purple Bat Blooms
    [120464] = getCrownPrice(20), -- Rocks, Stacked Cracked
    [120465] = getCrownPrice(5), -- Stone, Tapered Rough
    [120466] = getCrownPrice(5), -- Pebble, Stacked Desert
    [120470] = getCrownPrice(25), -- Tree, Leaning Palm
    [120472] = getCrownPrice(25), -- Tree, Young Palm
    [120473] = getCrownPrice(60), -- Sapling, Thin Palm
    [120475] = getCrownPrice(70), -- Trees, Paired Wax Palms4
    [120482] = getCrownPrice(30), -- Cactus, Golden Bulbs
    [125603] = getCrownPrice(40), -- Mushroom, Stinkhorn Spore
    [120484] = getCrownPrice(30), -- Cactus, Golden Barrel
    [125605] = getCrownPrice(10), -- Mushroom, Young Erupted Stinkcap
    [120486] = getCrownPrice(30), -- Cactus, Stocky Columnar
    [125607] = getCrownPrice(10), -- Mushroom, Young Netch Shield
    [125610] = getCrownPrice(25), -- Mushrooms, Cave Bracket Cluster
    [120491] = getCrownPrice(30), -- Fern, Hearty Autumn
    [125616] = getCrownPrice(5), -- Pebble, Volcanic Chunk
    [125628] = getCrownPrice(70), -- Plant, Rosetted Sundew
    [126686] = getCrownPrice(400), -- Dwarven Chest, Relic
    [120481] = getCrownPrice(150), -- Tree, Ancient Juniper
    [126601] = getCrownPrice(410), -- Velothi Painting, Oversized Geyser
    [126597] = getCrownPrice(410), -- Velothi Painting, Oversized Volcano
    [126607] = getCrownPrice(410), -- Velothi Painting, Oversized Waterfall
    [126604] = getCrownPrice(410), -- Velothi Panels, Geyser
    [126592] = getCrownPrice(410), -- Velothi Panels, Volcano
    [126598] = getCrownPrice(410), -- Velothi Panels, Waterfall
    [125550] = getCrownPrice(85), -- Flowers, Lava Blooms
  },

  [src.JUSTICE] = {
    [126481] = stealable_priests .. " in Vvardenfell", -- Indoril Incense, Burning
    [126772] = stealable_thief, -- Khajiiti Ponder sphere
  },
}

-- 2 Homestead
FurC.MiscItemSources[ver.HOMESTEAD] = {
  [src.JUSTICE] = {
    -- stealing
    [118489] = stealable_scholars, -- Papers, Stack
    [118528] = stealable, -- Signed Contract
    [118890] = stealable, -- Skull, Human
    [118487] = stealable_scholars, -- Letter, Personal
    [120008] = stealable_nerds, -- Lesser Soul Gem, Empty
    [120005] = stealable_nerds, -- Papers, Stack

    -- Bounty Sheets
    [118711] = stealable_guard, -- Argonian Male
    [118709] = stealable_guard, -- Breton Male
    [118712] = stealable_guard, -- Breton Woman
    [118715] = stealable_guard, -- Colovian Man
    [118710] = stealable_guard, -- High Elf Male
    [118714] = stealable_guard, -- Imperial Man
    [118713] = stealable_guard, -- Khajiiti Male
    [118716] = stealable_guard, -- Orc Female
    [118717] = stealable_guard, -- Orc Male

    [121055] = stealable_drunkards, -- Breton Mug, Full

    [116512] = stealable_wrothgar, -- Orcish Carpet Blood
  },

  [src.FISHING] = {
    -- fishing
    [118902] = GetString(SI_FURC_CANBEFISHED), -- Coral, Sun
    [118903] = GetString(SI_FURC_CANBEFISHED), -- Coral, Crown
    [118896] = GetString(SI_FURC_CANBEFISHED), -- Seashell, Sandcake
    [118901] = GetString(SI_FURC_CANBEFISHED), -- Sea sponge
    [118338] = GetString(SI_FURC_CANBEFISHED), -- Fish, Bass
    [118339] = GetString(SI_FURC_CANBEFISHED), -- Fish, Salmon
    [118337] = GetString(SI_FURC_CANBEFISHED), -- Fish, Trout
    [120753] = GetString(SI_FURC_CANBEFISHED), -- Kelp, Green Pile
    [120755] = GetString(SI_FURC_CANBEFISHED), -- Kelp, Lush Pile
    [120754] = GetString(SI_FURC_CANBEFISHED), -- Kelp, Small Pile
    [118897] = GetString(SI_FURC_CANBEFISHED), -- Seashell, Pink Scallop
    [118898] = GetString(SI_FURC_CANBEFISHED), -- Seashell, White Scallop
    [118899] = GetString(SI_FURC_CANBEFISHED), -- Seashell, Starfish
    [118900] = GetString(SI_FURC_CANBEFISHED), -- Seashell, Noble Starfish
  },

  [src.DROP] = {
    [121058] = db_sneaky, -- Candles of Silence
    [119936] = db_poison, -- Poisoned Blood
    [119938] = db_poison, -- Light and Shadow
    [119952] = db_equip, -- Sacrificial Heart

    -- Paintings
    [118216] = GetString(SI_FURC_CHESTS), -- Painting of Spring, Sturdy
    [118217] = GetString(SI_FURC_CHESTS), -- Painting of Pasture, Sturdy
    [118218] = GetString(SI_FURC_CHESTS), -- Painting of Creek, Sturdy
    [118219] = GetString(SI_FURC_CHESTS), -- Painting of Lakes, Sturdy
    [118220] = GetString(SI_FURC_CHESTS), -- Painting of Crags, Sturdy
    [118221] = GetString(SI_FURC_CHESTS), -- Painting of Summer, Sturdy
    [118222] = GetString(SI_FURC_CHESTS), -- Painting of Jungle, Sturdy
    [118223] = GetString(SI_FURC_CHESTS), -- Painting of Palms, Sturdy
    [118265] = GetString(SI_FURC_CHESTS), -- Painting of Winter, Bolted
    [118266] = GetString(SI_FURC_CHESTS), -- Painting of Bridge, Bolted
    [118267] = GetString(SI_FURC_CHESTS), -- Painting of Autumn, Bolted
    [118268] = GetString(SI_FURC_CHESTS), -- Painting of Great Ruins, Bolted
  },

  [src.CROWN] = {
    [118096] = getCrownPrice(10), -- Bread, Plain
    [118098] = getCrownPrice(10), -- Common Bowl, Serving
    [118061] = getCrownPrice(15), -- Chicken Dinner, Display
    [118062] = getCrownPrice(15), -- Chicken Meal, Display
    [118056] = getCrownPrice(15), -- Common Stewpot, Hanging
    [118121] = getCrownPrice(15), -- Knife, Carving
    [118066] = getCrownPrice(15), -- Steak Dinner

    [118057] = getCrownPrice(20), -- Sack of Beans
    [118060] = getCrownPrice(20), -- Sack of Grain
    [118059] = getCrownPrice(20), -- Sack of Millet,
    [118058] = getCrownPrice(20), -- Sack of Rice
    [118351] = getCrownPrice(25), -- Box of Peaches

    [134473] = scambox_fireatro, -- Tapestry,  Malacath

    [118064] = getCrownPrice(45), -- Common Barrel, Dry
    [118065] = getCrownPrice(45), -- Common Cargo Crate, Dry

    [118054] = getCrownPrice(80), -- Common Firepit, Outdoor
    [118055] = getCrownPrice(80), -- Common Firepit, Piled
    [118126] = getCrownPrice(95), -- Plaque, Standard

    [118068] = getCrownPrice(120), -- Simple Brown Banner
    [118069] = getCrownPrice(120), -- Simple Gray Banner
    [118071] = getCrownPrice(120), -- Simple Red Banner
    [118070] = getCrownPrice(120), -- Simple Purple Banner

    [117952] = getCrownPrice(35), -- Rough Torch, Wall

    [94098] = getCrownPrice(95), -- Imperial Bed, Single

    [120607] = getCrownPrice(50), -- Sapling, Lanky Ash

    [115698] = getCrownPrice(1100), -- Khajiit Statue, Guardian

    [120413] = getCrownPrice(30), -- Breton Pitcher, Clay
    [118000] = getCrownPrice(10), -- Garlic String, Display

    [118119] = getCrownPrice(120), -- Minecart, Empty
    [118120] = getCrownPrice(120), -- Minecart, Push
    [118278] = getCrownPrice(140), -- Plaque, Bordered Deer Antlers
    [115395] = getCrownPrice(40), -- Nord Drinking Horn, Display
    [118118] = getCrownPrice(100), -- Candles, Lasting
  },
}
