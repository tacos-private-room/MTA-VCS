-- author coco (学长)
----------------------------------
--WALKING STYLE
----------------------------------
MOVE_DEFAULT = 0
--[[
	MOVE_PLAYER	54  CJ
	MOVE_PLAYER_F	55
	MOVE_PLAYER_M	56
    MOVE_ROCKET	57 -- 扛火箭筒
    MOVE_ROCKET_F	58
    MOVE_ROCKET_M	59
    MOVE_ARMED	60 -- 手持武器
    MOVE_ARMED_F	61
    MOVE_ARMED_M	62
    MOVE_BBBAT	63
    MOVE_BBBAT_F	64
    MOVE_BBBAT_M	65
    MOVE_CSAW	66 -- 电锯
    MOVE_CSAW_F	67
    MOVE_CSAW_M	68
    MOVE_SNEAK	69 -- 站着步行是潜行
    MOVE_JETPACK	70
]]
MOVE_MAN = 118 -- 男性
--MOVE_SHUFFLE	119 
MOVE_OLDMAN=120 -- 老年男性
MOVE_GANG1=121 -- 帮会1
MOVE_GANG2=122 -- 嚣张帮会2
MOVE_OLDFATMAN=123 
MOVE_FATMAN=124 --胖男人
MOVE_JOGGER=125 -- 慢跑男
--MOVE_DRUNKMAN	126 -- 慢步是醉酒
MOVE_BLINDMAN=127 --瞎子
MOVE_SWAT=128 --SWAT
MOVE_WOMAN=129 --女性
MOVE_SHOPPING=130 --购物？跑不快
MOVE_BUSYWOMAN=131 --商业女性？
MOVE_SEXYWOMAN=132 --性感女
MOVE_PRO=133
MOVE_OLDWOMAN=134 --老女
MOVE_FATWOMAN=135-- 胖女
MOVE_JOGWOMAN=136 --跑的很慢的女
MOVE_OLDFATWOMAN=137 --老胖女
MOVE_SKATE=138 --滑板鞋

--女性皮肤表
femaleSkins = {9, 10, 11, 12, 13, 31, 38, 39, 40, 41, 53, 54, 55, 56, 63, 64, 69, 75, 76, 77, 85, 87, 88, 89, 90, 91, 92, 93, 129, 130, 131, 138, 139, 140, 141, 145, 148, 150, 151, 152, 157, 169, 172, 178, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 201, 205, 207, 211, 214, 215, 216, 218, 219, 224, 225, 226, 231, 232, 233, 237, 238, 243, 244, 245, 246, 251, 256, 257, 263, 298, 304}

GTAWalkingStyle = {
	["player"] = MOVE_DEFAULT,

	["man"] = MOVE_MAN,
	["oldman"] = MOVE_OLDMAN,
	["fatman"] = MOVE_FATMAN,

	["woman"] = MOVE_WOMAN,
	["oldfatwoman"] = MOVE_FATWOMAN,
	["oldwoman"] = MOVE_OLDWOMAN,
	["sexywoman"] = MOVE_SEXYWOMAN,
	["jogwoman"] = MOVE_JOGWOMAN,
	["busywoman"] = MOVE_BUSYWOMAN,

	["gang1"] = MOVE_GANG1,
	["gang2"] = MOVE_GANG2,

	["pro"] = MOVE_PRO,
	["skate"] = MOVE_SKATE,
	["jogger"] = MOVE_JOGGER,
	["swat"] = MOVE_SWAT,
}

-- Default pedtype, 
-- animGroup("man",cop,"woman",fat"woman","sexywoman"...), cars can drive mask(in hex), other flag (drugs,...),  
-- animfile, radio1, radio2
gtapeds = {}

gtapeds[0]={ "PLAYER1","STAT_PLAYER","player", 0, 0,"null", 9,9	,"PED_TYPE_PLAYER","VOICE_PLY_CR","VOICE_PLY_CR"}
--这里丢失了一些特殊NPC的属性，暂时用模板代替
gtapeds[1]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[2]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
--
gtapeds[7]={ "CIVMALE","STAT_SENSIBLE_GUY","man", 0, 0,"man", 1,4,"PED_TYPE_GEN","VOICE_GEN_MALE01","VOICE_GEN_MALE01"}
--
gtapeds[9]={ "CIVFEMALE","STAT_COWARD","woman","120C",0,"man",7,3,"PED_TYPE_GEN","VOICE_GEN_BFORI","VOICE_GEN_BFORI"}
gtapeds[10]={ "CIVFEMALE","STAT_STREET_GIRL","oldfatwoman","1003",0,"null",9,3,"PED_TYPE_GEN","VOICE_GEN_BFOST","VOICE_GEN_BFOST"}
gtapeds[11]={ "CIVFEMALE","STAT_SUIT_GIRL","woman","130C",0,"null",3,7,"PED_TYPE_GEN","VOICE_GEN_BFYCRP","VOICE_GEN_BFYCRP"}
gtapeds[12]={ "CIVFEMALE","STAT_COWARD","sexywoman","120C",1,"null",7,9,"PED_TYPE_GEN","VOICE_GEN_BFYRI","VOICE_GEN_BFYRI"}
gtapeds[13]={ "CIVFEMALE",  "STAT_STREET_GIRL","woman","1983",1,"null",0,3,"PED_TYPE_GEN","VOICE_GEN_BFYST","VOICE_GEN_BFYST"}
gtapeds[14]={ "CIVMALE","STAT_COWARD","man","120C",0,"man",9,8,"PED_TYPE_GEN","VOICE_GEN_BMORI","VOICE_GEN_BMORI"}
gtapeds[15]={ "CIVMALE","STAT_STREET_GUY","man","1003",0,"man",8,9,"PED_TYPE_GEN","VOICE_GEN_BMOST","VOICE_GEN_BMOST"}
gtapeds[16]={ "CIVMALE","STAT_COWARD","man","110F",0,"null",0,8,"PED_TYPE_GEN","VOICE_GEN_BMYAP","VOICE_GEN_BMYAP"}
gtapeds[17]={ "CIVMALE","STAT_SUIT_GUY","man","120C",1,"man",7,9,"PED_TYPE_GEN","VOICE_GEN_BMYBU","VOICE_GEN_BMYBU"}
gtapeds[18]={ "CIVMALE","STAT_BEACH_GUY","man","1000",0,"beach",7,3,"PED_TYPE_GEN","VOICE_GEN_BMYBE","VOICE_GEN_BMYBE"}
gtapeds[19]={ "CIVMALE","STAT_STREET_GUY","gang1","170F",1,"null",5,0,"PED_TYPE_GEN","VOICE_GEN_BMYDJ","VOICE_GEN_BMYDJ"}
gtapeds[20]={ "CIVMALE","STAT_COWARD","man","120C",1,"null",7,5,"PED_TYPE_GEN","VOICE_GEN_BMYRI","VOICE_GEN_BMYRI"}
gtapeds[21]={ "CRIMINAL","STAT_CRIMINAL","gang1","110F",1,"man",5,0,"PED_TYPE_GEN","VOICE_GEN_BMYCR","VOICE_GEN_BMYCR"}
gtapeds[22]={ "CIVMALE","STAT_STREET_GUY","gang2","1983",1,"null",0,3,"PED_TYPE_GEN","VOICE_GEN_BMYST","VOICE_GEN_BMYST"}
gtapeds[23]={ "CIVMALE","STAT_STREET_GUY","man","0800",0,"null",6,4,"PED_TYPE_GEN","VOICE_GEN_WMYBMX","VOICE_GEN_WMYBMX"}
gtapeds[24]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"man",10,1,"PED_TYPE_GEN","VOICE_GEN_BBDYG1","VOICE_GEN_BBDYG1"}
gtapeds[25]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"man",2,1,"PED_TYPE_GEN","VOICE_GEN_BBDYG2","VOICE_GEN_BBDYG2"}
gtapeds[26]={ "CIVMALE","STAT_GEEK_GUY","man","1000",1,"man",2,6,"PED_TYPE_GEN","VOICE_GEN_WMYBP","VOICE_GEN_WMYBP"}
gtapeds[27]={ "CIVMALE","STAT_SUIT_GUY","man","130C",1,"man",1,2,"PED_TYPE_GEN","VOICE_GEN_WMYCON","VOICE_GEN_WMYCON"}
gtapeds[28]={ "CRIMINAL","STAT_CRIMINAL","gang2","110F",0,"man",5,5,"PED_TYPE_GEN","VOICE_GEN_BMYDRUG","VOICE_GEN_BMYDRUG"}
gtapeds[29]={ "CRIMINAL","STAT_CRIMINAL","man","110F",0,"man",4,4,"PED_TYPE_GEN","VOICE_GEN_WMYDRUG","VOICE_GEN_WMYDRUG"}
gtapeds[30]={ "CRIMINAL","STAT_CRIMINAL","man","110F",0,"man",9,7,"PED_TYPE_GEN","VOICE_GEN_HMYDRUG","VOICE_GEN_HMYDRUG"}
gtapeds[31]={ "CIVFEMALE","STAT_OLD_GIRL","oldfatwoman","1003",0,"null",1,10,"PED_TYPE_GEN","VOICE_GEN_DWFOLC","VOICE_GEN_DWFOLC"}
gtapeds[32]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"null",1,10,"PED_TYPE_GEN","VOICE_GEN_DWMOLC1","VOICE_GEN_DWMOLC1"}
gtapeds[33]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"null",1,2,"PED_TYPE_GEN","VOICE_GEN_DWMOLC2","VOICE_GEN_DWMOLC2"}
gtapeds[34]={ "CIVMALE","STAT_TOUGH_GUY","man","1983",1,"null",2,1,"PED_TYPE_GEN","VOICE_GEN_DWMYLC1","VOICE_GEN_DWMYLC2"}
gtapeds[35]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"null",10,2,"PED_TYPE_GEN","VOICE_GEN_WMYGAR","VOICE_GEN_WMYGAR"}
gtapeds[36]={ "CIVMALE","STAT_COWARD","man","170F",0,"null",2,3,"PED_TYPE_GEN","VOICE_GEN_WMYGOL1","VOICE_GEN_WMYGOL1"}
gtapeds[37]={ "CIVMALE","STAT_COWARD","man","170F",0,"null",7,3,"PED_TYPE_GEN","VOICE_GEN_WMYGOL2","VOICE_GEN_WMYGOL2"}
gtapeds[38]={ "CIVFEMALE","STAT_COWARD","woman","120C",0,"man",10,9,"PED_TYPE_GEN","VOICE_GEN_HFORI","VOICE_GEN_HFORI"}
gtapeds[39]={ "CIVFEMALE","STAT_OLD_GIRL","oldfatwoman","1003",0,"man",9,3,"PED_TYPE_GEN","VOICE_GEN_HFOST","VOICE_GEN_HFOST"}
gtapeds[40]={ "CIVFEMALE","STAT_COWARD","sexywoman","120C",1,"null",7,3,"PED_TYPE_GEN","VOICE_GEN_HFYRI","VOICE_GEN_HFYRI"}
gtapeds[41]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1983",1,"null",6,1,"PED_TYPE_GEN","VOICE_GEN_HFYST","VOICE_GEN_HFYST"}

gtapeds[43]={ "CIVMALE","STAT_COWARD","man","120C",0,"man",10,9,"PED_TYPE_GEN","VOICE_GEN_HMORI","VOICE_GEN_HMORI"}
gtapeds[44]={ "CIVMALE","STAT_STREET_GUY","man","1003",0,"man",2,2,"PED_TYPE_GEN","VOICE_GEN_HMOST","VOICE_GEN_HMOST"}
gtapeds[45]={ "CIVMALE","STAT_BEACH_GUY","man","1000",0,"beach",7,3,"PED_TYPE_GEN","VOICE_GEN_HMYBE","VOICE_GEN_HMYBE"}
gtapeds[46]={ "CIVMALE","STAT_SUIT_GUY","man","1983",1,"null",6,4,"PED_TYPE_GEN","VOICE_GEN_HMYRI","VOICE_GEN_HMYRI"}
gtapeds[47]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",0,0,"PED_TYPE_GEN","VOICE_GEN_HMYCR","VOICE_GEN_HMYCR"}
gtapeds[48]={ "CIVMALE","STAT_TOURIST","man","1983",1,"man",0,5,"PED_TYPE_GEN","VOICE_GEN_HMYST","VOICE_GEN_HMYST"}
gtapeds[49]={ "CIVMALE","STAT_OLD_GUY","oldman","1003",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_OMOKUNG","VOICE_GEN_OMOKUNG"}
gtapeds[50]={ "CIVMALE","STAT_TOUGH_GUY","man","1433",1,"null",6,6,"PED_TYPE_GEN","VOICE_GEN_WMYMECH","VOICE_GEN_WMYMECH"}
gtapeds[51]={ "CIVMALE","STAT_SENSIBLE_GUY","man","0800",1,"man",2,0,"PED_TYPE_GEN","VOICE_GEN_BMYMOUN","VOICE_GEN_BMYMOUN"}
gtapeds[52]={ "CIVMALE","STAT_SENSIBLE_GUY","man","0800",1,"man",6,2,"PED_TYPE_GEN","VOICE_GEN_WMYMOUN","VOICE_GEN_WMYMOUN"}
gtapeds[53]={ "CIVFEMALE","STAT_OLD_GIRL","oldwoman","120C",0,"man",10,1,"PED_TYPE_GEN","VOICE_GEN_OFORI","VOICE_GEN_OFORI"}

gtapeds[54]={ "CIVFEMALE","STAT_STREET_GIRL","oldwoman","1003",0,"null",10,3,"PED_TYPE_GEN","VOICE_GEN_OFOST","VOICE_GEN_OFOST"}
gtapeds[55]={ "CIVFEMALE","STAT_COWARD","woman","120C",1,"null",2,7,"PED_TYPE_GEN","VOICE_GEN_OFYRI","VOICE_GEN_OFYRI"}
gtapeds[56]={ "CIVFEMALE","STAT_TOURIST","woman","1003",1,"null",6,6,"PED_TYPE_GEN","VOICE_GEN_OFYST","VOICE_GEN_OFYST"}
gtapeds[57]={ "CIVMALE","STAT_COWARD","man","120C",0,"man",10,10,"PED_TYPE_GEN","VOICE_GEN_OMORI","VOICE_GEN_OMORI"}
gtapeds[58]={ "CIVMALE","STAT_STREET_GUY","man","1003",0,"man",2,1,"PED_TYPE_GEN","VOICE_GEN_OMOST","VOICE_GEN_OMOST"}
gtapeds[59]={ "CIVMALE","STAT_COWARD","man","120C",1,"null",2,4,"PED_TYPE_GEN","VOICE_GEN_OMYRI","VOICE_GEN_OMYRI"}
gtapeds[60]={ "CIVMALE","STAT_TOURIST","man","1983",1,"null",3,6,"PED_TYPE_GEN","VOICE_GEN_OMYST","VOICE_GEN_OMYST"}
gtapeds[61]={ "CIVMALE","STAT_SUIT_GUY","man","1000",1,"null",1,2,"PED_TYPE_GEN","VOICE_GEN_WMYPLT","VOICE_GEN_WMYPLT"}
gtapeds[62]={ "CIVMALE","STAT_OLD_GUY","oldman","1000",0,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_WMOPJ","VOICE_GEN_WMOPJ"}
gtapeds[63]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_BFYPRO","VOICE_GEN_BFYPRO"}
gtapeds[64]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_HFYPRO","VOICE_GEN_HFYPRO"}
gtapeds[66]={ "CIVMALE","STAT_TOUGH_GUY","man","110F",1,"man",0,0,"PED_TYPE_GEN","VOICE_GEN_BMYPOL1","VOICE_GEN_BMYPOL1"}
gtapeds[67]={ "CIVMALE","STAT_TOUGH_GUY","man","110F",1,"man",8,8,"PED_TYPE_GEN","VOICE_GEN_BMYPOL2","VOICE_GEN_BMYPOL2"}
gtapeds[68]={ "CIVMALE","STAT_SUIT_GUY","man","170F",0,"man",1,10,"PED_TYPE_GEN","VOICE_GEN_WMOPREA","VOICE_GEN_WMOPREA"}
gtapeds[69]={ "CIVFEMALE","STAT_TOURIST","woman","1983",1,"null",4,6,"PED_TYPE_GEN","VOICE_GEN_SBFYST, VOICE_GEN_SBFYST"}
gtapeds[70]={ "CIVMALE","STAT_OLD_GUY","man","120C",0,"null",10,10,"PED_TYPE_GEN","VOICE_GEN_WMOSCI","VOICE_GEN_WMOSCI"}
gtapeds[71]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"null",2,6,"PED_TYPE_GEN","VOICE_GEN_WMYSGRAD","VOICE_GEN_WMYSGRAD"}
gtapeds[72]={ "CIVMALE","STAT_TOUGH_GUY","man","1983",1,"man",8,2,"PED_TYPE_GEN","VOICE_GEN_SWMYHP1","VOICE_GEN_SWMYHP1"}
gtapeds[73]={ "CIVMALE","STAT_COWARD","man",1882,1,"man",2,8,"PED_TYPE_GEN","VOICE_GEN_SWMYHP2","VOICE_GEN_SWMYHP2"}

gtapeds[75]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"null",3,3,"PED_TYPE_GEN","VOICE_GEN_SWFOPRO","VOICE_GEN_SWFOPRO"}
gtapeds[76]={ "CIVFEMALE","STAT_GEEK_GIRL","sexywoman","1000",1,"null",6,4,"PED_TYPE_GEN","VOICE_GEN_WFYSTEW","VOICE_GEN_WFYSTEW"}
gtapeds[77]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_SWMOTR1","VOICE_GEN_SWMOTR1"}
gtapeds[78]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_WMOTR1","VOICE_GEN_WMOTR1"}
gtapeds[79]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_BMOTR1","VOICE_GEN_BMOTR1"}
gtapeds[80]={ "CIVMALE","STAT_TOUGH_GUY","man", "1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_BMYBOX","VOICE_GEN_BMYBOX"}
gtapeds[81]={ "CIVMALE","STAT_TOUGH_GUY","man", "1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_WMYBOX","VOICE_GEN_WMYBOX"} 
gtapeds[82]={ "CIVMALE","STAT_COWARD","man","170F",1,"null",1,2,"PED_TYPE_GEN","VOICE_GEN_VHMYELV","VOICE_GEN_VHMYELV"}
gtapeds[83]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"null",2,1,"PED_TYPE_GEN","VOICE_GEN_VBMYELV","VOICE_GEN_VBMYELV"}
gtapeds[84]={ "CIVMALE","STAT_COWARD","man","170F",1,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_VIMYELV","VOICE_GEN_VIMYELV"}
gtapeds[85]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_VWFYPRO","VOICE_GEN_VWFYPRO"}

gtapeds[87]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_VWFYST1","VOICE_GEN_VWFYST1"}
gtapeds[88]={ "CIVFEMALE","STAT_COWARD","oldwoman","120C",0,"man",10,1,"PED_TYPE_GEN","VOICE_GEN_WFORI","VOICE_GEN_WFORI"}
gtapeds[89]={ "CIVFEMALE","STAT_STREET_GIRL","oldfatwoman","1003",0,"man",1,2,"PED_TYPE_GEN","VOICE_GEN_WFOST","VOICE_GEN_WFOST"}
gtapeds[90]={ "CIVFEMALE","STAT_COWARD","jogwoman","1000",0,"beach",9,9,"PED_TYPE_GEN","VOICE_GEN_WFYJG","VOICE_GEN_WFYJG"}
gtapeds[91]={ "CIVFEMALE","STAT_COWARD","sexywoman","120C",1,"null",4,6,"PED_TYPE_GEN","VOICE_GEN_WFYRI","VOICE_GEN_WFYRI"}
gtapeds[92]={ "CIVFEMALE","STAT_SKATER","skate","1000",1,"skate",1,4,"PED_TYPE_GEN","VOICE_GEN_WFYRO","VOICE_GEN_WFYRO"}
gtapeds[93]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","1983",1,"null",4,6,"PED_TYPE_GEN","VOICE_GEN_WFYST","VOICE_GEN_WFYST"}
gtapeds[94]={ "CIVMALE","STAT_SUIT_GUY","man","120C",0,"man",10,10,"PED_TYPE_GEN","VOICE_GEN_WMORI","VOICE_GEN_WMORI"}
gtapeds[95]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"man",8,1,"PED_TYPE_GEN","VOICE_GEN_WMOST","VOICE_GEN_WMOST"}
gtapeds[96]={ "CIVMALE","STAT_SENSIBLE_GUY","jogger","1000",0,"null",9,9,"PED_TYPE_GEN","VOICE_GEN_WMYJG","VOICE_GEN_WMYJG"}
gtapeds[97]={ "CIVMALE","STAT_GEEK_GUY","jogger","1000",0,"null",9,9,"PED_TYPE_GEN","VOICE_GEN_WMYLG","VOICE_GEN_WMYLG"}
gtapeds[98]={ "CIVMALE","STAT_SHOPPER","man","120C",1,"null",6,9,"PED_TYPE_GEN","VOICE_GEN_WMYRI","VOICE_GEN_WMYRI"}
gtapeds[99]={ "CIVMALE","STAT_SKATER","skate","1000",0,"skate",9,9,"PED_TYPE_GEN","VOICE_GEN_WMYRO","VOICE_GEN_WMYRO"}
gtapeds[100]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",2,6,"PED_TYPE_GEN","VOICE_GEN_WMYCR","VOICE_GEN_WMYCR"}
gtapeds[101]={ "CIVMALE","STAT_STREET_GUY","man","1983",1,"null",4,3,"PED_TYPE_GEN","VOICE_GEN_WMYST","VOICE_GEN_WMYST"}
	--gang peds,
gtapeds[102]={ "GANG1","STAT_GANG1","gang1","110F",1,"null",3,3,"PED_TYPE_GANG","VOICE_GNG_BALLAS1","VOICE_GNG_BALLAS2"}
gtapeds[103]={ "GANG1","STAT_GANG1","gang2","110F",1,"null",3,3,"PED_TYPE_GANG","VOICE_GNG_BALLAS3","VOICE_GNG_BALLAS4"}
gtapeds[104]={ "GANG1","STAT_GANG1","gang1","110F",1,"null",3,3,"PED_TYPE_GANG","VOICE_GNG_BALLAS5","VOICE_GNG_BALLAS5"}
gtapeds[105]={ "GANG2","STAT_GANG2","gang2","110F",1,"null",5,5,"PED_TYPE_GANG","VOICE_GNG_FAM1","VOICE_GNG_FAM2"}
gtapeds[106]={ "GANG2","STAT_GANG2","gang1","110F",1,"null",5,5,"PED_TYPE_GANG","VOICE_GNG_FAM3","VOICE_GNG_FAM4"}
gtapeds[107]={ "GANG2","STAT_GANG2","gang2","110F",1,"null",5,5,"PED_TYPE_GANG","VOICE_GNG_FAM5","VOICE_GNG_FAM5"}
gtapeds[108]={ "GANG3","STAT_GANG3","gang1","110F",1,"null",9,2,"PED_TYPE_GANG","VOICE_GNG_LSV1","VOICE_GNG_LSV2"}
gtapeds[109]={ "GANG3","STAT_GANG3","gang2","110F",1,"null",9,2,"PED_TYPE_GANG","VOICE_GNG_LSV3","VOICE_GNG_LSV4"}
gtapeds[110]={ "GANG3","STAT_GANG3","gang1","110F",1,"null",9,2,"PED_TYPE_GANG","VOICE_GNG_LSV5","VOICE_GNG_LSV5"}
gtapeds[111]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"null",2,2,"PED_TYPE_GEN","VOICE_GEN_MAFFA","VOICE_GEN_MAFFA"}
gtapeds[112]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"null",2,2,"PED_TYPE_GEN","VOICE_GEN_MAFFB","VOICE_GEN_MAFFB"}
gtapeds[113]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"null",2,2,"PED_TYPE_GANG","VOICE_GNG_MAFBOSS","VOICE_GNG_MAFBOSS"}
gtapeds[114]={ "GANG8","STAT_GANG8","gang1","110F",1,"man",0,0,"PED_TYPE_GANG","VOICE_GNG_VLA1","VOICE_GNG_VLA2"}
gtapeds[115]={ "GANG8","STAT_GANG8","gang2","110F",1,"man",0,0,"PED_TYPE_GANG","VOICE_GNG_VLA3","VOICE_GNG_VLA4"}
gtapeds[116]={ "GANG8","STAT_GANG8","gang1","110F",1,"man",0,0,"PED_TYPE_GANG","VOICE_GNG_VLA5","VOICE_GNG_VLA5"}
gtapeds[117]={ "GANG7","STAT_GANG7","man","110F",1,"man",4,4,"PED_TYPE_GANG","VOICE_GNG_STRI1","VOICE_GNG_STRI5"}
gtapeds[118]={ "GANG7","STAT_GANG7","man","110F",1,"man",4,4,"PED_TYPE_GANG","VOICE_GNG_STRI1","VOICE_GNG_STRI1"}
gtapeds[120]={ "GANG7","STAT_GANG7","man","110F",1,"man",4,4,"PED_TYPE_GANG","VOICE_GNG_STRI1","VOICE_GNG_STRI1"}
gtapeds[121]={ "GANG5","STAT_GANG5","gang1","110F",1,"man",3,4,"PED_TYPE_GANG","VOICE_GNG_DNB1","VOICE_GNG_DNB1"}
gtapeds[122]={ "GANG5","STAT_GANG5","gang2","110F",1,"man",3,4,"PED_TYPE_GANG","VOICE_GNG_DNB2","VOICE_GNG_DNB2"}
gtapeds[123]={ "GANG5","STAT_GANG5","gang1","110F",1,"man",3,4,"PED_TYPE_GANG","VOICE_GNG_DNB3","VOICE_GNG_DNB5"}
gtapeds[124]={ "GANG6","STAT_GANG6","gang1","110F",1,"man",2,2,"PED_TYPE_GANG","VOICE_GNG_VMAFF1","VOICE_GNG_VMAFF2"}
gtapeds[125]={ "GANG6","STAT_GANG6","man","110F",1,"man",2,2,"PED_TYPE_GANG","VOICE_GNG_VMAFF3","VOICE_GNG_VMAFF3"}
gtapeds[126]={ "GANG6","STAT_GANG6","man","110F",1,"man",2,2,"PED_TYPE_GANG","VOICE_GNG_VMAFF4","VOICE_GNG_VMAFF4"}
gtapeds[127]={ "GANG6","STAT_GANG6","man","110F",1,"man",2,2,"PED_TYPE_GANG","VOICE_GNG_VMAFF5","VOICE_GNG_VMAFF5"}
	--END OF GANG PEDS
gtapeds[128]={ "CIVMALE","STAT_TOUGH_GUY","man","1FFF",0,"man",2,1,"PED_TYPE_GEN","VOICE_GEN_DNMYLC","VOICE_GEN_DNMYLC"}
gtapeds[129]={ "CIVFEMALE","STAT_COWARD","oldwoman","1003",0,"man",10,2,"PED_TYPE_GEN","VOICE_GEN_DNFOLC1","VOICE_GEN_DNFOLC1"}
gtapeds[130]={ "CIVFEMALE","STAT_COWARD","oldwoman","1003",0,"man",10,10,"PED_TYPE_GEN","VOICE_GEN_DNFOLC2","VOICE_GEN_DNFOLC2"}
gtapeds[131]={ "CIVFEMALE","STAT_COWARD","sexywoman","1FFF",1,"man",2,6,"PED_TYPE_GEN","VOICE_GEN_DNFYLC","VOICE_GEN_DNFYLC"}
gtapeds[132]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"man",1,10,"PED_TYPE_GEN","VOICE_GEN_DNMOLC1","VOICE_GEN_DNMOLC1"}
gtapeds[133]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"man",10,2,"PED_TYPE_GEN","VOICE_GEN_DNMOLC2","VOICE_GEN_DNMOLC2"}
gtapeds[134]={ "CIVMALE","STAT_TRAMP_MALE","oldman","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_SBMOTR1","VOICE_GEN_SBMOTR2"}
gtapeds[135]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_SWMOTR2","VOICE_GEN_SWMOTR2"}
gtapeds[136]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_SBMYTR3","VOICE_GEN_SBMYTR3"}
gtapeds[137]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_SWMOTR3","VOICE_GEN_SWMOTR3"}
gtapeds[138]={ "CIVFEMALE","STAT_COWARD","woman","1000",0,"beach",1,4,"PED_TYPE_GEN","VOICE_GEN_WFYBE","VOICE_GEN_WFYBE"}
gtapeds[139]={ "CIVFEMALE","STAT_BEACH_GIRL","woman","1000",0,"beach",1,4,"PED_TYPE_GEN","VOICE_GEN_BFYBE","VOICE_GEN_BFYBE"}
gtapeds[140]={ "CIVFEMALE","STAT_BEACH_GIRL","woman","1000",0,"beach",1,4,"PED_TYPE_GEN","VOICE_GEN_HFYBE","VOICE_GEN_HFYBE"}
gtapeds[141]={ "CIVFEMALE","STAT_SUIT_GIRL","busywoman","120C",0,"man",4,0,"PED_TYPE_GEN","VOICE_GEN_SOFYBU","VOICE_GEN_SOFYBU"}
gtapeds[142]={ "CIVMALE","STAT_STREET_GUY","man","1983",1,"man",8,5,"PED_TYPE_GEN","VOICE_GEN_SBMYST","VOICE_GEN_SBMYST"}
gtapeds[143]={ "CRIMINAL","STAT_CRIMINAL","gang1","110F",1,"man",5,0,"PED_TYPE_GEN","VOICE_GEN_SBMYCR","VOICE_GEN_SBMYCR"}
gtapeds[144]={ "CRIMINAL","STAT_CRIMINAL","gang2","110F",1,"man",8,3,"PED_TYPE_GEN","VOICE_GEN_BMYCG","VOICE_GEN_BMYCG"}
gtapeds[145]={ "CIVFEMALE","STAT_CRIMINAL","woman","110F",1,"man",4,3,"PED_TYPE_GEN","VOICE_GEN_WFYCRK","VOICE_GEN_WFYCRK"}
gtapeds[146]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",8,10,"PED_TYPE_GEN","VOICE_GEN_HMYCM","VOICE_GEN_HMYCM"}
gtapeds[147]={ "CIVMALE","STAT_COWARD","man","120C",1,"man",6,3,"PED_TYPE_GEN","VOICE_GEN_WMYBU","VOICE_GEN_WMYBU"}
gtapeds[148]={ "CIVFEMALE","STAT_SUIT_GIRL","busywoman","120C",1,"man",3,7,"PED_TYPE_GEN","VOICE_GEN_BFYBU","VOICE_GEN_BFYBU"}
gtapeds[150]={ "CIVFEMALE","STAT_SUIT_GIRL","busywoman","120C",1,"man",9,2,"PED_TYPE_GEN","VOICE_GEN_WFYBU","VOICE_GEN_WFYBU"}
gtapeds[151]={ "CIVFEMALE","STAT_TOUGH_GIRL","sexywoman","1983",1,"man",1,1,"PED_TYPE_GEN","VOICE_GEN_DWFYLC1","VOICE_GEN_DWFYLC2"}
gtapeds[152]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_WFYPRO","VOICE_GEN_WFYPRO"}
gtapeds[153]={ "CIVMALE","STAT_SUIT_GUY","man","170F",1,"man",6,2,"PED_TYPE_GEN","VOICE_GEN_WMYCONB","VOICE_GEN_WMYCONB"}
gtapeds[154]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_WMYBE","VOICE_GEN_WMYBE"}
gtapeds[155]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_WMYPIZZ","VOICE_GFD_WMYPIZZ"}
gtapeds[156]={ "CIVMALE","STAT_OLD_GUY","man","1000",0,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_BMOBAR","VOICE_GFD_BMOBAR"}
gtapeds[157]={ "CIVFEMALE","STAT_TOUGH_GIRL","woman","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_CWFYHB1","VOICE_GEN_CWFYHB1"}
gtapeds[158]={ "CIVMALE","STAT_OLD_GUY","man","1000",0,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_CWMOFR1","VOICE_GEN_CWMOFR1"}
gtapeds[159]={ "CIVMALE","STAT_OLD_GUY","man","110F",0,"man",1,1,"PED_TYPE_GEN","VOICE_GEN_CWMOHB1","VOICE_GEN_CWMOHB1"}
gtapeds[160]={ "CIVMALE","STAT_OLD_GUY","oldman","1983",0,"man",1,1,"PED_TYPE_GEN","VOICE_GEN_CWMOHB2","VOICE_GEN_CWMOHB2"}
gtapeds[161]={ "CIVMALE","STAT_TOUGH_GUY","man","1983",1,"man",1,6,"PED_TYPE_GEN","VOICE_GEN_CWMYFR","VOICE_GEN_CWMYFR"}
gtapeds[162]={ "CIVMALE","STAT_TOUGH_GUY","oldman","1983",0,"man",6,2,"PED_TYPE_GEN","VOICE_GEN_CWMYHB1","VOICE_GEN_CWMYHB1"}
gtapeds[163]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"man",5,8,"PED_TYPE_GEN","VOICE_GEN_BMYBOUN","VOICE_GEN_BMYBOUN"}
gtapeds[164]={ "CIVMALE","STAT_TOUGH_GUY","man","170F",1,"man",5,6,"PED_TYPE_GEN","VOICE_GEN_WMYBOUN","VOICE_GEN_WMYBOUN"}
gtapeds[165]={ "CIVMALE","STAT_SUIT_GUY","man","120C",0,"man",10,11,"PED_TYPE_GEN","VOICE_GEN_WMOMIB","VOICE_GEN_WMOMIB"}
gtapeds[166]={ "CIVMALE","STAT_SUIT_GUY","man","120C",0,"man",11,10,"PED_TYPE_GEN","VOICE_GEN_BMYMIB","VOICE_GEN_BMYMIB"}
gtapeds[167]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_WMYBELL","VOICE_GFD_WMYBELL"}
gtapeds[168]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_BMOST","VOICE_GEN_BMOST"}
gtapeds[169]={ "CIVFEMALE","STAT_COWARD","sexywoman","120C",1,"man",6,4,"PED_TYPE_GEN","VOICE_GEN_SOFYRI","VOICE_GEN_SOFYRI"}
gtapeds[170]={ "CIVMALE","STAT_COWARD","man","1983",0,"man",4,9,"PED_TYPE_GEN","VOICE_GEN_SOMYST","VOICE_GEN_SOMYST"}
gtapeds[171]={ "CIVMALE","STAT_SUIT_GUY","man","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_VWMYBJD","VOICE_GEN_VWMYBJD"}
gtapeds[172]={ "CIVFEMALE","STAT_SUIT_GIRL","busywoman","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_WFYCRP","VOICE_GEN_WFYCRP"}
gtapeds[173]={ "GANG4","STAT_GANG4","gang1","110F",1,"man",8,8,"PED_TYPE_GANG","VOICE_GNG_SFR1","VOICE_GNG_SFR2"}
gtapeds[174]={ "GANG4","STAT_GANG4","gang2","110F",1,"man",8,8,"PED_TYPE_GANG","VOICE_GNG_SFR3","VOICE_GNG_SFR4"}
gtapeds[175]={ "GANG4","STAT_GANG4","gang1","110F",1,"man",8,8,"PED_TYPE_GANG","VOICE_GNG_SFR5","VOICE_GNG_SFR5"}
gtapeds[176]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_BMYBARB","VOICE_GFD_BMYBARB"}
gtapeds[177]={ "CIVMALE","STAT_SENSIBLE_GUY","man","1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_WMYBARB","VOICE_GFD_WMYBARB"}
gtapeds[178]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","1000",1,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[179]={ "CIVMALE","STAT_TOUGH_GUY","man", "1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_WMYAMMO","VOICE_GFD_WMYAMMO"}
gtapeds[180]={ "CIVMALE","STAT_TOUGH_GUY","man", "1000",1,"man",1,4,"PED_TYPE_GFD","VOICE_GFD_BMYTATT","VOICE_GFD_BMYTATT"}
gtapeds[181]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",2,9,"PED_TYPE_GEN","VOICE_GEN_VWMYCR","VOICE_GEN_VWMYCR"}
gtapeds[182]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",0,"null",8,9,"PED_TYPE_GEN","VOICE_GEN_VBMOCD","VOICE_GEN_VBMOCD"}
gtapeds[183]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",5,0,"PED_TYPE_GEN","VOICE_GEN_VBMYCR","VOICE_GEN_VBMYCR"}
gtapeds[184]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",0,3,"PED_TYPE_GEN","VOICE_GEN_VHMYCR","VOICE_GEN_VHMYCR"}
gtapeds[185]={ "CIVMALE","STAT_STREET_GUY","man","120C",1,"null",7,4,"PED_TYPE_GEN","VOICE_GEN_SBMYRI","VOICE_GEN_SBMYRI"}
gtapeds[186]={ "CIVMALE","STAT_SUIT_GUY","man","120C",1,"null",4,0,"PED_TYPE_GEN","VOICE_GEN_SOMYRI","VOICE_GEN_SOMYRI"}
gtapeds[187]={ "CIVMALE","STAT_SUIT_GUY","man","120C",1,"man",4,4,"PED_TYPE_GEN","VOICE_GEN_SOMYBU","VOICE_GEN_SOMYBU"}
gtapeds[188]={ "CIVMALE","STAT_TOURIST","man","1983",1,"null",0,3,"PED_TYPE_GEN","VOICE_GEN_SWMYST","VOICE_GEN_SWMYST"}
gtapeds[189]={ "CIVMALE","STAT_STREET_GUY","man","1983",1,"null",6,2,"PED_TYPE_GEN","VOICE_GEN_WMYVA","VOICE_GEN_WMYVA"}
gtapeds[190]={ "CIVFEMALE","STAT_STREET_GIRL","busywoman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_BARBARA","VOICE_GFD_BARBARA"}
gtapeds[191]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_HELENA","VOICE_GFD_HELENA"}
gtapeds[192]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_MICHELLE","VOICE_GFD_MICHELLE"}
gtapeds[193]={ "CIVFEMALE","STAT_SUIT_GIRL","sexywoman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_KATIE","VOICE_GFD_KATIE"}
gtapeds[194]={ "CIVFEMALE","STAT_SUIT_GIRL","sexywoman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_MILLIE","VOICE_GFD_MILLIE"}
gtapeds[195]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",0,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_DENISE","VOICE_GFD_DENISE"}
gtapeds[196]={ "CIVFEMALE","STAT_COWARD","oldwoman","1003",0,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_CWFOFR","VOICE_GEN_CWFOFR"}
gtapeds[197]={ "CIVFEMALE","STAT_OLD_GIRL","oldwoman","1003",0,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_CWFOHB","VOICE_GEN_CWFOHB"}
gtapeds[198]={ "CIVFEMALE","STAT_TOUGH_GIRL","woman","1983",0,"null",2,1,"PED_TYPE_GEN","VOICE_GEN_CWFYFR1","VOICE_GEN_CWFYFR1"}
gtapeds[199]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1983",0,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_CWFYFR2","VOICE_GEN_CWFYFR2"}
gtapeds[200]={ "CIVMALE","STAT_TOUGH_GUY","man","1983",1,"null",1,1,"PED_TYPE_GEN","VOICE_GEN_CWMYHB2","VOICE_GEN_CWMYHB2"}
gtapeds[201]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1983",0,"null",6,2,"PED_TYPE_GEN","VOICE_GEN_DWFYLC2","VOICE_GEN_DWFYLC2"}
gtapeds[202]={ "CIVMALE","STAT_TOUGH_GUY","man","1983",1,"null",6,2,"PED_TYPE_GEN","VOICE_GEN_DWMYLC2","VOICE_GEN_DWMYLC2"}
gtapeds[203]={ "CIVMALE","STAT_TOUGH_GUY","man","1FFF",0,"null",0,7,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[204]={ "CIVMALE","STAT_TOUGH_GUY","man","1FFF",0,"null",2,0,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[205]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",1,"null",0,3,"PED_TYPE_GFD","VOICE_GFD_WFYBURG","VOICE_GFD_WFYBURG"}
gtapeds[206]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",0,"null",6,5,"PED_TYPE_GEN","VOICE_GEN_VWMYCD","VOICE_GEN_VWMYCD"}
gtapeds[207]={ "PROSTITUTE","STAT_PROSTITUTE","pro","1000",1,"man",1,4,"PED_TYPE_GEN","VOICE_GEN_VHFYPRO","VOICE_GEN_VHFYPRO"}

gtapeds[209]={ "CIVMALE","STAT_OLD_GUY","oldman","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_OMOST","VOICE_GEN_OMOST"}
gtapeds[210]={ "CIVMALE","STAT_OLD_GUY","oldman","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_OMOBOAT","VOICE_GEN_OMOBOAT"}
gtapeds[211]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",0,"null",1,4,"PED_TYPE_GFD","VOICE_GFD_WFYCLOT","VOICE_GFD_WFYCLOT"}
gtapeds[212]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_VWMOTR1","VOICE_GEN_VWMOTR1"}
gtapeds[213]={ "CIVMALE","STAT_TRAMP_MALE","man","1000",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_VWMOTR2","VOICE_GEN_VWMOTR2"}
gtapeds[214]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_VWFYWAI","VOICE_GEN_VWFYWAI"}
gtapeds[215]={ "CIVFEMALE","STAT_COWARD","woman","120C",0,"null",9,10,"PED_TYPE_GEN","VOICE_GEN_SBFORI","VOICE_GEN_SBFORI"}
gtapeds[216]={ "CIVFEMALE","STAT_SHOPPER","woman","120C",0,"null",4,6,"PED_TYPE_GEN","VOICE_GEN_SWFYRI","VOICE_GEN_SWFYRI"}
gtapeds[217]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",1,"null",1,4,"PED_TYPE_GFD","VOICE_GFD_WMYCLOT","VOICE_GFD_WMYCLOT"}
gtapeds[218]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1003",0,"null",8,9,"PED_TYPE_GEN","VOICE_GEN_SBFOST","VOICE_GEN_SBFOST"}
gtapeds[219]={ "CIVFEMALE","STAT_COWARD","woman","120C",0,"null",7,4,"PED_TYPE_GEN","VOICE_GEN_SBFYRI","VOICE_GEN_SBFYRI"}
gtapeds[220]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",0,"null",0,0,"PED_TYPE_GEN","VOICE_GEN_SBMOCD","VOICE_GEN_SBMOCD"}
gtapeds[221]={ "CIVMALE","STAT_SUIT_GUY","man","120C",1,"null",8,0,"PED_TYPE_GEN","VOICE_GEN_SBMORI","VOICE_GEN_SBMORI"}
gtapeds[222]={ "CIVMALE","STAT_STREET_GUY","man","1003",0,"null",0,8,"PED_TYPE_GEN","VOICE_GEN_SBMOST","VOICE_GEN_SBMOST"}
gtapeds[223]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"null",4,9,"PED_TYPE_GEN","VOICE_GEN_SHMYCR","VOICE_GEN_SHMYCR"}
gtapeds[224]={ "CIVFEMALE","STAT_OLD_GIRL","woman","120C",0,"null",1,10,"PED_TYPE_GEN","VOICE_GEN_SOFORI","VOICE_GEN_SOFORI"}
gtapeds[225]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1003",0,"null",9,10,"PED_TYPE_GEN","VOICE_GEN_SOFOST","VOICE_GEN_SOFOST"}
gtapeds[226]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1003",1,"null",4,7,"PED_TYPE_GEN","VOICE_GEN_SOFYST","VOICE_GEN_SOFYST"}
gtapeds[227]={ "CIVMALE","STAT_SUIT_GUY","man","120C",0,"null",10,10,"PED_TYPE_GEN","VOICE_GEN_SOMOBU","VOICE_GEN_SOMOBU"}
gtapeds[228]={ "CIVMALE","STAT_COWARD","man","120C",0,"null",9,3,"PED_TYPE_GEN","VOICE_GEN_SOMORI","VOICE_GEN_SOMORI"}
gtapeds[229]={ "CIVMALE","STAT_STREET_GUY","man","1003",0,"null",9,2,"PED_TYPE_GEN","VOICE_GEN_SOMOST","VOICE_GEN_SOMOST"}
gtapeds[230]={ "CIVMALE","STAT_TRAMP_MALE","man", "1000",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_SWMOTR5","VOICE_GEN_SWMOTR5"}
gtapeds[231]={ "CIVFEMALE","STAT_COWARD","woman","120C",0,"null",10,1,"PED_TYPE_GEN","VOICE_GEN_SWFORI","VOICE_GEN_SWFORI"}
gtapeds[232]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1003",0,"null",7,10,"PED_TYPE_GEN","VOICE_GEN_SWFOST","VOICE_GEN_SWFOST"}
gtapeds[233]={  "CIVFEMALE","STAT_STREET_GIRL","woman","1983",1,"null",7,3,"PED_TYPE_GEN","VOICE_GEN_SWFYST","VOICE_GEN_SWFYST"}
gtapeds[234]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",0,"null",2,9,"PED_TYPE_GEN","VOICE_GEN_SWMOCD","VOICE_GEN_SWMOCD"}
gtapeds[235]={ "CIVMALE","STAT_SUIT_GUY","man","120C",0,"null",7,0,"PED_TYPE_GEN","VOICE_GEN_SWMORI","VOICE_GEN_SWMORI"}
gtapeds[236]={ "CIVMALE","STAT_STREET_GUY","man","1983",0,"null",2,1,"PED_TYPE_GEN","VOICE_GEN_SWMOST","VOICE_GEN_SWMOST"}
gtapeds[237]={ "PROSTITUTE","STAT_PROSTITUTE","pro", "1000",1,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_SHFYPRO","VOICE_GEN_SHFYPRO"}
gtapeds[238]={ "PROSTITUTE","STAT_PROSTITUTE","pro", "1000",1,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_SBFYPRO","VOICE_GEN_SBFYPRO"}
gtapeds[239]={ "CIVMALE","STAT_TRAMP_MALE","man", "1000",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_SWMOTR4","VOICE_GEN_SWMOTR4"}
gtapeds[240]={ "CIVMALE","STAT_COWARD","man","120C",1,"null",4,4,"PED_TYPE_GEN","VOICE_GEN_SWMYRI","VOICE_GEN_SWMYRI"}
gtapeds[241]={ "CIVMALE","STAT_STREET_GUY","man","1983", 1,"null", 0,5,"PED_TYPE_GEN","VOICE_GEN_SMYST","VOICE_GEN_SMYST"}
gtapeds[242]={ "CIVMALE","STAT_STREET_GUY","man","130C", 1,"null", 0,8,"PED_TYPE_GEN","VOICE_GEN_SMYST2","VOICE_GEN_SMYST2"}
gtapeds[243]={ "PROSTITUTE","STAT_PROSTITUTE","pro", "1000", 1,"null", 1,4,"PED_TYPE_GEN","VOICE_GEN_SFYPRO","VOICE_GEN_SFYPRO"}
gtapeds[244]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman", "1000", 1,"null", 1,4,"PED_TYPE_GEN","VOICE_GEN_VBFYST2","VOICE_GEN_VBFYST2"}
gtapeds[245]={ "PROSTITUTE","STAT_PROSTITUTE","pro", "1000", 1,"null", 1,4,"PED_TYPE_GEN","VOICE_GEN_VBFYPRO","VOICE_GEN_VBFYPRO"}
gtapeds[246]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman", "1000", 1,"null", 1,4,"PED_TYPE_GEN","VOICE_GEN_VHFYST3","VOICE_GEN_VHFYST3"}
gtapeds[247]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",5,2,"PED_TYPE_GEN","VOICE_GEN_BIKERA","VOICE_GEN_BIKERA"}
gtapeds[248]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",2,5,"PED_TYPE_GEN","VOICE_GEN_BIKERB","VOICE_GEN_BIKERB"}
gtapeds[249]={ "CIVMALE","STAT_STREET_GUY","man","130C",1,"null",3,7,"PED_TYPE_GEN","VOICE_GEN_BMYPI","VOICE_GEN_BMYPI"}
gtapeds[250]={ "CRIMINAL","STAT_CRIMINAL","man","110F",1,"man",6,0,"PED_TYPE_GEN","VOICE_GEN_SWMYCR","VOICE_GEN_SWMYCR"}
gtapeds[251]={ "CIVFEMALE","STAT_BEACH_GIRL","woman","1000",0,"beach",1,4,"PED_TYPE_GEN","VOICE_GEN_WFYLG","VOICE_GEN_WFYLG"}
gtapeds[252]={ "CIVMALE","STAT_STREET_GUY","man","1983", 1,"null", 9,7,"PED_TYPE_GEN","VOICE_GEN_WMYVA","VOICE_GEN_WMYVA"}
gtapeds[253]={ "CIVMALE","STAT_OLD_GUY","man","1003",0,"null",8,0,"PED_TYPE_GEN","VOICE_GEN_BMOSEC","VOICE_GEN_BMOSEC"}
gtapeds[254]={ "CIVMALE","STAT_CRIMINAL","man", 0,1,"null",6,2,"PED_TYPE_GEN","VOICE_GEN_BIKDRUG","VOICE_GEN_BIKDRUG"}
gtapeds[255]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",7,0,"PED_TYPE_GEN","VOICE_GEN_WMYCH","VOICE_GEN_WMYCH"}
gtapeds[256]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","130C",0,"null",3,7,"PED_TYPE_GEN","VOICE_GEN_SBFYST","VOICE_GEN_SBFYST"}
gtapeds[257]={ "CIVFEMALE","STAT_STREET_GIRL","sexywoman","130C",0,"null",5,9,"PED_TYPE_GEN","VOICE_GEN_SWFYST","VOICE_GEN_SWFYST"} 
gtapeds[258]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",7,0,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[259]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",7,0,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[260]={ "CIVMALE","STAT_TOUGH_GUY","man", 0,1,"null",7,0,"PED_TYPE_GEN","VOICE_GEN_BMYCON","VOICE_GEN_BMYCON"}
gtapeds[261]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",1,"null",6,1,"PED_TYPE_GEN","VOICE_GEN_WMYCD1","VOICE_GEN_WMYCD1"}
gtapeds[262]={ "CIVMALE","STAT_TAXIDRIVER","man","0040",0,"null",8,0,"PED_TYPE_GEN","VOICE_GEN_BMOCD","VOICE_GEN_BMOCD"}
gtapeds[263]={ "CIVFEMALE","STAT_STREET_GIRL","woman","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_VWFYWAI","VOICE_GEN_VWFYWAI"}
gtapeds[264]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}

--这里丢失了一些特殊NPC的属性，暂时用模板代替
---ADD NEW PEDS HERE
gtapeds[265]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[266]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[267]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[268]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[269]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[270]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[271]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[272]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
---END OF NEW PEDS

-- cop peds 
									
-- other special peds

gtapeds[274]={ "MEDIC","STAT_MEDIC","swat","1FFF", 0,"medic", 9,9,"PED_TYPE_EMG","VOICE_EMG_EMT1","VOICE_EMG_EMT5"}
gtapeds[275]={ "MEDIC","STAT_MEDIC","swat","1FFF", 0,"medic", 9,9,"PED_TYPE_EMG","VOICE_EMG_EMT1","VOICE_EMG_EMT5"}
gtapeds[276]={ "MEDIC","STAT_MEDIC","swat","1FFF", 0,"medic", 9,9,"PED_TYPE_EMG","VOICE_EMG_EMT1","VOICE_EMG_EMT5"}
						
gtapeds[277]={ "FIREMAN","STAT_FIREMAN","swat","1FFF", 0,"null", 9,9,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[278]={ "FIREMAN","STAT_FIREMAN","swat","1FFF", 0,"null", 9,9,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}			
gtapeds[279]={ "FIREMAN","STAT_FIREMAN","swat","1FFF", 0,"null", 9,9,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}

-- cop peds 
gtapeds[280]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_LAPD1","VOICE_EMG_LAPD8"}					
gtapeds[281]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_SFPD1","VOICE_EMG_SFPD5"}							
gtapeds[282]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_LVPD1","VOICE_EMG_LVPD5"}						
gtapeds[283]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_RCOP1","VOICE_EMG_RCOP4"}
gtapeds[284]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_MCOP1","VOICE_EMG_MCOP6"}
									
-- other special peds

gtapeds[285]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_SWAT1","VOICE_EMG_SWAT6"}
gtapeds[286]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_FBI2","VOICE_EMG_FBI6"}						
gtapeds[287]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_ARMY1","VOICE_EMG_ARMY3"}								
gtapeds[288]={ "COP","STAT_COP","swat","1FFF", 0,"null", 9,9,"PED_TYPE_EMG","VOICE_EMG_RCOP1","VOICE_EMG_RCOP4"}		

-- special character slots
gtapeds[290]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[291]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[292]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[293]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[294]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[295]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0} 
gtapeds[296]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[297]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[298]={ "CIVMALE","STAT_STD_MISSION","man","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}
gtapeds[299]={ "CIVMALE","STAT_STD_MISSION","player","1FFF", 0,"null", 9,9,"PED_TYPE_SPC",0 ,0}

--这里丢失了一些特殊NPC的属性，暂时用模板代替
---300-312
gtapeds[300]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[301]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[302]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[303]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[304]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[305]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[306]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[307]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[308]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[309]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[310]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[311]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}
gtapeds[312]={ "CIVMALE","STAT_STREET_GUY","man","1FFF",0,"null",1,4,"PED_TYPE_GEN","VOICE_GEN_NOVOICE","VOICE_GEN_NOVOICE"}

--outputDebugString("GTAWalkingStyle:"..tostring(inspect(GTAWalkingStyle)));
outputDebugString("gtapeds:"..#gtapeds);

--各种皮肤
--raiderSkin = {108,109,181,247,248,242,293} -- 突袭者
--meatSkin = {252,154,97} --肉
--slaveSkin = {63,145,146,213,238,257,310} -- 奴隶
peds = {}
--TODO 从gtapeds中读取部分信息
for k,v in pairs(gtapeds)do
	peds[k] = {}
	peds[k].walkingstyle = GTAWalkingStyle[gtapeds[k][3]] -- 读取行走方式
end

--人工设置信息