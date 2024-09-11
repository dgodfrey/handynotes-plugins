-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale

local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 47, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Lupos = Class('lupos', Rare, {
    id = 521,
    fgroup = 'lupos',
    rewards = {
        Transmog({item = 3018, type = L['cloak']}), -- Hide of Lupos
        Transmog({item = 3227, type = L['staff']}) -- Nightbane Staff
    }
}) -- Lupos

map.nodes[66202080] = Lupos()
map.nodes[59592049] = Lupos()
map.nodes[71602300] = Lupos()

map.nodes[07923371] = Rare({
    id = 45811,
    rewards = {Transmog({item = 920, type = L['1h_mace']})} -- Wicked Spiked Mace
}) -- Marina DeSirrus <Thief of the Dead>

map.nodes[86334757] = Rare({
    id = 574,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 4449, type = L['dagger']}), -- Naraxis' Fang
        Transmog({item = 4448, type = L['mail']}) -- Husk of Naraxis
    }
}) -- Naraxis

map.nodes[20904406] = Rare({
    id = 771,
    rewards = {
        Transmog({item = 4464, type = L['mail']}), -- Trouncing Boots
        Transmog({item = 4465, type = L['mail']}) -- Felstrom's Gauntlets
    },
    pois = {
        ns.poi.Path({
            19214417, 19934516, 20904406, 22174469, 23344435, 23794300,
            23974165, 23034078, 22244013, 22643876, 24103867, 25063778,
            24823633, 24603499, 24293347, 22973326, 21713390, 22073531,
            22633663, 22543820, 22173961, 21714105, 20954223, 20014332, 19214417
        })
    }
}) -- Commander Felstrom

map.nodes[60724050] = Rare({
    id = 507,
    rewards = {
        Transmog({item = 4474, type = L['bow']}), -- Ravenwood Bow
        Transmog({item = 6204, type = L['leather']}) -- Tribal Worg Helm
    },
    pois = {
        ns.poi.Path({
            57903020, 57992982, 58292921, 59493008, 60133092, 60673232,
            61183379, 61623527, 61593664, 61403810, 60914024
        }), POI({63805160, 57903020})
    }
}) -- Fenros

local Lord_Malathrom = Class('lord_malathrom', Rare, {
    id = 503,
    location = L['in_crypt'],
    fgroup = 'malathrom',
    rewards = {Transmog({item = 4462, type = L['cloak']})}, -- Cloak of Rot
    pois = {POI({23573520})}
}) -- Lord Malathrom

map.nodes[24203440] = Lord_Malathrom()
map.nodes[20402700] = Lord_Malathrom()

map.nodes[74207800] = Rare({
    id = 534,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 4477, type = L['shield']}), -- Nefarious Buckler
        Transmog({item = 4476, type = L['cloth']}) -- Beastwalker Robe
    }
}) -- Nefaru <The Den Mother>

map.nodes[46304000] = ns.node.AnniversaryRare({
    id = 121913,
    quest = 47463,
    rewards = {
        Transmog({item = 150416, type = L['cloth']}), -- Gloves of Delusional Power
        Transmog({item = 150405, type = L['leather']}), -- Circlet of Restless Dreams
        Transmog({item = 150415, type = L['leather']}), -- Dragonspur Wraps
        Transmog({item = 150406, type = L['mail']}), -- Boots of the Endless Moor
        Transmog({item = 150410, type = L['plate']}), -- Acid Inscribed Greaves
        Spacer(), Section(L['shared_drops']), Spacer(),
        Transmog({item = 150429, type = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, type = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, type = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, type = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, type = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, type = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150383, type = L['staff']}) -- Amberseal Keeper
    }
}) -- Emeriss

map.nodes[58402980] = Rare({
    id = 507,
    pois = {
        POI({
            62003720, 60604050, 61804100, 63004100, 61204520,64404780,
            64005120
        })
    },
    rewards = {
        Transmog({item = 4474, type = L['leather']}), -- Ravenwood Bow
        Transmog({item = 6204, type = L['bow']}), -- Tribal Worg helm
    }
}) -- Fenros

map.nodes[24203450] = Rare({
    id = 503,
    pois = {
        POI({
            25603020, 20302680
        })
    },
    rewards = {
        Transmog({item = 4462, type = L['cloak']}), -- Cloak of Rot
    }
}) -- Lord Malathrom

map.nodes[65601960] = Rare({
    id = 521,
    pois = {
        POI({
            60802060, 70202440
        })
    },
    rewards = {
        Transmog({item = 3018, type = L['cloak']}), -- Hide of Lupos
        Transmog({item = 3227, type = L['staff']}), -- Nightbane Staff
    }
}) -- Lupos

map.nodes[07803420] = Rare({
    id = 45811,
    rewards = {
        Transmog({item = 920, type = L['mace']}), -- Wicked Spiked Mace
    }
}) -- Marina DeSirrus

map.nodes[86404730] = Rare({
    id = 574,
    rewards = {
        Transmog({item = 4448, type = L['mail']}), -- Husk of Naraxis
        Transmog({item = 4449, type = L['dagger']}), -- Naraxis' Fang
    }
}) -- Naraxis

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[21805340] = Safari.BlackRat({
    pois = {
        POI({
            16204760, 16403720, 16603680, 18203920, 19405940, 19405960,
            21403820, 21803500, 21803800, 21805340, 22403340, 43607300,
            50606660, 68205120, 75205640, 78803380
        })
    }
}) -- Black Rat

map.nodes[76205380] = Safari.Chicken({
    pois = {
        POI({
            72805440, 72805460, 73405300, 73605280, 75805600, 76205380,
            77005520, 77804440, 78004820, 79804640, 79804660
        })
    }
}) -- Chicken

map.nodes[32205280] = Safari.DuskSpiderling({
    pois = {
        POI({
            22406240, 22406260, 23406240, 23406260, 23606240, 23606260,
            24406500, 25406500, 25406560, 25606500, 25606720, 28005460,
            28006500, 28205160, 28205400, 28405140, 28605700, 28804640,
            28804940, 28804960, 28805220, 29004660, 29006420, 29406300,
            29606280, 30004840, 30004880, 30403900, 30403960, 30405020,
            30405300, 30405660, 30603920, 30605020, 30605060, 30605300,
            30605680, 30805540, 30805580, 30805980, 31204500, 31205840,
            31205860, 31404620, 31404800, 31404940, 31604600, 31604780,
            31604880, 31604980, 31803640, 31803660, 31804740, 32204500,
            32205240, 32205280, 32403800, 32403860, 32404120, 32404240,
            32404260, 32405840, 32405860, 32603720, 32603920, 32604080,
            32604240, 32604940, 32604960, 32605160, 32804260, 32804540,
            32804560, 33003840, 33205100, 33403980, 33405620, 33605600,
            33804940, 33805240, 33805260, 33806020, 34005040, 34005060,
            35006100, 35405320, 35605340, 35805940, 35805960, 36206120,
            36206220, 36606120, 37205440, 37205460, 59803140, 59803160,
            60002440, 60202460, 60202640, 60202660, 60203300, 60803760,
            62202640, 62202680, 62202980, 62402940, 62602940, 62602960,
            62802480, 63402740, 63402760, 63403900, 63602740, 63602760,
            63603920, 64202400, 65004100, 65402640, 65402660, 65602640,
            65602660, 66602200, 68002340, 68002360
        })
    }
}) -- DuskSpiderling

map.nodes[59806080] = Safari.Mouse({
    pois = {
        POI({
            21807980, 25407840, 26803560, 31806840, 39605840, 53206260,
            59806080, 74402480, 80405140, 81405060, 87203740
        })
    }
}) -- Mouse

map.nodes[50806060] = Safari.RatSnake({
    pois = {
        POI({
            07003400, 07203460, 07403300, 17405740, 17405760, 18204780,
            18405600, 18604780, 18605600, 20806940, 21004580, 21006980,
            21204780, 21404340, 21604320, 21804780, 21808000, 22403640,
            22403660, 22406740, 22406760, 22603640, 22603660, 22806760,
            23604360, 23804340, 24603580, 24803680, 24803800, 25407820,
            26603540, 26803560, 26807700, 27007800, 27206020, 27206060,
            27807540, 28007580, 31806840, 31806880, 32204200, 33807520,
            34007020, 34007060, 34007560, 34406920, 34606920, 35007260,
            36407100, 36607080, 38807340, 39602440, 39602460, 39605900,
            39805820, 40207320, 40407360, 41006180, 47206320, 47807320,
            48206160, 48206380, 49007440, 49407600, 50806040, 50806060,
            52802100, 53405680, 53605700, 53606000, 53606260, 54007560,
            54207540, 54402260, 54602240, 54602260, 55007280, 55205780,
            56402300, 57205640, 57402540, 57405160, 57602520, 57605140,
            57605160, 58405940, 58405960, 58407420, 58803540, 58803580,
            58805840, 58807400, 60006080, 61405860, 61605880, 62006440,
            62007260, 62207220, 62808040, 64006140, 64207440, 65007640,
            65007700, 67007540, 67405240, 67405260, 67407100, 67407620,
            67605240, 67605260, 67607100, 70405700, 70407180, 70607200,
            70805720, 71004980, 72402640, 72402660, 72406900, 72602640,
            72602660, 72606900, 72806540, 73204580, 73807040, 73807060,
            74206300, 75002480, 76004220, 76004260, 78403580, 78603620,
            79407240, 80403760, 80405200, 80603760, 80605920, 80605960,
            81605040, 81605060, 81806060, 82003380, 82006040, 82604240,
            82604260, 84203580, 85603100, 87403720, 87603740, 90403060
        })
    }
}) -- Rat Snake

map.nodes[21004560] = Safari.Roach({
    pois = {
        POI({
            21004560, 21404320, 21804760, 22406760, 27807580, 36607120,
            38807340, 56202320, 64007420, 84203600
        })
    }
}) -- Roach

map.nodes[65203500] = Safari.Skunk({
    pois = {
        POI({
            10403740, 10403760, 10603740, 10603760, 11005960, 11204740,
            11204780, 11205940, 11403340, 11403380, 11603340, 11603360,
            11805300, 11806500, 12406560, 12804500, 13004440, 13406920,
            13407000, 13607020, 14003660, 14203640, 15802940, 16403000,
            16406420, 16406460, 16603020, 16606440, 16606460, 17604420,
            17804480, 18203140, 18403180, 18603180, 19202580, 19403700,
            19803640, 19803660, 20207620, 22405180, 22605220, 22805620,
            22805660, 24407780, 25004640, 25004680, 25007440, 25007460,
            25402940, 25602940, 25602960, 27206640, 27606640, 27606660,
            28402840, 28602860, 28802800, 28803140, 29003180, 30403460,
            30603440, 30603480, 32203340, 32403400, 32603400, 33803140,
            34203160, 36402140, 36802140, 36802160, 39406580, 39606540,
            39606560, 41802060, 42002040, 43407060, 46201860, 46401840,
            46601840, 46601860, 50201640, 50201660, 52401720, 52401760,
            55402000, 55602020, 56601840, 59402800, 59402860, 59602780,
            59802920, 61403140, 61404900, 61603160, 62003140, 62404500,
            63404460, 64403420, 64403620, 64403680, 64603640, 64603660,
            64604560, 65001860, 65201800, 65203500, 65204540, 65603540,
            65606540, 65802320, 65802380, 65806560, 66403660, 67003620,
            67403660, 68003020, 69402040, 69402060, 70202540, 70202560,
            70602380, 70602540, 73402040, 73402060, 79806640, 80406700,
            83401800, 83601820, 83601880
        })
    }
}) -- Skunk

map.nodes[15002280] = Safari.SmallFrog({
    pois = {
        POI({
            02803560, 03802880, 04402680, 04802800, 05603600, 06003520,
            07402940, 07602920, 07804640, 07804660, 08004220, 08204260,
            08204820, 08605040, 08605080, 10003020, 10402860, 11402720,
            11402800, 11602800, 14402340, 14402360, 14802360, 15002280,
            15602260, 16802220, 23402480, 24402480, 30402360, 31802260,
            32202200, 35201980, 37001840, 38001740, 38001760, 46001560,
            46401520, 46601500, 48601240, 48601280, 55401100, 55401160,
            57801300, 60401380, 65201440, 65401460, 65601460, 70001560,
            70201520, 71001540, 71201560, 71601560, 75401600, 75601600,
            76201660, 79201620, 79601640
        })
    }
}) -- Small Frog

map.nodes[44804100] = Safari.Squirrel({
    pois = {
        POI({
            16602280, 17602260, 40201940, 44804100, 44804160, 47404000,
            48404060, 62601660, 83001640
        })
    }
}) -- Squirrel

map.nodes[32604940] = Safari.WidowSpiderling({
    pois = {
        POI({
            28805260, 28806340, 28806360, 29005240, 29804640, 30005640,
            30005660, 30006240, 30006280, 30204360, 30204540, 30204960,
            30404240, 30404280, 30404860, 30405320, 30405400, 30604280,
            30604560, 30605340, 30605360, 31004740, 31004780, 31005980,
            31205940, 32004560, 32004660, 32204200, 32205280, 32403740,
            32404120, 32404440, 32404480, 32405000, 32405360, 32603740,
            32603760, 32604940, 32604980, 32605340, 32605360, 32804080,
            33203940, 33403960, 33404700, 33603940, 33603960, 33804720,
            33804780, 34005640, 34005660, 34405140, 34405180, 34405380,
            34406080, 34605120, 34605160, 34605360, 34806080, 35206020,
            35806180, 36006260, 36405540, 36605500, 59803260, 60002440,
            60002480, 60003200, 60403820, 60803760, 62002740, 62202760,
            62602660, 63003760, 63202640, 63403860, 63603840, 63603880,
            63802340, 64002380, 64402620, 64402660, 64602620, 65203960,
            65403880, 65404300, 65604300, 65802500, 66002400, 67402260, 67602300
        })
    }
}) -- Widow Spiderling
