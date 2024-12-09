/*
https://www.wowhead.com/tbc/object=176584/dreamfoil - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=176584

https://www.wowhead.com/tbc/object=176583/golden-sansam - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=176583

https://www.wowhead.com/tbc/object=176586/mountain-silversage - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=176586

https://www.wowhead.com/tbc/object=183046/blindweed - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=183046

https://www.wowhead.com/tbc/object=2041/liferoot - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=2041

https://www.wowhead.com/tbc/object=181372/hellfire-spineleaf - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=181372

https://www.wowhead.com/tbc/object=181270/felweed - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=181270
https://www.wowhead.com/tbc/object=183044/felweed -- zangarmarsh

https://www.wowhead.com/tbc/object=181271/dreaming-glory - http://localhost:3000/world/gameobject?map=530&zone=3483&entry=181271
https://www.wowhead.com/tbc/object=183045/dreaming-glory -- zangarmarsh

https://www.wowhead.com/tbc/object=181275/ragveil - instances
https://www.wowhead.com/tbc/object=183043/ragveil - zangarmarsh - http://localhost:3000/world/gameobject?map=530&zone=3521&entry=183043
ragveil and flame cap share spawns
https://www.wowhead.com/tbc/object=181276/flame-cap - zangarmarsh - http://localhost:3000/world/gameobject?map=530&zone=3521&entry=181276

https://www.wowhead.com/tbc/object=181277/terocone - terokkar - http://localhost:3000/world/gameobject?map=530&zone=3519&entry=181277
shadowmoon - http://localhost:3000/world/gameobject?map=530&zone=3520&entry=181277

https://www.wowhead.com/tbc/object=181280/nightmare-vine - shadowmoon valley regular groupings; hfp, bem, quel danas static spawns
http://localhost:3000/world/gameobject?map=530&zone=3520&entry=181280

https://www.wowhead.com/tbc/object=181279/netherbloom - netherstorm - http://localhost:3000/world/gameobject?map=530&zone=3523&entry=181279

https://www.wowhead.com/tbc/object=181281/mana-thistle - terokkar, shadowmoon, bem, nagrand, netherstorm regular groupings, quel danas static spawns

https://www.wowhead.com/tbc/object=185881/netherdust-bush

1329 deleted

initial state in outland (excludes quel danas):

108 - terocone - 		124
107 - nightmare vine - 	112
92 - netherbloom -		121
83 - dreamfoil			102
102 - golden sansam		127
42 - mountain silversage 57
34 - blindweed			 59
4 - liferoot			  9
98 - hellfire spineleaf	 98
433 + 69 - felweed		599 + 117
300 + 17 - dreaming glory 435 + 57
116 - ragveil			174
86 - netherdust bush	86
*/
/*
select count(*) from gameobject where id  = 181277 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- terocone
select count(*) from gameobject where id  = 181280 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- nightmare-vine
select count(*) from gameobject where id  = 181279 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- netherbloom

select count(*) from gameobject where id  = 176584 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- dreamfoil
select count(*) from gameobject where id  = 176583 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- golden sansam
select count(*) from gameobject where id  = 176586 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- mountain silversage
select count(*) from gameobject where id  = 183046 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- blindweed
select count(*) from gameobject where id  = 2041 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- liferoot
select count(*) from gameobject where id  = 181372 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- hellfire spineleaf
select count(*) from gameobject where id  = 181270 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- felweed - generic
select count(*) from gameobject where id  = 183044 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- felweed - zangar
select count(*) from gameobject a join gameobject_spawn_entry b on a.guid=b.guid where entry IN(183043) AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- ragveil
select count(*) from gameobject where id  = 185881 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- netherdust bush
select count(*) from gameobject where id  = 181271 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- dreaming glory - generic
select count(*) from gameobject where id  = 183045 AND map=530 AND position_x NOT BETWEEN 11400 AND 13100; -- dreaming glory - zangar
*/
-- wave 1
DELETE FROM gameobject WHERE Id IN(181277,181280,181279) AND map=530 AND position_x NOT BETWEEN 11400 AND 13100;
-- wave 2
DELETE FROM gameobject WHERE Id IN(176583,176586,183046,2041,181372,181270,183044,181271,183045,183043,181276,176584) AND map=530 AND position_x NOT BETWEEN 11400 AND 13100;
DELETE FROM gameobject WHERE guid IN(5470003,5470004,5470005,5470006,5470046,5470047,5470048,5470049);

DELETE FROM pool_template WHERE entry IN (10802,10803,10804,10805,10806,10807,10808,10809,10810,10811,10812,10813,10814,10815,10816,10817,10818,10819,10820,10821,10822,10823,10824,10825,10826,10827,10828,10829,10830,10831,10832,10833,10834,10835,10836,10837,10838,10839,10840,10841,10842,10843,10844,10845,10846,10847,10848,10849,10850,10851,10852,10853,10854,10855,10856,10857,10858,10859,10860,10861,10862,10863,10864,10865,10866,10867,10868,10869,10870,10871,10872,10873,10874,10875,10876,10877,10878,10879,10880,10881,10882,10883,10884,10885,10886,10887,10888,10889,10890,10891,10892,10893,10894,10895,10896,10897,10898,10899,10900,10901,10902,10903,10904,10905,10906,10907,10908,10909,10910,10911,10912,10913,10914,10915,10916,10917,10918,10919,10920,10921,10922,10923,10924,10925,10926,10927,10928,10929,10930,10931,10932,10933,10934,10935,10936,10937,10938,10939,10940,10941,10942,10943,10944,10945,10946,10947,10948,10949,10950,10951,10952,10953,10954,10955,10956,10957,10958,10959,10960,10961,10962,10963,10964,10965,10966,10967,10968,10969,10970,10971,10972,10973,10974,10975,10976,10977,10978,10979,10980,10981,10982,10983,10984,10985,10986,10987,10988,10989,10990,10991,10992,10993,10994,10995,10996,10997,10998,10999,11000,11001,11002,11003,11004,11005,11006,11007,11008,11009,11010,11011,11012,11013,11014,11015,11016,11017,11018,11019,11020,11021,11022,11023,11024,11025,11026,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,11051,11052,11053,11054,11055,11056,11057,11058,11059,11060,11061,11062,11063,11064,11065,11066,11067,11068,11069,11070,11071,11072,11073,11074,11075,11076,11077,11078,11079,11080,11081,11082,11083,11084,11085,11086,11087,11088,11089,11090,11091,11092,11093,11094,11095,11096,11097,11098,11099,11100,11101,11102,11103,11104,11105,11106,11107,11108,11109,11110,11111,11112,11113,11114,11115,11116,11117,11118,11119,11120,11121,11122,11123,11124,11125,11126,11127,11128,11129,11130,11131,11132,11133,11134,11135,11136,11137,11138,11139,11140,11141,11142,11143,11144,11145,11146,11147,11148,11149,11150,11151,11152,11153,11154,11155,11156,11157,11158,11159,11160,11161,11162,11163,11164,11165,11166,11167,11168,11169,11170,11171,11172,11173,11174,11175,11176,11177,11178,11179,11180,11181,11182,11183,11184,11185,11186,11187,11188,11189,11190,11191,11192,11193,11194,11195,11196,11197,11198,11199,11200,11201,11202,11203,11204,11205,11206,11207,11208,11209,11210,11211,11212,11213,11214,11215,11216,11217,11218,11219,11220,11221,11222,11223,11224,11225,11226,11227,11228,11229,11230,11231,11232,11233,11234,11235,11236,11237,11238,11239,11240,11241,11242,11243,11244,11245,11246,11247,11248,11249,11250,11251,11252,11253,11254,11255,11256,11257,11258,11259,11260,11261,11262,11263,11264,11265,11266,11267,11268,11269,11270,11271,11272,11273,11274,11275,11276,11277,11278,11279,11280,11281,11282,11283,11284,11285,11286,11287,11288,11289,11290,11291,11292,11293,11294,11295,11296,11297,11298,11299,11300,11301,11302,11303,11304,11305,11306,11307,11308,11309,11310,11311,11312,11313,11314,11315,11316,11317,11318,11319,11320,11321,11322,11323,11324,11325,11326,11327,11328,11329,11330,11331,11332,11333,11334,11335,11336,11337,11338,11339,11340,11341,11342,11343,11344,11345,11346,11347,11348,11349,11350,11351,11352,11353,11354,11355,11356,11357,11358,11359,11360,11361,11362,11363,11364,11365,11366,11367,11368,11369,11370,11371,11372,11373,11374,11375,11376,11377,11378,11379,11380,11381,11382,11383,11384,11385,11386,11387,11388,11389,11390,11391,11392,11393,11394,11395,11396,11397,11398,11399,11400,11401,11402,11403,11404,11405,11406,11407,11408,11409,11410,11411,11412,11413,11414,11415,11416,11417,11418,11419,11420,11421,11422,11423,11424,11425,11426,11427,11428,11429,11430,11431,11432,11433,11434,11435,11436,11437,11438,11439,11440,11441,11442,11443,11444,11445,11446,11447,11448,11449,11450,11451,11452,11453,11454,11455,11456,11457,11458,11459,11460,11461,11462,11463,11464,11465,11466,11467,11468,11469,11470,11471,11472,11473,11474,11475,11476,11477,11478,11479,11480,11481,11482,11483,11484,11485,11486,11487,11488,11489,11490,11491,11492,11493,11494,11495,11496,11497,11498,11499,11500,11501,11502,11503,11504,11505,11506,11507,11508,11509,11510,11511,11512,11513,11514,11515,11516,11517,11518,11519,11520,11521,11522,11523,11524,11525,11526,11527,11528,11529,11530,11531,11532,11533,11534,11535,11536,11537,11538,11539,11540,11541,11542,11543,11544,11545,11546,11547,11548,11549,11550,11551,11552,11553,11554,11555,11556,11557,11558,11559,11560,11561,11562,11563,11564,11565,11566,11567,11568,11569,11570,11571,11572,11573,11574,11575,11576,11577,11578,11579,11580,11581,11582,11583,11584,11585,11586,11587,11588,11589,11590,11591,11592,11593,11594,11595,11596,11597,11598,11599,11600,11601,11602,11603,11604,11605,11606,11607,11608,11609,11610,11611,11612,12104,12105,12106,12107,12108,12109,12110,12111,12112,12113,12114,12115,12116,12117,12118,12119,12120,12121,12122,12123,12124,12125,12126,12127,12128,12129,12130,12131,12132,12133,12134,12135,12136,12137,12138,12139,12140,12141,12142,12143,12144,12145,12146,12147,12148,12149,12150,12151,12152,12153,12154,12155,12156,12157,12158,12159,12160,12161,12162,12163,12164,12165,12166,12167,12168,12169,12170,12171,12172,12173,12174,12175,12176,12177,12178,12179,12180,12181,12182,12183,12184,12185,12186,12187,12188,12189,12190,12191,12192,12193,12194,12195,12196,12197,12198,12199,12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211,12212,12213,12214,12215,12216,12217,12218,12219,12220,12221,12222,12223,12224,12225,12226,12227,12228,12229,12230,12231,12232,12233,12234,12235,12236,12237,12238,12239,12240,12241,12242,12243,12244,12245,12246,12247,12248,12249,12250,12251,12252,12253,12254,12255,12256,12257,12258,12259,12260,12261,12262,12263,12264,12600,12601,12602,12603,12604,12605,12606,12607,12608,12609,12610,12611,12612,12613,12614,12615,12616,12617,12618,12619,12620,12621,12622,12623,12624,12625,12626,12627,12628,12629,12630,12631,12632,12633,12634,12635,12636,12637,12638,12639,12640,12641,12642,12643,12644,12645,12646,12647,12648,12649,12650,12651,12652,12653,12654,12655,12656,12657,12658,12659,12660,12661,12662,12663,12664,12665,12666,12667,12668,12669,12670,12671,12672,12673,12674,12675,12676,12677,12678,12679,12680,12681,12682,12683,12684,12685,12686,12687,12688,12689,12690,12691,12692,12693,12694,12695,12696,12697,12698,12699,12700,12701,12702,12703,12704,12705,12706,12707,12708,12709,12710,12711,12712,12713,12714,12715,12716,12717,12718,12719,12720,12721,12722,12723,12724,12725,12726,12727,12728,12729,12730,12731,12732,12733,12734,12735,12736,12737,12738,12739,12740,12741,12742,12743,12744,12745,12746,12747,12748,12749,12750,12751,12752,12753,12754,12755,12756,12757,12758,12759,12760,12761,12762,12763,12764,12765,12766,12767,12768,12769,12770,12771,12772,12773,12774,12775,12776,12777,12778,12779,12780,12781,12782,12783,12784,12785,12786,12787,12788,12789,12790,12791,12792,12793,12794,12795,12796,12797,12798,12799,12800,12801,12802,12803,12804,12805,12806,12807,12808,12809,12810,12811,12812,12813,12814,12815,12816,12817,12818,12819,12820,12821,12822,12823,12824,12825,12826,12827,12828,12829,12830,12831,12832,12833,12834,12835,12836,12837,12838,12839,12840,12841,12842,12843,12844,12845,12846,12847,12848,12849,12850,12851,12852,12853,12854,12855,12856,12857,12858,12859,12860,12861,12862,12863,12864,12865,12866,12867,12868,13043,13044,13045,13046,13047,13048,13049,13052,13053,13054,13055,16497,16503,16512,16513,16514);
DELETE FROM pool_gameobject WHERE guid=21 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=2730 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5519 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=20364 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=20944 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=20949 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=20953 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=28312 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=28313 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=28319 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=30408 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=30417 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=30544 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=30552 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=32479 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=32629 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=32729 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=32744 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=32824 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=33440 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=33835 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=33847 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=34029 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42178 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42179 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42180 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42181 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42199 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42200 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42201 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42202 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42215 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42216 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42217 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42218 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42227 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42228 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42235 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42236 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42237 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42238 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42239 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42240 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42241 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42243 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42244 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42245 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42246 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42247 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42248 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42295 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42296 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42298 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42346 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=42430 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63534 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63556 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63558 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63562 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63563 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63564 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63566 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63572 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63574 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63575 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63576 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63577 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63578 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63581 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63583 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63586 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63589 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63595 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63596 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63597 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63614 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63622 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63630 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63631 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63639 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63640 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63641 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63642 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=63646 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63647 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63648 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63655 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63660 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63666 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63669 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63675 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63677 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63678 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63679 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=63680 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65264 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65265 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=65266 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=65267 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=65268 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=65271 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65273 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65276 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65278 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=65279 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86391 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=86396 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86398 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=86399 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86400 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86402 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=86427 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86429 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86430 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86431 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86433 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86434 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86455 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86457 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86458 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86459 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86460 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86461 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=86462 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87056 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=87299 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=87300 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=87301 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87302 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=87303 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87307 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87496 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87498 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87505 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87663 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87667 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87670 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87671 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=87672 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=105328 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=105329 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105330 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105331 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105332 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105333 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105334 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105335 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105336 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105337 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105338 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105339 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105340 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=105357 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=105358 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=105359 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=105360 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=110223 AND pool_entry=8782;
DELETE FROM pool_gameobject WHERE guid=110233 AND pool_entry=8784;
DELETE FROM pool_gameobject WHERE guid=110268 AND pool_entry=8791;
DELETE FROM pool_gameobject WHERE guid=110273 AND pool_entry=8792;
DELETE FROM pool_gameobject WHERE guid=110288 AND pool_entry=8795;
DELETE FROM pool_gameobject WHERE guid=110293 AND pool_entry=8796;
DELETE FROM pool_gameobject WHERE guid=110303 AND pool_entry=8798;
DELETE FROM pool_gameobject WHERE guid=110308 AND pool_entry=8799;
DELETE FROM pool_gameobject WHERE guid=110318 AND pool_entry=8801;
DELETE FROM pool_gameobject WHERE guid=110323 AND pool_entry=8802;
DELETE FROM pool_gameobject WHERE guid=110333 AND pool_entry=8804;
DELETE FROM pool_gameobject WHERE guid=110348 AND pool_entry=8807;
DELETE FROM pool_gameobject WHERE guid=110353 AND pool_entry=8808;
DELETE FROM pool_gameobject WHERE guid=110358 AND pool_entry=8809;
DELETE FROM pool_gameobject WHERE guid=110383 AND pool_entry=8814;
DELETE FROM pool_gameobject WHERE guid=110423 AND pool_entry=8822;
DELETE FROM pool_gameobject WHERE guid=110428 AND pool_entry=8823;
DELETE FROM pool_gameobject WHERE guid=110473 AND pool_entry=8832;
DELETE FROM pool_gameobject WHERE guid=110493 AND pool_entry=8836;
DELETE FROM pool_gameobject WHERE guid=110498 AND pool_entry=8837;
DELETE FROM pool_gameobject WHERE guid=110508 AND pool_entry=8839;
DELETE FROM pool_gameobject WHERE guid=110513 AND pool_entry=8840;
DELETE FROM pool_gameobject WHERE guid=110518 AND pool_entry=8841;
DELETE FROM pool_gameobject WHERE guid=110528 AND pool_entry=8843;
DELETE FROM pool_gameobject WHERE guid=110533 AND pool_entry=8844;
DELETE FROM pool_gameobject WHERE guid=110538 AND pool_entry=8845;
DELETE FROM pool_gameobject WHERE guid=110543 AND pool_entry=8846;
DELETE FROM pool_gameobject WHERE guid=110578 AND pool_entry=8853;
DELETE FROM pool_gameobject WHERE guid=110583 AND pool_entry=8854;
DELETE FROM pool_gameobject WHERE guid=110593 AND pool_entry=8856;
DELETE FROM pool_gameobject WHERE guid=110658 AND pool_entry=8869;
DELETE FROM pool_gameobject WHERE guid=110663 AND pool_entry=8870;
DELETE FROM pool_gameobject WHERE guid=110673 AND pool_entry=8872;
DELETE FROM pool_gameobject WHERE guid=110698 AND pool_entry=8877;
DELETE FROM pool_gameobject WHERE guid=110713 AND pool_entry=8880;
DELETE FROM pool_gameobject WHERE guid=110723 AND pool_entry=8882;
DELETE FROM pool_gameobject WHERE guid=110733 AND pool_entry=8884;
DELETE FROM pool_gameobject WHERE guid=110758 AND pool_entry=8889;
DELETE FROM pool_gameobject WHERE guid=110763 AND pool_entry=8890;
DELETE FROM pool_gameobject WHERE guid=110798 AND pool_entry=8897;
DELETE FROM pool_gameobject WHERE guid=110818 AND pool_entry=8901;
DELETE FROM pool_gameobject WHERE guid=110828 AND pool_entry=8903;
DELETE FROM pool_gameobject WHERE guid=110833 AND pool_entry=8904;
DELETE FROM pool_gameobject WHERE guid=110838 AND pool_entry=8905;
DELETE FROM pool_gameobject WHERE guid=110853 AND pool_entry=8908;
DELETE FROM pool_gameobject WHERE guid=110873 AND pool_entry=8912;
DELETE FROM pool_gameobject WHERE guid=110878 AND pool_entry=8913;
DELETE FROM pool_gameobject WHERE guid=110883 AND pool_entry=8914;
DELETE FROM pool_gameobject WHERE guid=133800 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=133801 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=133802 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=133805 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=133806 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=193377 AND pool_entry=12264;
DELETE FROM pool_gameobject WHERE guid=193378 AND pool_entry=12264;
DELETE FROM pool_gameobject WHERE guid=193379 AND pool_entry=12264;
DELETE FROM pool_gameobject WHERE guid=193380 AND pool_entry=12264;
DELETE FROM pool_gameobject WHERE guid=193381 AND pool_entry=12263;
DELETE FROM pool_gameobject WHERE guid=193382 AND pool_entry=12263;
DELETE FROM pool_gameobject WHERE guid=193383 AND pool_entry=12263;
DELETE FROM pool_gameobject WHERE guid=193384 AND pool_entry=12263;
DELETE FROM pool_gameobject WHERE guid=193385 AND pool_entry=12262;
DELETE FROM pool_gameobject WHERE guid=193386 AND pool_entry=12262;
DELETE FROM pool_gameobject WHERE guid=193387 AND pool_entry=12262;
DELETE FROM pool_gameobject WHERE guid=193388 AND pool_entry=12262;
DELETE FROM pool_gameobject WHERE guid=193389 AND pool_entry=12261;
DELETE FROM pool_gameobject WHERE guid=193390 AND pool_entry=12261;
DELETE FROM pool_gameobject WHERE guid=193391 AND pool_entry=12261;
DELETE FROM pool_gameobject WHERE guid=193392 AND pool_entry=12261;
DELETE FROM pool_gameobject WHERE guid=193393 AND pool_entry=12260;
DELETE FROM pool_gameobject WHERE guid=193394 AND pool_entry=12260;
DELETE FROM pool_gameobject WHERE guid=193395 AND pool_entry=12260;
DELETE FROM pool_gameobject WHERE guid=193396 AND pool_entry=12260;
DELETE FROM pool_gameobject WHERE guid=193397 AND pool_entry=12259;
DELETE FROM pool_gameobject WHERE guid=193398 AND pool_entry=12259;
DELETE FROM pool_gameobject WHERE guid=193399 AND pool_entry=12259;
DELETE FROM pool_gameobject WHERE guid=193400 AND pool_entry=12259;
DELETE FROM pool_gameobject WHERE guid=193401 AND pool_entry=12258;
DELETE FROM pool_gameobject WHERE guid=193402 AND pool_entry=12258;
DELETE FROM pool_gameobject WHERE guid=193403 AND pool_entry=12258;
DELETE FROM pool_gameobject WHERE guid=193404 AND pool_entry=12258;
DELETE FROM pool_gameobject WHERE guid=193405 AND pool_entry=12257;
DELETE FROM pool_gameobject WHERE guid=193406 AND pool_entry=12257;
DELETE FROM pool_gameobject WHERE guid=193407 AND pool_entry=12257;
DELETE FROM pool_gameobject WHERE guid=193408 AND pool_entry=12257;
DELETE FROM pool_gameobject WHERE guid=193409 AND pool_entry=12256;
DELETE FROM pool_gameobject WHERE guid=193410 AND pool_entry=12256;
DELETE FROM pool_gameobject WHERE guid=193411 AND pool_entry=12256;
DELETE FROM pool_gameobject WHERE guid=193412 AND pool_entry=12256;
DELETE FROM pool_gameobject WHERE guid=193413 AND pool_entry=12255;
DELETE FROM pool_gameobject WHERE guid=193414 AND pool_entry=12255;
DELETE FROM pool_gameobject WHERE guid=193415 AND pool_entry=12255;
DELETE FROM pool_gameobject WHERE guid=193416 AND pool_entry=12255;
DELETE FROM pool_gameobject WHERE guid=193417 AND pool_entry=12254;
DELETE FROM pool_gameobject WHERE guid=193418 AND pool_entry=12254;
DELETE FROM pool_gameobject WHERE guid=193419 AND pool_entry=12254;
DELETE FROM pool_gameobject WHERE guid=193420 AND pool_entry=12254;
DELETE FROM pool_gameobject WHERE guid=193421 AND pool_entry=12253;
DELETE FROM pool_gameobject WHERE guid=193422 AND pool_entry=12253;
DELETE FROM pool_gameobject WHERE guid=193423 AND pool_entry=12253;
DELETE FROM pool_gameobject WHERE guid=193424 AND pool_entry=12253;
DELETE FROM pool_gameobject WHERE guid=193425 AND pool_entry=12252;
DELETE FROM pool_gameobject WHERE guid=193426 AND pool_entry=12252;
DELETE FROM pool_gameobject WHERE guid=193427 AND pool_entry=12252;
DELETE FROM pool_gameobject WHERE guid=193428 AND pool_entry=12252;
DELETE FROM pool_gameobject WHERE guid=193429 AND pool_entry=12251;
DELETE FROM pool_gameobject WHERE guid=193430 AND pool_entry=12251;
DELETE FROM pool_gameobject WHERE guid=193431 AND pool_entry=12251;
DELETE FROM pool_gameobject WHERE guid=193432 AND pool_entry=12251;
DELETE FROM pool_gameobject WHERE guid=193433 AND pool_entry=12250;
DELETE FROM pool_gameobject WHERE guid=193434 AND pool_entry=12250;
DELETE FROM pool_gameobject WHERE guid=193435 AND pool_entry=12250;
DELETE FROM pool_gameobject WHERE guid=193436 AND pool_entry=12250;
DELETE FROM pool_gameobject WHERE guid=193437 AND pool_entry=12249;
DELETE FROM pool_gameobject WHERE guid=193438 AND pool_entry=12249;
DELETE FROM pool_gameobject WHERE guid=193439 AND pool_entry=12249;
DELETE FROM pool_gameobject WHERE guid=193440 AND pool_entry=12249;
DELETE FROM pool_gameobject WHERE guid=193441 AND pool_entry=12248;
DELETE FROM pool_gameobject WHERE guid=193442 AND pool_entry=12248;
DELETE FROM pool_gameobject WHERE guid=193443 AND pool_entry=12248;
DELETE FROM pool_gameobject WHERE guid=193444 AND pool_entry=12248;
DELETE FROM pool_gameobject WHERE guid=193445 AND pool_entry=12247;
DELETE FROM pool_gameobject WHERE guid=193446 AND pool_entry=12247;
DELETE FROM pool_gameobject WHERE guid=193447 AND pool_entry=12247;
DELETE FROM pool_gameobject WHERE guid=193448 AND pool_entry=12247;
DELETE FROM pool_gameobject WHERE guid=193449 AND pool_entry=12246;
DELETE FROM pool_gameobject WHERE guid=193450 AND pool_entry=12246;
DELETE FROM pool_gameobject WHERE guid=193451 AND pool_entry=12246;
DELETE FROM pool_gameobject WHERE guid=193452 AND pool_entry=12246;
DELETE FROM pool_gameobject WHERE guid=193453 AND pool_entry=12245;
DELETE FROM pool_gameobject WHERE guid=193454 AND pool_entry=12245;
DELETE FROM pool_gameobject WHERE guid=193455 AND pool_entry=12245;
DELETE FROM pool_gameobject WHERE guid=193456 AND pool_entry=12245;
DELETE FROM pool_gameobject WHERE guid=193457 AND pool_entry=12244;
DELETE FROM pool_gameobject WHERE guid=193458 AND pool_entry=12244;
DELETE FROM pool_gameobject WHERE guid=193459 AND pool_entry=12244;
DELETE FROM pool_gameobject WHERE guid=193460 AND pool_entry=12244;
DELETE FROM pool_gameobject WHERE guid=193461 AND pool_entry=12243;
DELETE FROM pool_gameobject WHERE guid=193462 AND pool_entry=12243;
DELETE FROM pool_gameobject WHERE guid=193463 AND pool_entry=12243;
DELETE FROM pool_gameobject WHERE guid=193464 AND pool_entry=12243;
DELETE FROM pool_gameobject WHERE guid=193465 AND pool_entry=12242;
DELETE FROM pool_gameobject WHERE guid=193466 AND pool_entry=12242;
DELETE FROM pool_gameobject WHERE guid=193467 AND pool_entry=12242;
DELETE FROM pool_gameobject WHERE guid=193468 AND pool_entry=12242;
DELETE FROM pool_gameobject WHERE guid=193469 AND pool_entry=12241;
DELETE FROM pool_gameobject WHERE guid=193470 AND pool_entry=12241;
DELETE FROM pool_gameobject WHERE guid=193471 AND pool_entry=12241;
DELETE FROM pool_gameobject WHERE guid=193472 AND pool_entry=12241;
DELETE FROM pool_gameobject WHERE guid=193473 AND pool_entry=12240;
DELETE FROM pool_gameobject WHERE guid=193474 AND pool_entry=12240;
DELETE FROM pool_gameobject WHERE guid=193475 AND pool_entry=12240;
DELETE FROM pool_gameobject WHERE guid=193476 AND pool_entry=12240;
DELETE FROM pool_gameobject WHERE guid=193477 AND pool_entry=12239;
DELETE FROM pool_gameobject WHERE guid=193478 AND pool_entry=12239;
DELETE FROM pool_gameobject WHERE guid=193479 AND pool_entry=12239;
DELETE FROM pool_gameobject WHERE guid=193480 AND pool_entry=12239;
DELETE FROM pool_gameobject WHERE guid=193481 AND pool_entry=12238;
DELETE FROM pool_gameobject WHERE guid=193482 AND pool_entry=12238;
DELETE FROM pool_gameobject WHERE guid=193483 AND pool_entry=12238;
DELETE FROM pool_gameobject WHERE guid=193484 AND pool_entry=12238;
DELETE FROM pool_gameobject WHERE guid=193485 AND pool_entry=12237;
DELETE FROM pool_gameobject WHERE guid=193486 AND pool_entry=12237;
DELETE FROM pool_gameobject WHERE guid=193487 AND pool_entry=12237;
DELETE FROM pool_gameobject WHERE guid=193488 AND pool_entry=12236;
DELETE FROM pool_gameobject WHERE guid=193489 AND pool_entry=12236;
DELETE FROM pool_gameobject WHERE guid=193490 AND pool_entry=12236;
DELETE FROM pool_gameobject WHERE guid=193491 AND pool_entry=12235;
DELETE FROM pool_gameobject WHERE guid=193492 AND pool_entry=12235;
DELETE FROM pool_gameobject WHERE guid=193493 AND pool_entry=12235;
DELETE FROM pool_gameobject WHERE guid=193494 AND pool_entry=12234;
DELETE FROM pool_gameobject WHERE guid=193495 AND pool_entry=12234;
DELETE FROM pool_gameobject WHERE guid=193496 AND pool_entry=12234;
DELETE FROM pool_gameobject WHERE guid=193497 AND pool_entry=12233;
DELETE FROM pool_gameobject WHERE guid=193498 AND pool_entry=12233;
DELETE FROM pool_gameobject WHERE guid=193499 AND pool_entry=12233;
DELETE FROM pool_gameobject WHERE guid=193500 AND pool_entry=12232;
DELETE FROM pool_gameobject WHERE guid=193501 AND pool_entry=12232;
DELETE FROM pool_gameobject WHERE guid=193502 AND pool_entry=12232;
DELETE FROM pool_gameobject WHERE guid=193503 AND pool_entry=12231;
DELETE FROM pool_gameobject WHERE guid=193504 AND pool_entry=12231;
DELETE FROM pool_gameobject WHERE guid=193505 AND pool_entry=12231;
DELETE FROM pool_gameobject WHERE guid=193506 AND pool_entry=12231;
DELETE FROM pool_gameobject WHERE guid=193507 AND pool_entry=12230;
DELETE FROM pool_gameobject WHERE guid=193508 AND pool_entry=12230;
DELETE FROM pool_gameobject WHERE guid=193509 AND pool_entry=12230;
DELETE FROM pool_gameobject WHERE guid=193510 AND pool_entry=12230;
DELETE FROM pool_gameobject WHERE guid=193511 AND pool_entry=12229;
DELETE FROM pool_gameobject WHERE guid=193512 AND pool_entry=12229;
DELETE FROM pool_gameobject WHERE guid=193513 AND pool_entry=12229;
DELETE FROM pool_gameobject WHERE guid=193514 AND pool_entry=12229;
DELETE FROM pool_gameobject WHERE guid=193515 AND pool_entry=12228;
DELETE FROM pool_gameobject WHERE guid=193516 AND pool_entry=12228;
DELETE FROM pool_gameobject WHERE guid=193517 AND pool_entry=12228;
DELETE FROM pool_gameobject WHERE guid=193518 AND pool_entry=12227;
DELETE FROM pool_gameobject WHERE guid=193519 AND pool_entry=12227;
DELETE FROM pool_gameobject WHERE guid=193520 AND pool_entry=12227;
DELETE FROM pool_gameobject WHERE guid=193521 AND pool_entry=12226;
DELETE FROM pool_gameobject WHERE guid=193522 AND pool_entry=12226;
DELETE FROM pool_gameobject WHERE guid=193523 AND pool_entry=12226;
DELETE FROM pool_gameobject WHERE guid=193524 AND pool_entry=12225;
DELETE FROM pool_gameobject WHERE guid=193525 AND pool_entry=12225;
DELETE FROM pool_gameobject WHERE guid=193526 AND pool_entry=12225;
DELETE FROM pool_gameobject WHERE guid=193527 AND pool_entry=12224;
DELETE FROM pool_gameobject WHERE guid=193528 AND pool_entry=12224;
DELETE FROM pool_gameobject WHERE guid=193529 AND pool_entry=12224;
DELETE FROM pool_gameobject WHERE guid=193530 AND pool_entry=12223;
DELETE FROM pool_gameobject WHERE guid=193531 AND pool_entry=12223;
DELETE FROM pool_gameobject WHERE guid=193532 AND pool_entry=12223;
DELETE FROM pool_gameobject WHERE guid=193533 AND pool_entry=12222;
DELETE FROM pool_gameobject WHERE guid=193534 AND pool_entry=12222;
DELETE FROM pool_gameobject WHERE guid=193535 AND pool_entry=12222;
DELETE FROM pool_gameobject WHERE guid=193536 AND pool_entry=12221;
DELETE FROM pool_gameobject WHERE guid=193537 AND pool_entry=12221;
DELETE FROM pool_gameobject WHERE guid=193538 AND pool_entry=12221;
DELETE FROM pool_gameobject WHERE guid=193539 AND pool_entry=12220;
DELETE FROM pool_gameobject WHERE guid=193540 AND pool_entry=12220;
DELETE FROM pool_gameobject WHERE guid=193541 AND pool_entry=12220;
DELETE FROM pool_gameobject WHERE guid=193542 AND pool_entry=12219;
DELETE FROM pool_gameobject WHERE guid=193543 AND pool_entry=12219;
DELETE FROM pool_gameobject WHERE guid=193544 AND pool_entry=12219;
DELETE FROM pool_gameobject WHERE guid=193545 AND pool_entry=12218;
DELETE FROM pool_gameobject WHERE guid=193546 AND pool_entry=12218;
DELETE FROM pool_gameobject WHERE guid=193547 AND pool_entry=12218;
DELETE FROM pool_gameobject WHERE guid=193548 AND pool_entry=12217;
DELETE FROM pool_gameobject WHERE guid=193549 AND pool_entry=12217;
DELETE FROM pool_gameobject WHERE guid=193550 AND pool_entry=12217;
DELETE FROM pool_gameobject WHERE guid=193551 AND pool_entry=12216;
DELETE FROM pool_gameobject WHERE guid=193552 AND pool_entry=12216;
DELETE FROM pool_gameobject WHERE guid=193553 AND pool_entry=12216;
DELETE FROM pool_gameobject WHERE guid=193554 AND pool_entry=12215;
DELETE FROM pool_gameobject WHERE guid=193555 AND pool_entry=12215;
DELETE FROM pool_gameobject WHERE guid=193556 AND pool_entry=12215;
DELETE FROM pool_gameobject WHERE guid=193557 AND pool_entry=12215;
DELETE FROM pool_gameobject WHERE guid=193558 AND pool_entry=12214;
DELETE FROM pool_gameobject WHERE guid=193559 AND pool_entry=12214;
DELETE FROM pool_gameobject WHERE guid=193560 AND pool_entry=12214;
DELETE FROM pool_gameobject WHERE guid=193561 AND pool_entry=12214;
DELETE FROM pool_gameobject WHERE guid=193562 AND pool_entry=12213;
DELETE FROM pool_gameobject WHERE guid=193563 AND pool_entry=12213;
DELETE FROM pool_gameobject WHERE guid=193564 AND pool_entry=12213;
DELETE FROM pool_gameobject WHERE guid=193565 AND pool_entry=12213;
DELETE FROM pool_gameobject WHERE guid=193566 AND pool_entry=12212;
DELETE FROM pool_gameobject WHERE guid=193567 AND pool_entry=12212;
DELETE FROM pool_gameobject WHERE guid=193568 AND pool_entry=12212;
DELETE FROM pool_gameobject WHERE guid=193569 AND pool_entry=12212;
DELETE FROM pool_gameobject WHERE guid=193570 AND pool_entry=12211;
DELETE FROM pool_gameobject WHERE guid=193571 AND pool_entry=12211;
DELETE FROM pool_gameobject WHERE guid=193572 AND pool_entry=12211;
DELETE FROM pool_gameobject WHERE guid=193573 AND pool_entry=12211;
DELETE FROM pool_gameobject WHERE guid=193574 AND pool_entry=12210;
DELETE FROM pool_gameobject WHERE guid=193575 AND pool_entry=12210;
DELETE FROM pool_gameobject WHERE guid=193576 AND pool_entry=12210;
DELETE FROM pool_gameobject WHERE guid=193577 AND pool_entry=12210;
DELETE FROM pool_gameobject WHERE guid=193578 AND pool_entry=12209;
DELETE FROM pool_gameobject WHERE guid=193579 AND pool_entry=12209;
DELETE FROM pool_gameobject WHERE guid=193580 AND pool_entry=12209;
DELETE FROM pool_gameobject WHERE guid=193581 AND pool_entry=12209;
DELETE FROM pool_gameobject WHERE guid=193582 AND pool_entry=12208;
DELETE FROM pool_gameobject WHERE guid=193583 AND pool_entry=12208;
DELETE FROM pool_gameobject WHERE guid=193584 AND pool_entry=12208;
DELETE FROM pool_gameobject WHERE guid=193585 AND pool_entry=12208;
DELETE FROM pool_gameobject WHERE guid=193586 AND pool_entry=12207;
DELETE FROM pool_gameobject WHERE guid=193587 AND pool_entry=12207;
DELETE FROM pool_gameobject WHERE guid=193588 AND pool_entry=12207;
DELETE FROM pool_gameobject WHERE guid=193589 AND pool_entry=12207;
DELETE FROM pool_gameobject WHERE guid=193590 AND pool_entry=12206;
DELETE FROM pool_gameobject WHERE guid=193591 AND pool_entry=12206;
DELETE FROM pool_gameobject WHERE guid=193592 AND pool_entry=12206;
DELETE FROM pool_gameobject WHERE guid=193593 AND pool_entry=12206;
DELETE FROM pool_gameobject WHERE guid=193594 AND pool_entry=12205;
DELETE FROM pool_gameobject WHERE guid=193595 AND pool_entry=12205;
DELETE FROM pool_gameobject WHERE guid=193596 AND pool_entry=12205;
DELETE FROM pool_gameobject WHERE guid=193597 AND pool_entry=12205;
DELETE FROM pool_gameobject WHERE guid=193598 AND pool_entry=12204;
DELETE FROM pool_gameobject WHERE guid=193599 AND pool_entry=12204;
DELETE FROM pool_gameobject WHERE guid=193600 AND pool_entry=12204;
DELETE FROM pool_gameobject WHERE guid=193601 AND pool_entry=12204;
DELETE FROM pool_gameobject WHERE guid=193602 AND pool_entry=12203;
DELETE FROM pool_gameobject WHERE guid=193603 AND pool_entry=12203;
DELETE FROM pool_gameobject WHERE guid=193604 AND pool_entry=12203;
DELETE FROM pool_gameobject WHERE guid=193605 AND pool_entry=12203;
DELETE FROM pool_gameobject WHERE guid=193606 AND pool_entry=12202;
DELETE FROM pool_gameobject WHERE guid=193607 AND pool_entry=12202;
DELETE FROM pool_gameobject WHERE guid=193608 AND pool_entry=12202;
DELETE FROM pool_gameobject WHERE guid=193609 AND pool_entry=12202;
DELETE FROM pool_gameobject WHERE guid=193610 AND pool_entry=12201;
DELETE FROM pool_gameobject WHERE guid=193611 AND pool_entry=12201;
DELETE FROM pool_gameobject WHERE guid=193612 AND pool_entry=12201;
DELETE FROM pool_gameobject WHERE guid=193613 AND pool_entry=12201;
DELETE FROM pool_gameobject WHERE guid=193614 AND pool_entry=12200;
DELETE FROM pool_gameobject WHERE guid=193615 AND pool_entry=12200;
DELETE FROM pool_gameobject WHERE guid=193616 AND pool_entry=12200;
DELETE FROM pool_gameobject WHERE guid=193617 AND pool_entry=12200;
DELETE FROM pool_gameobject WHERE guid=193618 AND pool_entry=12199;
DELETE FROM pool_gameobject WHERE guid=193619 AND pool_entry=12199;
DELETE FROM pool_gameobject WHERE guid=193620 AND pool_entry=12199;
DELETE FROM pool_gameobject WHERE guid=193621 AND pool_entry=12199;
DELETE FROM pool_gameobject WHERE guid=193622 AND pool_entry=12198;
DELETE FROM pool_gameobject WHERE guid=193623 AND pool_entry=12198;
DELETE FROM pool_gameobject WHERE guid=193624 AND pool_entry=12198;
DELETE FROM pool_gameobject WHERE guid=193625 AND pool_entry=12198;
DELETE FROM pool_gameobject WHERE guid=193626 AND pool_entry=12197;
DELETE FROM pool_gameobject WHERE guid=193627 AND pool_entry=12197;
DELETE FROM pool_gameobject WHERE guid=193628 AND pool_entry=12197;
DELETE FROM pool_gameobject WHERE guid=193629 AND pool_entry=12197;
DELETE FROM pool_gameobject WHERE guid=193630 AND pool_entry=12196;
DELETE FROM pool_gameobject WHERE guid=193631 AND pool_entry=12196;
DELETE FROM pool_gameobject WHERE guid=193632 AND pool_entry=12196;
DELETE FROM pool_gameobject WHERE guid=193633 AND pool_entry=12196;
DELETE FROM pool_gameobject WHERE guid=193634 AND pool_entry=12195;
DELETE FROM pool_gameobject WHERE guid=193635 AND pool_entry=12195;
DELETE FROM pool_gameobject WHERE guid=193636 AND pool_entry=12195;
DELETE FROM pool_gameobject WHERE guid=193637 AND pool_entry=12195;
DELETE FROM pool_gameobject WHERE guid=193638 AND pool_entry=12194;
DELETE FROM pool_gameobject WHERE guid=193639 AND pool_entry=12194;
DELETE FROM pool_gameobject WHERE guid=193640 AND pool_entry=12194;
DELETE FROM pool_gameobject WHERE guid=193641 AND pool_entry=12194;
DELETE FROM pool_gameobject WHERE guid=193642 AND pool_entry=12193;
DELETE FROM pool_gameobject WHERE guid=193643 AND pool_entry=12193;
DELETE FROM pool_gameobject WHERE guid=193644 AND pool_entry=12193;
DELETE FROM pool_gameobject WHERE guid=193645 AND pool_entry=12193;
DELETE FROM pool_gameobject WHERE guid=193646 AND pool_entry=12192;
DELETE FROM pool_gameobject WHERE guid=193647 AND pool_entry=12192;
DELETE FROM pool_gameobject WHERE guid=193648 AND pool_entry=12192;
DELETE FROM pool_gameobject WHERE guid=193649 AND pool_entry=12192;
DELETE FROM pool_gameobject WHERE guid=193650 AND pool_entry=12191;
DELETE FROM pool_gameobject WHERE guid=193651 AND pool_entry=12191;
DELETE FROM pool_gameobject WHERE guid=193652 AND pool_entry=12191;
DELETE FROM pool_gameobject WHERE guid=193653 AND pool_entry=12191;
DELETE FROM pool_gameobject WHERE guid=193654 AND pool_entry=12190;
DELETE FROM pool_gameobject WHERE guid=193655 AND pool_entry=12190;
DELETE FROM pool_gameobject WHERE guid=193656 AND pool_entry=12190;
DELETE FROM pool_gameobject WHERE guid=193657 AND pool_entry=12190;
DELETE FROM pool_gameobject WHERE guid=193658 AND pool_entry=12189;
DELETE FROM pool_gameobject WHERE guid=193659 AND pool_entry=12189;
DELETE FROM pool_gameobject WHERE guid=193660 AND pool_entry=12189;
DELETE FROM pool_gameobject WHERE guid=193661 AND pool_entry=12189;
DELETE FROM pool_gameobject WHERE guid=193662 AND pool_entry=12188;
DELETE FROM pool_gameobject WHERE guid=193663 AND pool_entry=12188;
DELETE FROM pool_gameobject WHERE guid=193664 AND pool_entry=12188;
DELETE FROM pool_gameobject WHERE guid=193665 AND pool_entry=12188;
DELETE FROM pool_gameobject WHERE guid=193666 AND pool_entry=12187;
DELETE FROM pool_gameobject WHERE guid=193667 AND pool_entry=12187;
DELETE FROM pool_gameobject WHERE guid=193668 AND pool_entry=12187;
DELETE FROM pool_gameobject WHERE guid=193669 AND pool_entry=12187;
DELETE FROM pool_gameobject WHERE guid=193670 AND pool_entry=12186;
DELETE FROM pool_gameobject WHERE guid=193671 AND pool_entry=12186;
DELETE FROM pool_gameobject WHERE guid=193672 AND pool_entry=12186;
DELETE FROM pool_gameobject WHERE guid=193673 AND pool_entry=12186;
DELETE FROM pool_gameobject WHERE guid=193674 AND pool_entry=12185;
DELETE FROM pool_gameobject WHERE guid=193675 AND pool_entry=12185;
DELETE FROM pool_gameobject WHERE guid=193676 AND pool_entry=12185;
DELETE FROM pool_gameobject WHERE guid=193677 AND pool_entry=12185;
DELETE FROM pool_gameobject WHERE guid=193678 AND pool_entry=12184;
DELETE FROM pool_gameobject WHERE guid=193679 AND pool_entry=12184;
DELETE FROM pool_gameobject WHERE guid=193680 AND pool_entry=12184;
DELETE FROM pool_gameobject WHERE guid=193681 AND pool_entry=12184;
DELETE FROM pool_gameobject WHERE guid=193682 AND pool_entry=12183;
DELETE FROM pool_gameobject WHERE guid=193683 AND pool_entry=12183;
DELETE FROM pool_gameobject WHERE guid=193684 AND pool_entry=12183;
DELETE FROM pool_gameobject WHERE guid=193685 AND pool_entry=12183;
DELETE FROM pool_gameobject WHERE guid=193686 AND pool_entry=12182;
DELETE FROM pool_gameobject WHERE guid=193687 AND pool_entry=12182;
DELETE FROM pool_gameobject WHERE guid=193688 AND pool_entry=12182;
DELETE FROM pool_gameobject WHERE guid=193689 AND pool_entry=12182;
DELETE FROM pool_gameobject WHERE guid=193690 AND pool_entry=12181;
DELETE FROM pool_gameobject WHERE guid=193691 AND pool_entry=12181;
DELETE FROM pool_gameobject WHERE guid=193692 AND pool_entry=12181;
DELETE FROM pool_gameobject WHERE guid=193693 AND pool_entry=12181;
DELETE FROM pool_gameobject WHERE guid=193694 AND pool_entry=12180;
DELETE FROM pool_gameobject WHERE guid=193695 AND pool_entry=12180;
DELETE FROM pool_gameobject WHERE guid=193696 AND pool_entry=12180;
DELETE FROM pool_gameobject WHERE guid=193697 AND pool_entry=12180;
DELETE FROM pool_gameobject WHERE guid=193698 AND pool_entry=12179;
DELETE FROM pool_gameobject WHERE guid=193699 AND pool_entry=12179;
DELETE FROM pool_gameobject WHERE guid=193700 AND pool_entry=12179;
DELETE FROM pool_gameobject WHERE guid=193701 AND pool_entry=12179;
DELETE FROM pool_gameobject WHERE guid=193702 AND pool_entry=12178;
DELETE FROM pool_gameobject WHERE guid=193703 AND pool_entry=12178;
DELETE FROM pool_gameobject WHERE guid=193704 AND pool_entry=12178;
DELETE FROM pool_gameobject WHERE guid=193705 AND pool_entry=12178;
DELETE FROM pool_gameobject WHERE guid=193706 AND pool_entry=12177;
DELETE FROM pool_gameobject WHERE guid=193707 AND pool_entry=12177;
DELETE FROM pool_gameobject WHERE guid=193708 AND pool_entry=12177;
DELETE FROM pool_gameobject WHERE guid=193709 AND pool_entry=12177;
DELETE FROM pool_gameobject WHERE guid=193710 AND pool_entry=12176;
DELETE FROM pool_gameobject WHERE guid=193711 AND pool_entry=12176;
DELETE FROM pool_gameobject WHERE guid=193712 AND pool_entry=12176;
DELETE FROM pool_gameobject WHERE guid=193713 AND pool_entry=12176;
DELETE FROM pool_gameobject WHERE guid=193714 AND pool_entry=12175;
DELETE FROM pool_gameobject WHERE guid=193715 AND pool_entry=12175;
DELETE FROM pool_gameobject WHERE guid=193716 AND pool_entry=12175;
DELETE FROM pool_gameobject WHERE guid=193717 AND pool_entry=12175;
DELETE FROM pool_gameobject WHERE guid=193718 AND pool_entry=12174;
DELETE FROM pool_gameobject WHERE guid=193719 AND pool_entry=12174;
DELETE FROM pool_gameobject WHERE guid=193720 AND pool_entry=12174;
DELETE FROM pool_gameobject WHERE guid=193721 AND pool_entry=12174;
DELETE FROM pool_gameobject WHERE guid=193722 AND pool_entry=12173;
DELETE FROM pool_gameobject WHERE guid=193723 AND pool_entry=12173;
DELETE FROM pool_gameobject WHERE guid=193724 AND pool_entry=12173;
DELETE FROM pool_gameobject WHERE guid=193725 AND pool_entry=12173;
DELETE FROM pool_gameobject WHERE guid=193726 AND pool_entry=12172;
DELETE FROM pool_gameobject WHERE guid=193727 AND pool_entry=12172;
DELETE FROM pool_gameobject WHERE guid=193728 AND pool_entry=12172;
DELETE FROM pool_gameobject WHERE guid=193729 AND pool_entry=12172;
DELETE FROM pool_gameobject WHERE guid=193730 AND pool_entry=12171;
DELETE FROM pool_gameobject WHERE guid=193731 AND pool_entry=12171;
DELETE FROM pool_gameobject WHERE guid=193732 AND pool_entry=12171;
DELETE FROM pool_gameobject WHERE guid=193733 AND pool_entry=12171;
DELETE FROM pool_gameobject WHERE guid=193734 AND pool_entry=12170;
DELETE FROM pool_gameobject WHERE guid=193735 AND pool_entry=12170;
DELETE FROM pool_gameobject WHERE guid=193736 AND pool_entry=12170;
DELETE FROM pool_gameobject WHERE guid=193737 AND pool_entry=12170;
DELETE FROM pool_gameobject WHERE guid=193738 AND pool_entry=12169;
DELETE FROM pool_gameobject WHERE guid=193739 AND pool_entry=12169;
DELETE FROM pool_gameobject WHERE guid=193740 AND pool_entry=12169;
DELETE FROM pool_gameobject WHERE guid=193741 AND pool_entry=12169;
DELETE FROM pool_gameobject WHERE guid=193742 AND pool_entry=12168;
DELETE FROM pool_gameobject WHERE guid=193743 AND pool_entry=12168;
DELETE FROM pool_gameobject WHERE guid=193744 AND pool_entry=12168;
DELETE FROM pool_gameobject WHERE guid=193745 AND pool_entry=12168;
DELETE FROM pool_gameobject WHERE guid=193746 AND pool_entry=12167;
DELETE FROM pool_gameobject WHERE guid=193747 AND pool_entry=12167;
DELETE FROM pool_gameobject WHERE guid=193748 AND pool_entry=12167;
DELETE FROM pool_gameobject WHERE guid=193749 AND pool_entry=12167;
DELETE FROM pool_gameobject WHERE guid=193750 AND pool_entry=12166;
DELETE FROM pool_gameobject WHERE guid=193751 AND pool_entry=12166;
DELETE FROM pool_gameobject WHERE guid=193752 AND pool_entry=12166;
DELETE FROM pool_gameobject WHERE guid=193753 AND pool_entry=12166;
DELETE FROM pool_gameobject WHERE guid=193754 AND pool_entry=12165;
DELETE FROM pool_gameobject WHERE guid=193755 AND pool_entry=12165;
DELETE FROM pool_gameobject WHERE guid=193756 AND pool_entry=12165;
DELETE FROM pool_gameobject WHERE guid=193757 AND pool_entry=12165;
DELETE FROM pool_gameobject WHERE guid=193758 AND pool_entry=12164;
DELETE FROM pool_gameobject WHERE guid=193759 AND pool_entry=12164;
DELETE FROM pool_gameobject WHERE guid=193760 AND pool_entry=12164;
DELETE FROM pool_gameobject WHERE guid=193761 AND pool_entry=12164;
DELETE FROM pool_gameobject WHERE guid=193762 AND pool_entry=12163;
DELETE FROM pool_gameobject WHERE guid=193763 AND pool_entry=12163;
DELETE FROM pool_gameobject WHERE guid=193764 AND pool_entry=12163;
DELETE FROM pool_gameobject WHERE guid=193765 AND pool_entry=12163;
DELETE FROM pool_gameobject WHERE guid=193766 AND pool_entry=12162;
DELETE FROM pool_gameobject WHERE guid=193767 AND pool_entry=12162;
DELETE FROM pool_gameobject WHERE guid=193768 AND pool_entry=12162;
DELETE FROM pool_gameobject WHERE guid=193769 AND pool_entry=12162;
DELETE FROM pool_gameobject WHERE guid=193770 AND pool_entry=12161;
DELETE FROM pool_gameobject WHERE guid=193771 AND pool_entry=12161;
DELETE FROM pool_gameobject WHERE guid=193772 AND pool_entry=12161;
DELETE FROM pool_gameobject WHERE guid=193773 AND pool_entry=12161;
DELETE FROM pool_gameobject WHERE guid=193774 AND pool_entry=12160;
DELETE FROM pool_gameobject WHERE guid=193775 AND pool_entry=12160;
DELETE FROM pool_gameobject WHERE guid=193776 AND pool_entry=12160;
DELETE FROM pool_gameobject WHERE guid=193777 AND pool_entry=12160;
DELETE FROM pool_gameobject WHERE guid=193778 AND pool_entry=12159;
DELETE FROM pool_gameobject WHERE guid=193779 AND pool_entry=12159;
DELETE FROM pool_gameobject WHERE guid=193780 AND pool_entry=12159;
DELETE FROM pool_gameobject WHERE guid=193781 AND pool_entry=12159;
DELETE FROM pool_gameobject WHERE guid=193782 AND pool_entry=12158;
DELETE FROM pool_gameobject WHERE guid=193783 AND pool_entry=12158;
DELETE FROM pool_gameobject WHERE guid=193784 AND pool_entry=12158;
DELETE FROM pool_gameobject WHERE guid=193785 AND pool_entry=12158;
DELETE FROM pool_gameobject WHERE guid=193786 AND pool_entry=12157;
DELETE FROM pool_gameobject WHERE guid=193787 AND pool_entry=12157;
DELETE FROM pool_gameobject WHERE guid=193788 AND pool_entry=12157;
DELETE FROM pool_gameobject WHERE guid=193789 AND pool_entry=12157;
DELETE FROM pool_gameobject WHERE guid=193790 AND pool_entry=12156;
DELETE FROM pool_gameobject WHERE guid=193791 AND pool_entry=12156;
DELETE FROM pool_gameobject WHERE guid=193792 AND pool_entry=12156;
DELETE FROM pool_gameobject WHERE guid=193793 AND pool_entry=12156;
DELETE FROM pool_gameobject WHERE guid=193794 AND pool_entry=12155;
DELETE FROM pool_gameobject WHERE guid=193795 AND pool_entry=12155;
DELETE FROM pool_gameobject WHERE guid=193796 AND pool_entry=12155;
DELETE FROM pool_gameobject WHERE guid=193797 AND pool_entry=12155;
DELETE FROM pool_gameobject WHERE guid=193798 AND pool_entry=12154;
DELETE FROM pool_gameobject WHERE guid=193799 AND pool_entry=12154;
DELETE FROM pool_gameobject WHERE guid=193800 AND pool_entry=12154;
DELETE FROM pool_gameobject WHERE guid=193801 AND pool_entry=12154;
DELETE FROM pool_gameobject WHERE guid=193802 AND pool_entry=12153;
DELETE FROM pool_gameobject WHERE guid=193803 AND pool_entry=12153;
DELETE FROM pool_gameobject WHERE guid=193804 AND pool_entry=12153;
DELETE FROM pool_gameobject WHERE guid=193805 AND pool_entry=12153;
DELETE FROM pool_gameobject WHERE guid=193806 AND pool_entry=12152;
DELETE FROM pool_gameobject WHERE guid=193807 AND pool_entry=12152;
DELETE FROM pool_gameobject WHERE guid=193808 AND pool_entry=12152;
DELETE FROM pool_gameobject WHERE guid=193809 AND pool_entry=12152;
DELETE FROM pool_gameobject WHERE guid=193810 AND pool_entry=12151;
DELETE FROM pool_gameobject WHERE guid=193811 AND pool_entry=12151;
DELETE FROM pool_gameobject WHERE guid=193812 AND pool_entry=12151;
DELETE FROM pool_gameobject WHERE guid=193813 AND pool_entry=12151;
DELETE FROM pool_gameobject WHERE guid=193814 AND pool_entry=12150;
DELETE FROM pool_gameobject WHERE guid=193815 AND pool_entry=12150;
DELETE FROM pool_gameobject WHERE guid=193816 AND pool_entry=12150;
DELETE FROM pool_gameobject WHERE guid=193817 AND pool_entry=12150;
DELETE FROM pool_gameobject WHERE guid=193818 AND pool_entry=12149;
DELETE FROM pool_gameobject WHERE guid=193819 AND pool_entry=12149;
DELETE FROM pool_gameobject WHERE guid=193820 AND pool_entry=12149;
DELETE FROM pool_gameobject WHERE guid=193821 AND pool_entry=12149;
DELETE FROM pool_gameobject WHERE guid=193822 AND pool_entry=12148;
DELETE FROM pool_gameobject WHERE guid=193823 AND pool_entry=12148;
DELETE FROM pool_gameobject WHERE guid=193824 AND pool_entry=12148;
DELETE FROM pool_gameobject WHERE guid=193825 AND pool_entry=12148;
DELETE FROM pool_gameobject WHERE guid=193826 AND pool_entry=12147;
DELETE FROM pool_gameobject WHERE guid=193827 AND pool_entry=12147;
DELETE FROM pool_gameobject WHERE guid=193828 AND pool_entry=12147;
DELETE FROM pool_gameobject WHERE guid=193829 AND pool_entry=12146;
DELETE FROM pool_gameobject WHERE guid=193830 AND pool_entry=12146;
DELETE FROM pool_gameobject WHERE guid=193831 AND pool_entry=12146;
DELETE FROM pool_gameobject WHERE guid=193832 AND pool_entry=12145;
DELETE FROM pool_gameobject WHERE guid=193833 AND pool_entry=12145;
DELETE FROM pool_gameobject WHERE guid=193834 AND pool_entry=12145;
DELETE FROM pool_gameobject WHERE guid=193835 AND pool_entry=12144;
DELETE FROM pool_gameobject WHERE guid=193836 AND pool_entry=12144;
DELETE FROM pool_gameobject WHERE guid=193837 AND pool_entry=12144;
DELETE FROM pool_gameobject WHERE guid=193838 AND pool_entry=12143;
DELETE FROM pool_gameobject WHERE guid=193839 AND pool_entry=12143;
DELETE FROM pool_gameobject WHERE guid=193840 AND pool_entry=12143;
DELETE FROM pool_gameobject WHERE guid=193841 AND pool_entry=12142;
DELETE FROM pool_gameobject WHERE guid=193842 AND pool_entry=12142;
DELETE FROM pool_gameobject WHERE guid=193843 AND pool_entry=12142;
DELETE FROM pool_gameobject WHERE guid=193844 AND pool_entry=12141;
DELETE FROM pool_gameobject WHERE guid=193845 AND pool_entry=12141;
DELETE FROM pool_gameobject WHERE guid=193846 AND pool_entry=12141;
DELETE FROM pool_gameobject WHERE guid=193847 AND pool_entry=12140;
DELETE FROM pool_gameobject WHERE guid=193848 AND pool_entry=12140;
DELETE FROM pool_gameobject WHERE guid=193849 AND pool_entry=12140;
DELETE FROM pool_gameobject WHERE guid=193850 AND pool_entry=12139;
DELETE FROM pool_gameobject WHERE guid=193851 AND pool_entry=12139;
DELETE FROM pool_gameobject WHERE guid=193852 AND pool_entry=12139;
DELETE FROM pool_gameobject WHERE guid=193853 AND pool_entry=12138;
DELETE FROM pool_gameobject WHERE guid=193854 AND pool_entry=12138;
DELETE FROM pool_gameobject WHERE guid=193855 AND pool_entry=12138;
DELETE FROM pool_gameobject WHERE guid=193856 AND pool_entry=12137;
DELETE FROM pool_gameobject WHERE guid=193857 AND pool_entry=12137;
DELETE FROM pool_gameobject WHERE guid=193858 AND pool_entry=12137;
DELETE FROM pool_gameobject WHERE guid=193859 AND pool_entry=12136;
DELETE FROM pool_gameobject WHERE guid=193860 AND pool_entry=12136;
DELETE FROM pool_gameobject WHERE guid=193861 AND pool_entry=12136;
DELETE FROM pool_gameobject WHERE guid=193862 AND pool_entry=12135;
DELETE FROM pool_gameobject WHERE guid=193863 AND pool_entry=12135;
DELETE FROM pool_gameobject WHERE guid=193864 AND pool_entry=12135;
DELETE FROM pool_gameobject WHERE guid=193865 AND pool_entry=12134;
DELETE FROM pool_gameobject WHERE guid=193866 AND pool_entry=12134;
DELETE FROM pool_gameobject WHERE guid=193867 AND pool_entry=12134;
DELETE FROM pool_gameobject WHERE guid=193868 AND pool_entry=12133;
DELETE FROM pool_gameobject WHERE guid=193869 AND pool_entry=12133;
DELETE FROM pool_gameobject WHERE guid=193870 AND pool_entry=12133;
DELETE FROM pool_gameobject WHERE guid=193871 AND pool_entry=12132;
DELETE FROM pool_gameobject WHERE guid=193872 AND pool_entry=12132;
DELETE FROM pool_gameobject WHERE guid=193873 AND pool_entry=12132;
DELETE FROM pool_gameobject WHERE guid=193874 AND pool_entry=12131;
DELETE FROM pool_gameobject WHERE guid=193875 AND pool_entry=12131;
DELETE FROM pool_gameobject WHERE guid=193876 AND pool_entry=12131;
DELETE FROM pool_gameobject WHERE guid=193877 AND pool_entry=12130;
DELETE FROM pool_gameobject WHERE guid=193878 AND pool_entry=12130;
DELETE FROM pool_gameobject WHERE guid=193879 AND pool_entry=12129;
DELETE FROM pool_gameobject WHERE guid=193880 AND pool_entry=12129;
DELETE FROM pool_gameobject WHERE guid=193881 AND pool_entry=12128;
DELETE FROM pool_gameobject WHERE guid=193882 AND pool_entry=12128;
DELETE FROM pool_gameobject WHERE guid=193883 AND pool_entry=12127;
DELETE FROM pool_gameobject WHERE guid=193884 AND pool_entry=12127;
DELETE FROM pool_gameobject WHERE guid=193885 AND pool_entry=12126;
DELETE FROM pool_gameobject WHERE guid=193886 AND pool_entry=12126;
DELETE FROM pool_gameobject WHERE guid=193887 AND pool_entry=12125;
DELETE FROM pool_gameobject WHERE guid=193888 AND pool_entry=12125;
DELETE FROM pool_gameobject WHERE guid=193889 AND pool_entry=12124;
DELETE FROM pool_gameobject WHERE guid=193890 AND pool_entry=12124;
DELETE FROM pool_gameobject WHERE guid=193891 AND pool_entry=12123;
DELETE FROM pool_gameobject WHERE guid=193892 AND pool_entry=12123;
DELETE FROM pool_gameobject WHERE guid=193893 AND pool_entry=12122;
DELETE FROM pool_gameobject WHERE guid=193894 AND pool_entry=12122;
DELETE FROM pool_gameobject WHERE guid=193895 AND pool_entry=12121;
DELETE FROM pool_gameobject WHERE guid=193896 AND pool_entry=12121;
DELETE FROM pool_gameobject WHERE guid=193897 AND pool_entry=12120;
DELETE FROM pool_gameobject WHERE guid=193898 AND pool_entry=12120;
DELETE FROM pool_gameobject WHERE guid=193899 AND pool_entry=12119;
DELETE FROM pool_gameobject WHERE guid=193900 AND pool_entry=12119;
DELETE FROM pool_gameobject WHERE guid=193901 AND pool_entry=12118;
DELETE FROM pool_gameobject WHERE guid=193902 AND pool_entry=12118;
DELETE FROM pool_gameobject WHERE guid=193903 AND pool_entry=12117;
DELETE FROM pool_gameobject WHERE guid=193904 AND pool_entry=12117;
DELETE FROM pool_gameobject WHERE guid=193905 AND pool_entry=12116;
DELETE FROM pool_gameobject WHERE guid=193906 AND pool_entry=12116;
DELETE FROM pool_gameobject WHERE guid=193907 AND pool_entry=12115;
DELETE FROM pool_gameobject WHERE guid=193908 AND pool_entry=12115;
DELETE FROM pool_gameobject WHERE guid=193909 AND pool_entry=12114;
DELETE FROM pool_gameobject WHERE guid=193910 AND pool_entry=12114;
DELETE FROM pool_gameobject WHERE guid=193911 AND pool_entry=12113;
DELETE FROM pool_gameobject WHERE guid=193912 AND pool_entry=12113;
DELETE FROM pool_gameobject WHERE guid=193913 AND pool_entry=12112;
DELETE FROM pool_gameobject WHERE guid=193914 AND pool_entry=12112;
DELETE FROM pool_gameobject WHERE guid=193915 AND pool_entry=12111;
DELETE FROM pool_gameobject WHERE guid=193916 AND pool_entry=12111;
DELETE FROM pool_gameobject WHERE guid=193917 AND pool_entry=12110;
DELETE FROM pool_gameobject WHERE guid=193918 AND pool_entry=12110;
DELETE FROM pool_gameobject WHERE guid=193919 AND pool_entry=12109;
DELETE FROM pool_gameobject WHERE guid=193920 AND pool_entry=12109;
DELETE FROM pool_gameobject WHERE guid=193921 AND pool_entry=12108;
DELETE FROM pool_gameobject WHERE guid=193922 AND pool_entry=12108;
DELETE FROM pool_gameobject WHERE guid=193923 AND pool_entry=12107;
DELETE FROM pool_gameobject WHERE guid=193924 AND pool_entry=12107;
DELETE FROM pool_gameobject WHERE guid=193925 AND pool_entry=12106;
DELETE FROM pool_gameobject WHERE guid=193926 AND pool_entry=12106;
DELETE FROM pool_gameobject WHERE guid=193927 AND pool_entry=12105;
DELETE FROM pool_gameobject WHERE guid=193928 AND pool_entry=12105;
DELETE FROM pool_gameobject WHERE guid=193929 AND pool_entry=12104;
DELETE FROM pool_gameobject WHERE guid=193930 AND pool_entry=12104;
DELETE FROM pool_gameobject WHERE guid=193931 AND pool_entry=12600;
DELETE FROM pool_gameobject WHERE guid=193932 AND pool_entry=12600;
DELETE FROM pool_gameobject WHERE guid=193933 AND pool_entry=12601;
DELETE FROM pool_gameobject WHERE guid=193934 AND pool_entry=12601;
DELETE FROM pool_gameobject WHERE guid=193935 AND pool_entry=12602;
DELETE FROM pool_gameobject WHERE guid=193936 AND pool_entry=12602;
DELETE FROM pool_gameobject WHERE guid=193937 AND pool_entry=12603;
DELETE FROM pool_gameobject WHERE guid=193938 AND pool_entry=12603;
DELETE FROM pool_gameobject WHERE guid=193939 AND pool_entry=12604;
DELETE FROM pool_gameobject WHERE guid=193940 AND pool_entry=12604;
DELETE FROM pool_gameobject WHERE guid=193941 AND pool_entry=12604;
DELETE FROM pool_gameobject WHERE guid=193942 AND pool_entry=12605;
DELETE FROM pool_gameobject WHERE guid=193943 AND pool_entry=12605;
DELETE FROM pool_gameobject WHERE guid=193944 AND pool_entry=12605;
DELETE FROM pool_gameobject WHERE guid=193945 AND pool_entry=12606;
DELETE FROM pool_gameobject WHERE guid=193946 AND pool_entry=12606;
DELETE FROM pool_gameobject WHERE guid=193947 AND pool_entry=12606;
DELETE FROM pool_gameobject WHERE guid=193948 AND pool_entry=12607;
DELETE FROM pool_gameobject WHERE guid=193949 AND pool_entry=12607;
DELETE FROM pool_gameobject WHERE guid=193950 AND pool_entry=12607;
DELETE FROM pool_gameobject WHERE guid=193951 AND pool_entry=12608;
DELETE FROM pool_gameobject WHERE guid=193952 AND pool_entry=12608;
DELETE FROM pool_gameobject WHERE guid=193953 AND pool_entry=12608;
DELETE FROM pool_gameobject WHERE guid=193954 AND pool_entry=12609;
DELETE FROM pool_gameobject WHERE guid=193955 AND pool_entry=12609;
DELETE FROM pool_gameobject WHERE guid=193956 AND pool_entry=12609;
DELETE FROM pool_gameobject WHERE guid=193957 AND pool_entry=12610;
DELETE FROM pool_gameobject WHERE guid=193958 AND pool_entry=12610;
DELETE FROM pool_gameobject WHERE guid=193959 AND pool_entry=12610;
DELETE FROM pool_gameobject WHERE guid=193960 AND pool_entry=12611;
DELETE FROM pool_gameobject WHERE guid=193961 AND pool_entry=12611;
DELETE FROM pool_gameobject WHERE guid=193962 AND pool_entry=12611;
DELETE FROM pool_gameobject WHERE guid=193963 AND pool_entry=12612;
DELETE FROM pool_gameobject WHERE guid=193964 AND pool_entry=12612;
DELETE FROM pool_gameobject WHERE guid=193965 AND pool_entry=12612;
DELETE FROM pool_gameobject WHERE guid=193966 AND pool_entry=12612;
DELETE FROM pool_gameobject WHERE guid=193967 AND pool_entry=12613;
DELETE FROM pool_gameobject WHERE guid=193968 AND pool_entry=12613;
DELETE FROM pool_gameobject WHERE guid=193969 AND pool_entry=12613;
DELETE FROM pool_gameobject WHERE guid=193970 AND pool_entry=12613;
DELETE FROM pool_gameobject WHERE guid=193971 AND pool_entry=12614;
DELETE FROM pool_gameobject WHERE guid=193972 AND pool_entry=12614;
DELETE FROM pool_gameobject WHERE guid=193973 AND pool_entry=12614;
DELETE FROM pool_gameobject WHERE guid=193974 AND pool_entry=12614;
DELETE FROM pool_gameobject WHERE guid=193975 AND pool_entry=12615;
DELETE FROM pool_gameobject WHERE guid=193976 AND pool_entry=12615;
DELETE FROM pool_gameobject WHERE guid=193977 AND pool_entry=12615;
DELETE FROM pool_gameobject WHERE guid=193978 AND pool_entry=12615;
DELETE FROM pool_gameobject WHERE guid=193979 AND pool_entry=12616;
DELETE FROM pool_gameobject WHERE guid=193980 AND pool_entry=12616;
DELETE FROM pool_gameobject WHERE guid=193981 AND pool_entry=12616;
DELETE FROM pool_gameobject WHERE guid=193982 AND pool_entry=12616;
DELETE FROM pool_gameobject WHERE guid=193983 AND pool_entry=12617;
DELETE FROM pool_gameobject WHERE guid=193984 AND pool_entry=12617;
DELETE FROM pool_gameobject WHERE guid=193985 AND pool_entry=12617;
DELETE FROM pool_gameobject WHERE guid=193986 AND pool_entry=12617;
DELETE FROM pool_gameobject WHERE guid=193987 AND pool_entry=12618;
DELETE FROM pool_gameobject WHERE guid=193988 AND pool_entry=12618;
DELETE FROM pool_gameobject WHERE guid=193989 AND pool_entry=12618;
DELETE FROM pool_gameobject WHERE guid=193990 AND pool_entry=12618;
DELETE FROM pool_gameobject WHERE guid=193991 AND pool_entry=12619;
DELETE FROM pool_gameobject WHERE guid=193992 AND pool_entry=12619;
DELETE FROM pool_gameobject WHERE guid=193993 AND pool_entry=12619;
DELETE FROM pool_gameobject WHERE guid=193994 AND pool_entry=12619;
DELETE FROM pool_gameobject WHERE guid=193995 AND pool_entry=12620;
DELETE FROM pool_gameobject WHERE guid=193996 AND pool_entry=12620;
DELETE FROM pool_gameobject WHERE guid=193997 AND pool_entry=12620;
DELETE FROM pool_gameobject WHERE guid=193998 AND pool_entry=12620;
DELETE FROM pool_gameobject WHERE guid=193999 AND pool_entry=12621;
DELETE FROM pool_gameobject WHERE guid=194000 AND pool_entry=12621;
DELETE FROM pool_gameobject WHERE guid=194001 AND pool_entry=12621;
DELETE FROM pool_gameobject WHERE guid=194002 AND pool_entry=12621;
DELETE FROM pool_gameobject WHERE guid=194003 AND pool_entry=12622;
DELETE FROM pool_gameobject WHERE guid=194004 AND pool_entry=12622;
DELETE FROM pool_gameobject WHERE guid=194005 AND pool_entry=12622;
DELETE FROM pool_gameobject WHERE guid=194006 AND pool_entry=12623;
DELETE FROM pool_gameobject WHERE guid=194007 AND pool_entry=12623;
DELETE FROM pool_gameobject WHERE guid=194008 AND pool_entry=12623;
DELETE FROM pool_gameobject WHERE guid=194009 AND pool_entry=12624;
DELETE FROM pool_gameobject WHERE guid=194010 AND pool_entry=12624;
DELETE FROM pool_gameobject WHERE guid=194011 AND pool_entry=12624;
DELETE FROM pool_gameobject WHERE guid=194012 AND pool_entry=12625;
DELETE FROM pool_gameobject WHERE guid=194013 AND pool_entry=12625;
DELETE FROM pool_gameobject WHERE guid=194014 AND pool_entry=12625;
DELETE FROM pool_gameobject WHERE guid=194015 AND pool_entry=12626;
DELETE FROM pool_gameobject WHERE guid=194016 AND pool_entry=12626;
DELETE FROM pool_gameobject WHERE guid=194017 AND pool_entry=12626;
DELETE FROM pool_gameobject WHERE guid=194018 AND pool_entry=12627;
DELETE FROM pool_gameobject WHERE guid=194019 AND pool_entry=12627;
DELETE FROM pool_gameobject WHERE guid=194020 AND pool_entry=12627;
DELETE FROM pool_gameobject WHERE guid=194021 AND pool_entry=12628;
DELETE FROM pool_gameobject WHERE guid=194022 AND pool_entry=12628;
DELETE FROM pool_gameobject WHERE guid=194023 AND pool_entry=12628;
DELETE FROM pool_gameobject WHERE guid=194024 AND pool_entry=12629;
DELETE FROM pool_gameobject WHERE guid=194025 AND pool_entry=12629;
DELETE FROM pool_gameobject WHERE guid=194026 AND pool_entry=12629;
DELETE FROM pool_gameobject WHERE guid=194027 AND pool_entry=12630;
DELETE FROM pool_gameobject WHERE guid=194028 AND pool_entry=12630;
DELETE FROM pool_gameobject WHERE guid=194029 AND pool_entry=12630;
DELETE FROM pool_gameobject WHERE guid=194030 AND pool_entry=12631;
DELETE FROM pool_gameobject WHERE guid=194031 AND pool_entry=12631;
DELETE FROM pool_gameobject WHERE guid=194032 AND pool_entry=12631;
DELETE FROM pool_gameobject WHERE guid=194033 AND pool_entry=12632;
DELETE FROM pool_gameobject WHERE guid=194034 AND pool_entry=12632;
DELETE FROM pool_gameobject WHERE guid=194035 AND pool_entry=12632;
DELETE FROM pool_gameobject WHERE guid=194036 AND pool_entry=12633;
DELETE FROM pool_gameobject WHERE guid=194037 AND pool_entry=12633;
DELETE FROM pool_gameobject WHERE guid=194038 AND pool_entry=12633;
DELETE FROM pool_gameobject WHERE guid=194039 AND pool_entry=12634;
DELETE FROM pool_gameobject WHERE guid=194040 AND pool_entry=12634;
DELETE FROM pool_gameobject WHERE guid=194041 AND pool_entry=12634;
DELETE FROM pool_gameobject WHERE guid=194042 AND pool_entry=12635;
DELETE FROM pool_gameobject WHERE guid=194043 AND pool_entry=12635;
DELETE FROM pool_gameobject WHERE guid=194044 AND pool_entry=12635;
DELETE FROM pool_gameobject WHERE guid=194045 AND pool_entry=12636;
DELETE FROM pool_gameobject WHERE guid=194046 AND pool_entry=12636;
DELETE FROM pool_gameobject WHERE guid=194047 AND pool_entry=12636;
DELETE FROM pool_gameobject WHERE guid=194048 AND pool_entry=12637;
DELETE FROM pool_gameobject WHERE guid=194049 AND pool_entry=12637;
DELETE FROM pool_gameobject WHERE guid=194050 AND pool_entry=12637;
DELETE FROM pool_gameobject WHERE guid=194051 AND pool_entry=12638;
DELETE FROM pool_gameobject WHERE guid=194052 AND pool_entry=12638;
DELETE FROM pool_gameobject WHERE guid=194053 AND pool_entry=12638;
DELETE FROM pool_gameobject WHERE guid=194054 AND pool_entry=12639;
DELETE FROM pool_gameobject WHERE guid=194055 AND pool_entry=12639;
DELETE FROM pool_gameobject WHERE guid=194056 AND pool_entry=12639;
DELETE FROM pool_gameobject WHERE guid=194057 AND pool_entry=12640;
DELETE FROM pool_gameobject WHERE guid=194058 AND pool_entry=12640;
DELETE FROM pool_gameobject WHERE guid=194059 AND pool_entry=12640;
DELETE FROM pool_gameobject WHERE guid=194060 AND pool_entry=12641;
DELETE FROM pool_gameobject WHERE guid=194061 AND pool_entry=12641;
DELETE FROM pool_gameobject WHERE guid=194062 AND pool_entry=12641;
DELETE FROM pool_gameobject WHERE guid=194063 AND pool_entry=12642;
DELETE FROM pool_gameobject WHERE guid=194064 AND pool_entry=12642;
DELETE FROM pool_gameobject WHERE guid=194065 AND pool_entry=12642;
DELETE FROM pool_gameobject WHERE guid=194066 AND pool_entry=12643;
DELETE FROM pool_gameobject WHERE guid=194067 AND pool_entry=12643;
DELETE FROM pool_gameobject WHERE guid=194068 AND pool_entry=12643;
DELETE FROM pool_gameobject WHERE guid=194069 AND pool_entry=12644;
DELETE FROM pool_gameobject WHERE guid=194070 AND pool_entry=12644;
DELETE FROM pool_gameobject WHERE guid=194071 AND pool_entry=12644;
DELETE FROM pool_gameobject WHERE guid=194072 AND pool_entry=12645;
DELETE FROM pool_gameobject WHERE guid=194073 AND pool_entry=12645;
DELETE FROM pool_gameobject WHERE guid=194074 AND pool_entry=12645;
DELETE FROM pool_gameobject WHERE guid=194075 AND pool_entry=12646;
DELETE FROM pool_gameobject WHERE guid=194076 AND pool_entry=12646;
DELETE FROM pool_gameobject WHERE guid=194077 AND pool_entry=12646;
DELETE FROM pool_gameobject WHERE guid=194078 AND pool_entry=12647;
DELETE FROM pool_gameobject WHERE guid=194079 AND pool_entry=12647;
DELETE FROM pool_gameobject WHERE guid=194080 AND pool_entry=12647;
DELETE FROM pool_gameobject WHERE guid=194081 AND pool_entry=12648;
DELETE FROM pool_gameobject WHERE guid=194082 AND pool_entry=12648;
DELETE FROM pool_gameobject WHERE guid=194083 AND pool_entry=12648;
DELETE FROM pool_gameobject WHERE guid=194084 AND pool_entry=12649;
DELETE FROM pool_gameobject WHERE guid=194085 AND pool_entry=12649;
DELETE FROM pool_gameobject WHERE guid=194086 AND pool_entry=12649;
DELETE FROM pool_gameobject WHERE guid=194087 AND pool_entry=12650;
DELETE FROM pool_gameobject WHERE guid=194088 AND pool_entry=12650;
DELETE FROM pool_gameobject WHERE guid=194089 AND pool_entry=12650;
DELETE FROM pool_gameobject WHERE guid=194090 AND pool_entry=12651;
DELETE FROM pool_gameobject WHERE guid=194091 AND pool_entry=12651;
DELETE FROM pool_gameobject WHERE guid=194092 AND pool_entry=12651;
DELETE FROM pool_gameobject WHERE guid=194093 AND pool_entry=12652;
DELETE FROM pool_gameobject WHERE guid=194094 AND pool_entry=12652;
DELETE FROM pool_gameobject WHERE guid=194095 AND pool_entry=12652;
DELETE FROM pool_gameobject WHERE guid=194096 AND pool_entry=12653;
DELETE FROM pool_gameobject WHERE guid=194097 AND pool_entry=12653;
DELETE FROM pool_gameobject WHERE guid=194098 AND pool_entry=12653;
DELETE FROM pool_gameobject WHERE guid=194099 AND pool_entry=12654;
DELETE FROM pool_gameobject WHERE guid=194100 AND pool_entry=12654;
DELETE FROM pool_gameobject WHERE guid=194101 AND pool_entry=12654;
DELETE FROM pool_gameobject WHERE guid=194102 AND pool_entry=12655;
DELETE FROM pool_gameobject WHERE guid=194103 AND pool_entry=12655;
DELETE FROM pool_gameobject WHERE guid=194104 AND pool_entry=12655;
DELETE FROM pool_gameobject WHERE guid=194105 AND pool_entry=12656;
DELETE FROM pool_gameobject WHERE guid=194106 AND pool_entry=12656;
DELETE FROM pool_gameobject WHERE guid=194107 AND pool_entry=12656;
DELETE FROM pool_gameobject WHERE guid=194108 AND pool_entry=12657;
DELETE FROM pool_gameobject WHERE guid=194109 AND pool_entry=12657;
DELETE FROM pool_gameobject WHERE guid=194110 AND pool_entry=12657;
DELETE FROM pool_gameobject WHERE guid=194111 AND pool_entry=12658;
DELETE FROM pool_gameobject WHERE guid=194112 AND pool_entry=12658;
DELETE FROM pool_gameobject WHERE guid=194113 AND pool_entry=12658;
DELETE FROM pool_gameobject WHERE guid=194114 AND pool_entry=12659;
DELETE FROM pool_gameobject WHERE guid=194115 AND pool_entry=12659;
DELETE FROM pool_gameobject WHERE guid=194116 AND pool_entry=12659;
DELETE FROM pool_gameobject WHERE guid=194117 AND pool_entry=12659;
DELETE FROM pool_gameobject WHERE guid=194118 AND pool_entry=12660;
DELETE FROM pool_gameobject WHERE guid=194119 AND pool_entry=12660;
DELETE FROM pool_gameobject WHERE guid=194120 AND pool_entry=12660;
DELETE FROM pool_gameobject WHERE guid=194121 AND pool_entry=12660;
DELETE FROM pool_gameobject WHERE guid=194122 AND pool_entry=12661;
DELETE FROM pool_gameobject WHERE guid=194123 AND pool_entry=12661;
DELETE FROM pool_gameobject WHERE guid=194124 AND pool_entry=12661;
DELETE FROM pool_gameobject WHERE guid=194125 AND pool_entry=12661;
DELETE FROM pool_gameobject WHERE guid=194126 AND pool_entry=12662;
DELETE FROM pool_gameobject WHERE guid=194127 AND pool_entry=12662;
DELETE FROM pool_gameobject WHERE guid=194128 AND pool_entry=12662;
DELETE FROM pool_gameobject WHERE guid=194129 AND pool_entry=12662;
DELETE FROM pool_gameobject WHERE guid=194130 AND pool_entry=12663;
DELETE FROM pool_gameobject WHERE guid=194131 AND pool_entry=12663;
DELETE FROM pool_gameobject WHERE guid=194132 AND pool_entry=12663;
DELETE FROM pool_gameobject WHERE guid=194133 AND pool_entry=12663;
DELETE FROM pool_gameobject WHERE guid=194134 AND pool_entry=12664;
DELETE FROM pool_gameobject WHERE guid=194135 AND pool_entry=12664;
DELETE FROM pool_gameobject WHERE guid=194136 AND pool_entry=12664;
DELETE FROM pool_gameobject WHERE guid=194137 AND pool_entry=12664;
DELETE FROM pool_gameobject WHERE guid=194138 AND pool_entry=12665;
DELETE FROM pool_gameobject WHERE guid=194139 AND pool_entry=12665;
DELETE FROM pool_gameobject WHERE guid=194140 AND pool_entry=12665;
DELETE FROM pool_gameobject WHERE guid=194141 AND pool_entry=12665;
DELETE FROM pool_gameobject WHERE guid=194142 AND pool_entry=12666;
DELETE FROM pool_gameobject WHERE guid=194143 AND pool_entry=12666;
DELETE FROM pool_gameobject WHERE guid=194144 AND pool_entry=12666;
DELETE FROM pool_gameobject WHERE guid=194145 AND pool_entry=12666;
DELETE FROM pool_gameobject WHERE guid=194146 AND pool_entry=12667;
DELETE FROM pool_gameobject WHERE guid=194147 AND pool_entry=12667;
DELETE FROM pool_gameobject WHERE guid=194148 AND pool_entry=12667;
DELETE FROM pool_gameobject WHERE guid=194149 AND pool_entry=12667;
DELETE FROM pool_gameobject WHERE guid=194150 AND pool_entry=12668;
DELETE FROM pool_gameobject WHERE guid=194151 AND pool_entry=12668;
DELETE FROM pool_gameobject WHERE guid=194152 AND pool_entry=12669;
DELETE FROM pool_gameobject WHERE guid=194153 AND pool_entry=12669;
DELETE FROM pool_gameobject WHERE guid=194154 AND pool_entry=12670;
DELETE FROM pool_gameobject WHERE guid=194155 AND pool_entry=12670;
DELETE FROM pool_gameobject WHERE guid=194156 AND pool_entry=12671;
DELETE FROM pool_gameobject WHERE guid=194157 AND pool_entry=12671;
DELETE FROM pool_gameobject WHERE guid=194158 AND pool_entry=12672;
DELETE FROM pool_gameobject WHERE guid=194159 AND pool_entry=12672;
DELETE FROM pool_gameobject WHERE guid=194160 AND pool_entry=12673;
DELETE FROM pool_gameobject WHERE guid=194161 AND pool_entry=12673;
DELETE FROM pool_gameobject WHERE guid=194162 AND pool_entry=12673;
DELETE FROM pool_gameobject WHERE guid=194163 AND pool_entry=12674;
DELETE FROM pool_gameobject WHERE guid=194164 AND pool_entry=12674;
DELETE FROM pool_gameobject WHERE guid=194165 AND pool_entry=12674;
DELETE FROM pool_gameobject WHERE guid=194166 AND pool_entry=12675;
DELETE FROM pool_gameobject WHERE guid=194167 AND pool_entry=12675;
DELETE FROM pool_gameobject WHERE guid=194168 AND pool_entry=12675;
DELETE FROM pool_gameobject WHERE guid=194169 AND pool_entry=12676;
DELETE FROM pool_gameobject WHERE guid=194170 AND pool_entry=12676;
DELETE FROM pool_gameobject WHERE guid=194171 AND pool_entry=12676;
DELETE FROM pool_gameobject WHERE guid=194172 AND pool_entry=12677;
DELETE FROM pool_gameobject WHERE guid=194173 AND pool_entry=12677;
DELETE FROM pool_gameobject WHERE guid=194174 AND pool_entry=12677;
DELETE FROM pool_gameobject WHERE guid=194175 AND pool_entry=12677;
DELETE FROM pool_gameobject WHERE guid=194176 AND pool_entry=12678;
DELETE FROM pool_gameobject WHERE guid=194177 AND pool_entry=12678;
DELETE FROM pool_gameobject WHERE guid=194178 AND pool_entry=12678;
DELETE FROM pool_gameobject WHERE guid=194179 AND pool_entry=12678;
DELETE FROM pool_gameobject WHERE guid=194180 AND pool_entry=12679;
DELETE FROM pool_gameobject WHERE guid=194181 AND pool_entry=12679;
DELETE FROM pool_gameobject WHERE guid=194182 AND pool_entry=12679;
DELETE FROM pool_gameobject WHERE guid=194183 AND pool_entry=12679;
DELETE FROM pool_gameobject WHERE guid=194184 AND pool_entry=12680;
DELETE FROM pool_gameobject WHERE guid=194185 AND pool_entry=12680;
DELETE FROM pool_gameobject WHERE guid=194186 AND pool_entry=12680;
DELETE FROM pool_gameobject WHERE guid=194187 AND pool_entry=12680;
DELETE FROM pool_gameobject WHERE guid=194188 AND pool_entry=12681;
DELETE FROM pool_gameobject WHERE guid=194189 AND pool_entry=12681;
DELETE FROM pool_gameobject WHERE guid=194190 AND pool_entry=12681;
DELETE FROM pool_gameobject WHERE guid=194191 AND pool_entry=12681;
DELETE FROM pool_gameobject WHERE guid=194192 AND pool_entry=12682;
DELETE FROM pool_gameobject WHERE guid=194193 AND pool_entry=12682;
DELETE FROM pool_gameobject WHERE guid=194194 AND pool_entry=12682;
DELETE FROM pool_gameobject WHERE guid=194195 AND pool_entry=12682;
DELETE FROM pool_gameobject WHERE guid=194196 AND pool_entry=12683;
DELETE FROM pool_gameobject WHERE guid=194197 AND pool_entry=12683;
DELETE FROM pool_gameobject WHERE guid=194198 AND pool_entry=12683;
DELETE FROM pool_gameobject WHERE guid=194199 AND pool_entry=12683;
DELETE FROM pool_gameobject WHERE guid=194200 AND pool_entry=12684;
DELETE FROM pool_gameobject WHERE guid=194201 AND pool_entry=12684;
DELETE FROM pool_gameobject WHERE guid=194202 AND pool_entry=12684;
DELETE FROM pool_gameobject WHERE guid=194203 AND pool_entry=12684;
DELETE FROM pool_gameobject WHERE guid=194204 AND pool_entry=12685;
DELETE FROM pool_gameobject WHERE guid=194205 AND pool_entry=12685;
DELETE FROM pool_gameobject WHERE guid=194206 AND pool_entry=12685;
DELETE FROM pool_gameobject WHERE guid=194207 AND pool_entry=12685;
DELETE FROM pool_gameobject WHERE guid=194208 AND pool_entry=12686;
DELETE FROM pool_gameobject WHERE guid=194209 AND pool_entry=12686;
DELETE FROM pool_gameobject WHERE guid=194210 AND pool_entry=12686;
DELETE FROM pool_gameobject WHERE guid=194211 AND pool_entry=12687;
DELETE FROM pool_gameobject WHERE guid=194212 AND pool_entry=12687;
DELETE FROM pool_gameobject WHERE guid=194213 AND pool_entry=12687;
DELETE FROM pool_gameobject WHERE guid=194214 AND pool_entry=12688;
DELETE FROM pool_gameobject WHERE guid=194215 AND pool_entry=12688;
DELETE FROM pool_gameobject WHERE guid=194216 AND pool_entry=12688;
DELETE FROM pool_gameobject WHERE guid=194217 AND pool_entry=12689;
DELETE FROM pool_gameobject WHERE guid=194218 AND pool_entry=12689;
DELETE FROM pool_gameobject WHERE guid=194219 AND pool_entry=12689;
DELETE FROM pool_gameobject WHERE guid=194220 AND pool_entry=12690;
DELETE FROM pool_gameobject WHERE guid=194221 AND pool_entry=12690;
DELETE FROM pool_gameobject WHERE guid=194222 AND pool_entry=12690;
DELETE FROM pool_gameobject WHERE guid=194223 AND pool_entry=12691;
DELETE FROM pool_gameobject WHERE guid=194224 AND pool_entry=12691;
DELETE FROM pool_gameobject WHERE guid=194225 AND pool_entry=12691;
DELETE FROM pool_gameobject WHERE guid=194226 AND pool_entry=12692;
DELETE FROM pool_gameobject WHERE guid=194227 AND pool_entry=12692;
DELETE FROM pool_gameobject WHERE guid=194228 AND pool_entry=12692;
DELETE FROM pool_gameobject WHERE guid=194229 AND pool_entry=12693;
DELETE FROM pool_gameobject WHERE guid=194230 AND pool_entry=12693;
DELETE FROM pool_gameobject WHERE guid=194231 AND pool_entry=12693;
DELETE FROM pool_gameobject WHERE guid=194232 AND pool_entry=12694;
DELETE FROM pool_gameobject WHERE guid=194233 AND pool_entry=12694;
DELETE FROM pool_gameobject WHERE guid=194234 AND pool_entry=12694;
DELETE FROM pool_gameobject WHERE guid=194235 AND pool_entry=12695;
DELETE FROM pool_gameobject WHERE guid=194236 AND pool_entry=12695;
DELETE FROM pool_gameobject WHERE guid=194237 AND pool_entry=12695;
DELETE FROM pool_gameobject WHERE guid=194238 AND pool_entry=12696;
DELETE FROM pool_gameobject WHERE guid=194239 AND pool_entry=12696;
DELETE FROM pool_gameobject WHERE guid=194240 AND pool_entry=12696;
DELETE FROM pool_gameobject WHERE guid=194241 AND pool_entry=12697;
DELETE FROM pool_gameobject WHERE guid=194242 AND pool_entry=12697;
DELETE FROM pool_gameobject WHERE guid=194243 AND pool_entry=12697;
DELETE FROM pool_gameobject WHERE guid=194244 AND pool_entry=12698;
DELETE FROM pool_gameobject WHERE guid=194245 AND pool_entry=12698;
DELETE FROM pool_gameobject WHERE guid=194246 AND pool_entry=12698;
DELETE FROM pool_gameobject WHERE guid=194247 AND pool_entry=12698;
DELETE FROM pool_gameobject WHERE guid=194248 AND pool_entry=12699;
DELETE FROM pool_gameobject WHERE guid=194249 AND pool_entry=12699;
DELETE FROM pool_gameobject WHERE guid=194250 AND pool_entry=12699;
DELETE FROM pool_gameobject WHERE guid=194251 AND pool_entry=12699;
DELETE FROM pool_gameobject WHERE guid=194252 AND pool_entry=12700;
DELETE FROM pool_gameobject WHERE guid=194253 AND pool_entry=12700;
DELETE FROM pool_gameobject WHERE guid=194254 AND pool_entry=12700;
DELETE FROM pool_gameobject WHERE guid=194255 AND pool_entry=12700;
DELETE FROM pool_gameobject WHERE guid=194256 AND pool_entry=12701;
DELETE FROM pool_gameobject WHERE guid=194257 AND pool_entry=12701;
DELETE FROM pool_gameobject WHERE guid=194258 AND pool_entry=12701;
DELETE FROM pool_gameobject WHERE guid=194259 AND pool_entry=12701;
DELETE FROM pool_gameobject WHERE guid=194260 AND pool_entry=12702;
DELETE FROM pool_gameobject WHERE guid=194261 AND pool_entry=12702;
DELETE FROM pool_gameobject WHERE guid=194262 AND pool_entry=12702;
DELETE FROM pool_gameobject WHERE guid=194263 AND pool_entry=12702;
DELETE FROM pool_gameobject WHERE guid=194264 AND pool_entry=12703;
DELETE FROM pool_gameobject WHERE guid=194265 AND pool_entry=12703;
DELETE FROM pool_gameobject WHERE guid=194266 AND pool_entry=12703;
DELETE FROM pool_gameobject WHERE guid=194267 AND pool_entry=12703;
DELETE FROM pool_gameobject WHERE guid=194268 AND pool_entry=12704;
DELETE FROM pool_gameobject WHERE guid=194269 AND pool_entry=12704;
DELETE FROM pool_gameobject WHERE guid=194270 AND pool_entry=12704;
DELETE FROM pool_gameobject WHERE guid=194271 AND pool_entry=12704;
DELETE FROM pool_gameobject WHERE guid=194272 AND pool_entry=12705;
DELETE FROM pool_gameobject WHERE guid=194273 AND pool_entry=12705;
DELETE FROM pool_gameobject WHERE guid=194274 AND pool_entry=12705;
DELETE FROM pool_gameobject WHERE guid=194275 AND pool_entry=12705;
DELETE FROM pool_gameobject WHERE guid=194276 AND pool_entry=12706;
DELETE FROM pool_gameobject WHERE guid=194277 AND pool_entry=12706;
DELETE FROM pool_gameobject WHERE guid=194278 AND pool_entry=12706;
DELETE FROM pool_gameobject WHERE guid=194279 AND pool_entry=12706;
DELETE FROM pool_gameobject WHERE guid=194280 AND pool_entry=12707;
DELETE FROM pool_gameobject WHERE guid=194281 AND pool_entry=12707;
DELETE FROM pool_gameobject WHERE guid=194282 AND pool_entry=12707;
DELETE FROM pool_gameobject WHERE guid=194283 AND pool_entry=12707;
DELETE FROM pool_gameobject WHERE guid=194284 AND pool_entry=12708;
DELETE FROM pool_gameobject WHERE guid=194285 AND pool_entry=12708;
DELETE FROM pool_gameobject WHERE guid=194286 AND pool_entry=12708;
DELETE FROM pool_gameobject WHERE guid=194287 AND pool_entry=12708;
DELETE FROM pool_gameobject WHERE guid=194288 AND pool_entry=12709;
DELETE FROM pool_gameobject WHERE guid=194289 AND pool_entry=12709;
DELETE FROM pool_gameobject WHERE guid=194290 AND pool_entry=12709;
DELETE FROM pool_gameobject WHERE guid=194291 AND pool_entry=12709;
DELETE FROM pool_gameobject WHERE guid=194292 AND pool_entry=12710;
DELETE FROM pool_gameobject WHERE guid=194293 AND pool_entry=12710;
DELETE FROM pool_gameobject WHERE guid=194294 AND pool_entry=12710;
DELETE FROM pool_gameobject WHERE guid=194295 AND pool_entry=12710;
DELETE FROM pool_gameobject WHERE guid=194296 AND pool_entry=12711;
DELETE FROM pool_gameobject WHERE guid=194297 AND pool_entry=12711;
DELETE FROM pool_gameobject WHERE guid=194298 AND pool_entry=12711;
DELETE FROM pool_gameobject WHERE guid=194299 AND pool_entry=12711;
DELETE FROM pool_gameobject WHERE guid=194300 AND pool_entry=12712;
DELETE FROM pool_gameobject WHERE guid=194301 AND pool_entry=12712;
DELETE FROM pool_gameobject WHERE guid=194302 AND pool_entry=12712;
DELETE FROM pool_gameobject WHERE guid=194303 AND pool_entry=12712;
DELETE FROM pool_gameobject WHERE guid=194304 AND pool_entry=12713;
DELETE FROM pool_gameobject WHERE guid=194305 AND pool_entry=12713;
DELETE FROM pool_gameobject WHERE guid=194306 AND pool_entry=12713;
DELETE FROM pool_gameobject WHERE guid=194307 AND pool_entry=12713;
DELETE FROM pool_gameobject WHERE guid=194308 AND pool_entry=12714;
DELETE FROM pool_gameobject WHERE guid=194309 AND pool_entry=12714;
DELETE FROM pool_gameobject WHERE guid=194310 AND pool_entry=12714;
DELETE FROM pool_gameobject WHERE guid=194311 AND pool_entry=12714;
DELETE FROM pool_gameobject WHERE guid=194312 AND pool_entry=12715;
DELETE FROM pool_gameobject WHERE guid=194313 AND pool_entry=12715;
DELETE FROM pool_gameobject WHERE guid=194314 AND pool_entry=12715;
DELETE FROM pool_gameobject WHERE guid=194315 AND pool_entry=12715;
DELETE FROM pool_gameobject WHERE guid=194316 AND pool_entry=12716;
DELETE FROM pool_gameobject WHERE guid=194317 AND pool_entry=12716;
DELETE FROM pool_gameobject WHERE guid=194318 AND pool_entry=12716;
DELETE FROM pool_gameobject WHERE guid=194319 AND pool_entry=12716;
DELETE FROM pool_gameobject WHERE guid=194320 AND pool_entry=12717;
DELETE FROM pool_gameobject WHERE guid=194321 AND pool_entry=12717;
DELETE FROM pool_gameobject WHERE guid=194322 AND pool_entry=12717;
DELETE FROM pool_gameobject WHERE guid=194323 AND pool_entry=12717;
DELETE FROM pool_gameobject WHERE guid=194324 AND pool_entry=12718;
DELETE FROM pool_gameobject WHERE guid=194325 AND pool_entry=12718;
DELETE FROM pool_gameobject WHERE guid=194326 AND pool_entry=12718;
DELETE FROM pool_gameobject WHERE guid=194327 AND pool_entry=12718;
DELETE FROM pool_gameobject WHERE guid=194328 AND pool_entry=12719;
DELETE FROM pool_gameobject WHERE guid=194329 AND pool_entry=12719;
DELETE FROM pool_gameobject WHERE guid=194330 AND pool_entry=12719;
DELETE FROM pool_gameobject WHERE guid=194331 AND pool_entry=12719;
DELETE FROM pool_gameobject WHERE guid=194332 AND pool_entry=12720;
DELETE FROM pool_gameobject WHERE guid=194333 AND pool_entry=12720;
DELETE FROM pool_gameobject WHERE guid=194334 AND pool_entry=12720;
DELETE FROM pool_gameobject WHERE guid=194335 AND pool_entry=12720;
DELETE FROM pool_gameobject WHERE guid=194336 AND pool_entry=12721;
DELETE FROM pool_gameobject WHERE guid=194337 AND pool_entry=12721;
DELETE FROM pool_gameobject WHERE guid=194338 AND pool_entry=12721;
DELETE FROM pool_gameobject WHERE guid=194339 AND pool_entry=12721;
DELETE FROM pool_gameobject WHERE guid=194340 AND pool_entry=12722;
DELETE FROM pool_gameobject WHERE guid=194341 AND pool_entry=12722;
DELETE FROM pool_gameobject WHERE guid=194342 AND pool_entry=12722;
DELETE FROM pool_gameobject WHERE guid=194343 AND pool_entry=12722;
DELETE FROM pool_gameobject WHERE guid=194344 AND pool_entry=12723;
DELETE FROM pool_gameobject WHERE guid=194345 AND pool_entry=12723;
DELETE FROM pool_gameobject WHERE guid=194346 AND pool_entry=12723;
DELETE FROM pool_gameobject WHERE guid=194347 AND pool_entry=12723;
DELETE FROM pool_gameobject WHERE guid=194348 AND pool_entry=12724;
DELETE FROM pool_gameobject WHERE guid=194349 AND pool_entry=12724;
DELETE FROM pool_gameobject WHERE guid=194350 AND pool_entry=12724;
DELETE FROM pool_gameobject WHERE guid=194351 AND pool_entry=12724;
DELETE FROM pool_gameobject WHERE guid=194352 AND pool_entry=12725;
DELETE FROM pool_gameobject WHERE guid=194353 AND pool_entry=12725;
DELETE FROM pool_gameobject WHERE guid=194354 AND pool_entry=12725;
DELETE FROM pool_gameobject WHERE guid=194355 AND pool_entry=12725;
DELETE FROM pool_gameobject WHERE guid=194356 AND pool_entry=12726;
DELETE FROM pool_gameobject WHERE guid=194357 AND pool_entry=12726;
DELETE FROM pool_gameobject WHERE guid=194358 AND pool_entry=12726;
DELETE FROM pool_gameobject WHERE guid=194359 AND pool_entry=12726;
DELETE FROM pool_gameobject WHERE guid=194360 AND pool_entry=12727;
DELETE FROM pool_gameobject WHERE guid=194361 AND pool_entry=12727;
DELETE FROM pool_gameobject WHERE guid=194362 AND pool_entry=12727;
DELETE FROM pool_gameobject WHERE guid=194363 AND pool_entry=12727;
DELETE FROM pool_gameobject WHERE guid=194364 AND pool_entry=12728;
DELETE FROM pool_gameobject WHERE guid=194365 AND pool_entry=12728;
DELETE FROM pool_gameobject WHERE guid=194366 AND pool_entry=12729;
DELETE FROM pool_gameobject WHERE guid=194367 AND pool_entry=12729;
DELETE FROM pool_gameobject WHERE guid=194368 AND pool_entry=12730;
DELETE FROM pool_gameobject WHERE guid=194369 AND pool_entry=12730;
DELETE FROM pool_gameobject WHERE guid=194370 AND pool_entry=12731;
DELETE FROM pool_gameobject WHERE guid=194371 AND pool_entry=12731;
DELETE FROM pool_gameobject WHERE guid=194372 AND pool_entry=12731;
DELETE FROM pool_gameobject WHERE guid=194373 AND pool_entry=12731;
DELETE FROM pool_gameobject WHERE guid=194374 AND pool_entry=12732;
DELETE FROM pool_gameobject WHERE guid=194375 AND pool_entry=12732;
DELETE FROM pool_gameobject WHERE guid=194376 AND pool_entry=12732;
DELETE FROM pool_gameobject WHERE guid=194377 AND pool_entry=12732;
DELETE FROM pool_gameobject WHERE guid=194378 AND pool_entry=12733;
DELETE FROM pool_gameobject WHERE guid=194379 AND pool_entry=12733;
DELETE FROM pool_gameobject WHERE guid=194380 AND pool_entry=12733;
DELETE FROM pool_gameobject WHERE guid=194381 AND pool_entry=12733;
DELETE FROM pool_gameobject WHERE guid=194382 AND pool_entry=12734;
DELETE FROM pool_gameobject WHERE guid=194383 AND pool_entry=12734;
DELETE FROM pool_gameobject WHERE guid=194384 AND pool_entry=12734;
DELETE FROM pool_gameobject WHERE guid=194385 AND pool_entry=12734;
DELETE FROM pool_gameobject WHERE guid=194386 AND pool_entry=12735;
DELETE FROM pool_gameobject WHERE guid=194387 AND pool_entry=12735;
DELETE FROM pool_gameobject WHERE guid=194388 AND pool_entry=12735;
DELETE FROM pool_gameobject WHERE guid=194389 AND pool_entry=12735;
DELETE FROM pool_gameobject WHERE guid=194390 AND pool_entry=12736;
DELETE FROM pool_gameobject WHERE guid=194391 AND pool_entry=12736;
DELETE FROM pool_gameobject WHERE guid=194392 AND pool_entry=12736;
DELETE FROM pool_gameobject WHERE guid=194393 AND pool_entry=12737;
DELETE FROM pool_gameobject WHERE guid=194394 AND pool_entry=12737;
DELETE FROM pool_gameobject WHERE guid=194395 AND pool_entry=12737;
DELETE FROM pool_gameobject WHERE guid=194396 AND pool_entry=12738;
DELETE FROM pool_gameobject WHERE guid=194397 AND pool_entry=12738;
DELETE FROM pool_gameobject WHERE guid=194398 AND pool_entry=12738;
DELETE FROM pool_gameobject WHERE guid=194399 AND pool_entry=12738;
DELETE FROM pool_gameobject WHERE guid=194400 AND pool_entry=12739;
DELETE FROM pool_gameobject WHERE guid=194401 AND pool_entry=12739;
DELETE FROM pool_gameobject WHERE guid=194402 AND pool_entry=12739;
DELETE FROM pool_gameobject WHERE guid=194403 AND pool_entry=12739;
DELETE FROM pool_gameobject WHERE guid=194404 AND pool_entry=12740;
DELETE FROM pool_gameobject WHERE guid=194405 AND pool_entry=12740;
DELETE FROM pool_gameobject WHERE guid=194406 AND pool_entry=12740;
DELETE FROM pool_gameobject WHERE guid=194407 AND pool_entry=12740;
DELETE FROM pool_gameobject WHERE guid=194408 AND pool_entry=12741;
DELETE FROM pool_gameobject WHERE guid=194409 AND pool_entry=12741;
DELETE FROM pool_gameobject WHERE guid=194410 AND pool_entry=12741;
DELETE FROM pool_gameobject WHERE guid=194411 AND pool_entry=12741;
DELETE FROM pool_gameobject WHERE guid=194412 AND pool_entry=12742;
DELETE FROM pool_gameobject WHERE guid=194413 AND pool_entry=12742;
DELETE FROM pool_gameobject WHERE guid=194414 AND pool_entry=12742;
DELETE FROM pool_gameobject WHERE guid=194415 AND pool_entry=12742;
DELETE FROM pool_gameobject WHERE guid=194416 AND pool_entry=12743;
DELETE FROM pool_gameobject WHERE guid=194417 AND pool_entry=12743;
DELETE FROM pool_gameobject WHERE guid=194418 AND pool_entry=12743;
DELETE FROM pool_gameobject WHERE guid=194419 AND pool_entry=12743;
DELETE FROM pool_gameobject WHERE guid=194420 AND pool_entry=12744;
DELETE FROM pool_gameobject WHERE guid=194421 AND pool_entry=12744;
DELETE FROM pool_gameobject WHERE guid=194422 AND pool_entry=12744;
DELETE FROM pool_gameobject WHERE guid=194423 AND pool_entry=12744;
DELETE FROM pool_gameobject WHERE guid=194424 AND pool_entry=12745;
DELETE FROM pool_gameobject WHERE guid=194425 AND pool_entry=12745;
DELETE FROM pool_gameobject WHERE guid=194426 AND pool_entry=12745;
DELETE FROM pool_gameobject WHERE guid=194427 AND pool_entry=12745;
DELETE FROM pool_gameobject WHERE guid=194428 AND pool_entry=12746;
DELETE FROM pool_gameobject WHERE guid=194429 AND pool_entry=12746;
DELETE FROM pool_gameobject WHERE guid=194430 AND pool_entry=12746;
DELETE FROM pool_gameobject WHERE guid=194431 AND pool_entry=12746;
DELETE FROM pool_gameobject WHERE guid=194432 AND pool_entry=12747;
DELETE FROM pool_gameobject WHERE guid=194433 AND pool_entry=12747;
DELETE FROM pool_gameobject WHERE guid=194434 AND pool_entry=12747;
DELETE FROM pool_gameobject WHERE guid=194435 AND pool_entry=12747;
DELETE FROM pool_gameobject WHERE guid=194436 AND pool_entry=12748;
DELETE FROM pool_gameobject WHERE guid=194437 AND pool_entry=12748;
DELETE FROM pool_gameobject WHERE guid=194438 AND pool_entry=12748;
DELETE FROM pool_gameobject WHERE guid=194439 AND pool_entry=12748;
DELETE FROM pool_gameobject WHERE guid=194440 AND pool_entry=12749;
DELETE FROM pool_gameobject WHERE guid=194441 AND pool_entry=12749;
DELETE FROM pool_gameobject WHERE guid=194442 AND pool_entry=12749;
DELETE FROM pool_gameobject WHERE guid=194443 AND pool_entry=12749;
DELETE FROM pool_gameobject WHERE guid=194444 AND pool_entry=12750;
DELETE FROM pool_gameobject WHERE guid=194445 AND pool_entry=12750;
DELETE FROM pool_gameobject WHERE guid=194446 AND pool_entry=12750;
DELETE FROM pool_gameobject WHERE guid=194447 AND pool_entry=12750;
DELETE FROM pool_gameobject WHERE guid=194448 AND pool_entry=12751;
DELETE FROM pool_gameobject WHERE guid=194449 AND pool_entry=12751;
DELETE FROM pool_gameobject WHERE guid=194450 AND pool_entry=12751;
DELETE FROM pool_gameobject WHERE guid=194451 AND pool_entry=12751;
DELETE FROM pool_gameobject WHERE guid=194452 AND pool_entry=12752;
DELETE FROM pool_gameobject WHERE guid=194453 AND pool_entry=12752;
DELETE FROM pool_gameobject WHERE guid=194454 AND pool_entry=12752;
DELETE FROM pool_gameobject WHERE guid=194455 AND pool_entry=12753;
DELETE FROM pool_gameobject WHERE guid=194456 AND pool_entry=12753;
DELETE FROM pool_gameobject WHERE guid=194457 AND pool_entry=12754;
DELETE FROM pool_gameobject WHERE guid=194458 AND pool_entry=12754;
DELETE FROM pool_gameobject WHERE guid=194459 AND pool_entry=12755;
DELETE FROM pool_gameobject WHERE guid=194460 AND pool_entry=12755;
DELETE FROM pool_gameobject WHERE guid=194461 AND pool_entry=12756;
DELETE FROM pool_gameobject WHERE guid=194462 AND pool_entry=12756;
DELETE FROM pool_gameobject WHERE guid=194463 AND pool_entry=12757;
DELETE FROM pool_gameobject WHERE guid=194464 AND pool_entry=12757;
DELETE FROM pool_gameobject WHERE guid=194465 AND pool_entry=12757;
DELETE FROM pool_gameobject WHERE guid=194466 AND pool_entry=12758;
DELETE FROM pool_gameobject WHERE guid=194467 AND pool_entry=12758;
DELETE FROM pool_gameobject WHERE guid=194468 AND pool_entry=12758;
DELETE FROM pool_gameobject WHERE guid=194469 AND pool_entry=12759;
DELETE FROM pool_gameobject WHERE guid=194470 AND pool_entry=12759;
DELETE FROM pool_gameobject WHERE guid=194471 AND pool_entry=12759;
DELETE FROM pool_gameobject WHERE guid=194472 AND pool_entry=12760;
DELETE FROM pool_gameobject WHERE guid=194473 AND pool_entry=12760;
DELETE FROM pool_gameobject WHERE guid=194474 AND pool_entry=12760;
DELETE FROM pool_gameobject WHERE guid=194475 AND pool_entry=12761;
DELETE FROM pool_gameobject WHERE guid=194476 AND pool_entry=12761;
DELETE FROM pool_gameobject WHERE guid=194477 AND pool_entry=12761;
DELETE FROM pool_gameobject WHERE guid=194478 AND pool_entry=12762;
DELETE FROM pool_gameobject WHERE guid=194479 AND pool_entry=12762;
DELETE FROM pool_gameobject WHERE guid=194480 AND pool_entry=12762;
DELETE FROM pool_gameobject WHERE guid=194481 AND pool_entry=12763;
DELETE FROM pool_gameobject WHERE guid=194482 AND pool_entry=12763;
DELETE FROM pool_gameobject WHERE guid=194483 AND pool_entry=12763;
DELETE FROM pool_gameobject WHERE guid=194484 AND pool_entry=12764;
DELETE FROM pool_gameobject WHERE guid=194485 AND pool_entry=12764;
DELETE FROM pool_gameobject WHERE guid=194486 AND pool_entry=12764;
DELETE FROM pool_gameobject WHERE guid=194487 AND pool_entry=12765;
DELETE FROM pool_gameobject WHERE guid=194488 AND pool_entry=12765;
DELETE FROM pool_gameobject WHERE guid=194489 AND pool_entry=12765;
DELETE FROM pool_gameobject WHERE guid=194490 AND pool_entry=12765;
DELETE FROM pool_gameobject WHERE guid=194491 AND pool_entry=12766;
DELETE FROM pool_gameobject WHERE guid=194492 AND pool_entry=12766;
DELETE FROM pool_gameobject WHERE guid=194493 AND pool_entry=12766;
DELETE FROM pool_gameobject WHERE guid=194494 AND pool_entry=12766;
DELETE FROM pool_gameobject WHERE guid=194495 AND pool_entry=12767;
DELETE FROM pool_gameobject WHERE guid=194496 AND pool_entry=12767;
DELETE FROM pool_gameobject WHERE guid=194497 AND pool_entry=12767;
DELETE FROM pool_gameobject WHERE guid=194498 AND pool_entry=12767;
DELETE FROM pool_gameobject WHERE guid=194499 AND pool_entry=12768;
DELETE FROM pool_gameobject WHERE guid=194500 AND pool_entry=12768;
DELETE FROM pool_gameobject WHERE guid=194501 AND pool_entry=12768;
DELETE FROM pool_gameobject WHERE guid=194502 AND pool_entry=12768;
DELETE FROM pool_gameobject WHERE guid=194503 AND pool_entry=12769;
DELETE FROM pool_gameobject WHERE guid=194504 AND pool_entry=12769;
DELETE FROM pool_gameobject WHERE guid=194505 AND pool_entry=12769;
DELETE FROM pool_gameobject WHERE guid=194506 AND pool_entry=12769;
DELETE FROM pool_gameobject WHERE guid=194507 AND pool_entry=12770;
DELETE FROM pool_gameobject WHERE guid=194508 AND pool_entry=12770;
DELETE FROM pool_gameobject WHERE guid=194509 AND pool_entry=12770;
DELETE FROM pool_gameobject WHERE guid=194510 AND pool_entry=12770;
DELETE FROM pool_gameobject WHERE guid=194511 AND pool_entry=12771;
DELETE FROM pool_gameobject WHERE guid=194512 AND pool_entry=12771;
DELETE FROM pool_gameobject WHERE guid=194513 AND pool_entry=12771;
DELETE FROM pool_gameobject WHERE guid=194514 AND pool_entry=12771;
DELETE FROM pool_gameobject WHERE guid=194515 AND pool_entry=12772;
DELETE FROM pool_gameobject WHERE guid=194516 AND pool_entry=12772;
DELETE FROM pool_gameobject WHERE guid=194517 AND pool_entry=12772;
DELETE FROM pool_gameobject WHERE guid=194518 AND pool_entry=12772;
DELETE FROM pool_gameobject WHERE guid=194519 AND pool_entry=12773;
DELETE FROM pool_gameobject WHERE guid=194520 AND pool_entry=12773;
DELETE FROM pool_gameobject WHERE guid=194521 AND pool_entry=12773;
DELETE FROM pool_gameobject WHERE guid=194522 AND pool_entry=12773;
DELETE FROM pool_gameobject WHERE guid=194523 AND pool_entry=12774;
DELETE FROM pool_gameobject WHERE guid=194524 AND pool_entry=12774;
DELETE FROM pool_gameobject WHERE guid=194525 AND pool_entry=12774;
DELETE FROM pool_gameobject WHERE guid=194526 AND pool_entry=12774;
DELETE FROM pool_gameobject WHERE guid=194527 AND pool_entry=12775;
DELETE FROM pool_gameobject WHERE guid=194528 AND pool_entry=12775;
DELETE FROM pool_gameobject WHERE guid=194529 AND pool_entry=12775;
DELETE FROM pool_gameobject WHERE guid=194530 AND pool_entry=12776;
DELETE FROM pool_gameobject WHERE guid=194531 AND pool_entry=12776;
DELETE FROM pool_gameobject WHERE guid=194532 AND pool_entry=12776;
DELETE FROM pool_gameobject WHERE guid=194533 AND pool_entry=12777;
DELETE FROM pool_gameobject WHERE guid=194534 AND pool_entry=12777;
DELETE FROM pool_gameobject WHERE guid=194535 AND pool_entry=12777;
DELETE FROM pool_gameobject WHERE guid=194536 AND pool_entry=12778;
DELETE FROM pool_gameobject WHERE guid=194537 AND pool_entry=12778;
DELETE FROM pool_gameobject WHERE guid=194538 AND pool_entry=12778;
DELETE FROM pool_gameobject WHERE guid=194539 AND pool_entry=12779;
DELETE FROM pool_gameobject WHERE guid=194540 AND pool_entry=12779;
DELETE FROM pool_gameobject WHERE guid=194541 AND pool_entry=12779;
DELETE FROM pool_gameobject WHERE guid=194542 AND pool_entry=12780;
DELETE FROM pool_gameobject WHERE guid=194543 AND pool_entry=12780;
DELETE FROM pool_gameobject WHERE guid=194544 AND pool_entry=12780;
DELETE FROM pool_gameobject WHERE guid=194545 AND pool_entry=12781;
DELETE FROM pool_gameobject WHERE guid=194546 AND pool_entry=12781;
DELETE FROM pool_gameobject WHERE guid=194547 AND pool_entry=12781;
DELETE FROM pool_gameobject WHERE guid=194548 AND pool_entry=12782;
DELETE FROM pool_gameobject WHERE guid=194549 AND pool_entry=12782;
DELETE FROM pool_gameobject WHERE guid=194550 AND pool_entry=12782;
DELETE FROM pool_gameobject WHERE guid=194551 AND pool_entry=12783;
DELETE FROM pool_gameobject WHERE guid=194552 AND pool_entry=12783;
DELETE FROM pool_gameobject WHERE guid=194553 AND pool_entry=12783;
DELETE FROM pool_gameobject WHERE guid=194554 AND pool_entry=12784;
DELETE FROM pool_gameobject WHERE guid=194555 AND pool_entry=12784;
DELETE FROM pool_gameobject WHERE guid=194556 AND pool_entry=12784;
DELETE FROM pool_gameobject WHERE guid=194557 AND pool_entry=12785;
DELETE FROM pool_gameobject WHERE guid=194558 AND pool_entry=12785;
DELETE FROM pool_gameobject WHERE guid=194559 AND pool_entry=12785;
DELETE FROM pool_gameobject WHERE guid=194560 AND pool_entry=12786;
DELETE FROM pool_gameobject WHERE guid=194561 AND pool_entry=12786;
DELETE FROM pool_gameobject WHERE guid=194562 AND pool_entry=12786;
DELETE FROM pool_gameobject WHERE guid=194563 AND pool_entry=12787;
DELETE FROM pool_gameobject WHERE guid=194564 AND pool_entry=12787;
DELETE FROM pool_gameobject WHERE guid=194565 AND pool_entry=12787;
DELETE FROM pool_gameobject WHERE guid=194566 AND pool_entry=12788;
DELETE FROM pool_gameobject WHERE guid=194567 AND pool_entry=12788;
DELETE FROM pool_gameobject WHERE guid=194568 AND pool_entry=12788;
DELETE FROM pool_gameobject WHERE guid=194569 AND pool_entry=12789;
DELETE FROM pool_gameobject WHERE guid=194570 AND pool_entry=12789;
DELETE FROM pool_gameobject WHERE guid=194571 AND pool_entry=12789;
DELETE FROM pool_gameobject WHERE guid=194572 AND pool_entry=12790;
DELETE FROM pool_gameobject WHERE guid=194573 AND pool_entry=12790;
DELETE FROM pool_gameobject WHERE guid=194574 AND pool_entry=12790;
DELETE FROM pool_gameobject WHERE guid=194575 AND pool_entry=12791;
DELETE FROM pool_gameobject WHERE guid=194576 AND pool_entry=12791;
DELETE FROM pool_gameobject WHERE guid=194577 AND pool_entry=12791;
DELETE FROM pool_gameobject WHERE guid=194578 AND pool_entry=12792;
DELETE FROM pool_gameobject WHERE guid=194579 AND pool_entry=12792;
DELETE FROM pool_gameobject WHERE guid=194580 AND pool_entry=12792;
DELETE FROM pool_gameobject WHERE guid=194581 AND pool_entry=12793;
DELETE FROM pool_gameobject WHERE guid=194582 AND pool_entry=12793;
DELETE FROM pool_gameobject WHERE guid=194583 AND pool_entry=12793;
DELETE FROM pool_gameobject WHERE guid=194584 AND pool_entry=12794;
DELETE FROM pool_gameobject WHERE guid=194585 AND pool_entry=12794;
DELETE FROM pool_gameobject WHERE guid=194586 AND pool_entry=12794;
DELETE FROM pool_gameobject WHERE guid=194587 AND pool_entry=12795;
DELETE FROM pool_gameobject WHERE guid=194588 AND pool_entry=12795;
DELETE FROM pool_gameobject WHERE guid=194589 AND pool_entry=12795;
DELETE FROM pool_gameobject WHERE guid=194590 AND pool_entry=12796;
DELETE FROM pool_gameobject WHERE guid=194591 AND pool_entry=12796;
DELETE FROM pool_gameobject WHERE guid=194592 AND pool_entry=12796;
DELETE FROM pool_gameobject WHERE guid=194593 AND pool_entry=12797;
DELETE FROM pool_gameobject WHERE guid=194594 AND pool_entry=12797;
DELETE FROM pool_gameobject WHERE guid=194595 AND pool_entry=12797;
DELETE FROM pool_gameobject WHERE guid=194596 AND pool_entry=12798;
DELETE FROM pool_gameobject WHERE guid=194597 AND pool_entry=12798;
DELETE FROM pool_gameobject WHERE guid=194598 AND pool_entry=12798;
DELETE FROM pool_gameobject WHERE guid=194599 AND pool_entry=12799;
DELETE FROM pool_gameobject WHERE guid=194600 AND pool_entry=12799;
DELETE FROM pool_gameobject WHERE guid=194601 AND pool_entry=12799;
DELETE FROM pool_gameobject WHERE guid=194602 AND pool_entry=12800;
DELETE FROM pool_gameobject WHERE guid=194603 AND pool_entry=12800;
DELETE FROM pool_gameobject WHERE guid=194604 AND pool_entry=12800;
DELETE FROM pool_gameobject WHERE guid=194605 AND pool_entry=12801;
DELETE FROM pool_gameobject WHERE guid=194606 AND pool_entry=12801;
DELETE FROM pool_gameobject WHERE guid=194607 AND pool_entry=12801;
DELETE FROM pool_gameobject WHERE guid=194608 AND pool_entry=12802;
DELETE FROM pool_gameobject WHERE guid=194609 AND pool_entry=12802;
DELETE FROM pool_gameobject WHERE guid=194610 AND pool_entry=12802;
DELETE FROM pool_gameobject WHERE guid=194611 AND pool_entry=12803;
DELETE FROM pool_gameobject WHERE guid=194612 AND pool_entry=12803;
DELETE FROM pool_gameobject WHERE guid=194613 AND pool_entry=12803;
DELETE FROM pool_gameobject WHERE guid=194614 AND pool_entry=12804;
DELETE FROM pool_gameobject WHERE guid=194615 AND pool_entry=12804;
DELETE FROM pool_gameobject WHERE guid=194616 AND pool_entry=12804;
DELETE FROM pool_gameobject WHERE guid=194617 AND pool_entry=12805;
DELETE FROM pool_gameobject WHERE guid=194618 AND pool_entry=12805;
DELETE FROM pool_gameobject WHERE guid=194619 AND pool_entry=12805;
DELETE FROM pool_gameobject WHERE guid=194620 AND pool_entry=12806;
DELETE FROM pool_gameobject WHERE guid=194621 AND pool_entry=12806;
DELETE FROM pool_gameobject WHERE guid=194622 AND pool_entry=12806;
DELETE FROM pool_gameobject WHERE guid=194623 AND pool_entry=12806;
DELETE FROM pool_gameobject WHERE guid=194624 AND pool_entry=12807;
DELETE FROM pool_gameobject WHERE guid=194625 AND pool_entry=12807;
DELETE FROM pool_gameobject WHERE guid=194626 AND pool_entry=12807;
DELETE FROM pool_gameobject WHERE guid=194627 AND pool_entry=12807;
DELETE FROM pool_gameobject WHERE guid=194628 AND pool_entry=12808;
DELETE FROM pool_gameobject WHERE guid=194629 AND pool_entry=12808;
DELETE FROM pool_gameobject WHERE guid=194630 AND pool_entry=12808;
DELETE FROM pool_gameobject WHERE guid=194631 AND pool_entry=12808;
DELETE FROM pool_gameobject WHERE guid=194632 AND pool_entry=12809;
DELETE FROM pool_gameobject WHERE guid=194633 AND pool_entry=12809;
DELETE FROM pool_gameobject WHERE guid=194634 AND pool_entry=12809;
DELETE FROM pool_gameobject WHERE guid=194635 AND pool_entry=12809;
DELETE FROM pool_gameobject WHERE guid=194636 AND pool_entry=12810;
DELETE FROM pool_gameobject WHERE guid=194637 AND pool_entry=12810;
DELETE FROM pool_gameobject WHERE guid=194638 AND pool_entry=12810;
DELETE FROM pool_gameobject WHERE guid=194639 AND pool_entry=12810;
DELETE FROM pool_gameobject WHERE guid=194640 AND pool_entry=12811;
DELETE FROM pool_gameobject WHERE guid=194641 AND pool_entry=12811;
DELETE FROM pool_gameobject WHERE guid=194642 AND pool_entry=12811;
DELETE FROM pool_gameobject WHERE guid=194643 AND pool_entry=12811;
DELETE FROM pool_gameobject WHERE guid=194644 AND pool_entry=12812;
DELETE FROM pool_gameobject WHERE guid=194645 AND pool_entry=12812;
DELETE FROM pool_gameobject WHERE guid=194646 AND pool_entry=12812;
DELETE FROM pool_gameobject WHERE guid=194647 AND pool_entry=12812;
DELETE FROM pool_gameobject WHERE guid=194648 AND pool_entry=12813;
DELETE FROM pool_gameobject WHERE guid=194649 AND pool_entry=12813;
DELETE FROM pool_gameobject WHERE guid=194650 AND pool_entry=12813;
DELETE FROM pool_gameobject WHERE guid=194651 AND pool_entry=12813;
DELETE FROM pool_gameobject WHERE guid=194652 AND pool_entry=12814;
DELETE FROM pool_gameobject WHERE guid=194653 AND pool_entry=12814;
DELETE FROM pool_gameobject WHERE guid=194654 AND pool_entry=12814;
DELETE FROM pool_gameobject WHERE guid=194655 AND pool_entry=12814;
DELETE FROM pool_gameobject WHERE guid=194656 AND pool_entry=12815;
DELETE FROM pool_gameobject WHERE guid=194657 AND pool_entry=12815;
DELETE FROM pool_gameobject WHERE guid=194658 AND pool_entry=12815;
DELETE FROM pool_gameobject WHERE guid=194659 AND pool_entry=12815;
DELETE FROM pool_gameobject WHERE guid=194660 AND pool_entry=12816;
DELETE FROM pool_gameobject WHERE guid=194661 AND pool_entry=12816;
DELETE FROM pool_gameobject WHERE guid=194662 AND pool_entry=12816;
DELETE FROM pool_gameobject WHERE guid=194663 AND pool_entry=12816;
DELETE FROM pool_gameobject WHERE guid=194664 AND pool_entry=12817;
DELETE FROM pool_gameobject WHERE guid=194665 AND pool_entry=12817;
DELETE FROM pool_gameobject WHERE guid=194666 AND pool_entry=12817;
DELETE FROM pool_gameobject WHERE guid=194667 AND pool_entry=12817;
DELETE FROM pool_gameobject WHERE guid=194668 AND pool_entry=12818;
DELETE FROM pool_gameobject WHERE guid=194669 AND pool_entry=12818;
DELETE FROM pool_gameobject WHERE guid=194670 AND pool_entry=12818;
DELETE FROM pool_gameobject WHERE guid=194671 AND pool_entry=12818;
DELETE FROM pool_gameobject WHERE guid=194672 AND pool_entry=12819;
DELETE FROM pool_gameobject WHERE guid=194673 AND pool_entry=12819;
DELETE FROM pool_gameobject WHERE guid=194674 AND pool_entry=12819;
DELETE FROM pool_gameobject WHERE guid=194675 AND pool_entry=12819;
DELETE FROM pool_gameobject WHERE guid=194676 AND pool_entry=12820;
DELETE FROM pool_gameobject WHERE guid=194677 AND pool_entry=12820;
DELETE FROM pool_gameobject WHERE guid=194678 AND pool_entry=12820;
DELETE FROM pool_gameobject WHERE guid=194679 AND pool_entry=12820;
DELETE FROM pool_gameobject WHERE guid=194680 AND pool_entry=12821;
DELETE FROM pool_gameobject WHERE guid=194681 AND pool_entry=12821;
DELETE FROM pool_gameobject WHERE guid=194682 AND pool_entry=12821;
DELETE FROM pool_gameobject WHERE guid=194683 AND pool_entry=12821;
DELETE FROM pool_gameobject WHERE guid=194684 AND pool_entry=12822;
DELETE FROM pool_gameobject WHERE guid=194685 AND pool_entry=12822;
DELETE FROM pool_gameobject WHERE guid=194686 AND pool_entry=12822;
DELETE FROM pool_gameobject WHERE guid=194687 AND pool_entry=12822;
DELETE FROM pool_gameobject WHERE guid=194688 AND pool_entry=12823;
DELETE FROM pool_gameobject WHERE guid=194689 AND pool_entry=12823;
DELETE FROM pool_gameobject WHERE guid=194690 AND pool_entry=12823;
DELETE FROM pool_gameobject WHERE guid=194691 AND pool_entry=12823;
DELETE FROM pool_gameobject WHERE guid=194692 AND pool_entry=12824;
DELETE FROM pool_gameobject WHERE guid=194693 AND pool_entry=12824;
DELETE FROM pool_gameobject WHERE guid=194694 AND pool_entry=12824;
DELETE FROM pool_gameobject WHERE guid=194695 AND pool_entry=12824;
DELETE FROM pool_gameobject WHERE guid=194696 AND pool_entry=12825;
DELETE FROM pool_gameobject WHERE guid=194697 AND pool_entry=12825;
DELETE FROM pool_gameobject WHERE guid=194698 AND pool_entry=12825;
DELETE FROM pool_gameobject WHERE guid=194699 AND pool_entry=12825;
DELETE FROM pool_gameobject WHERE guid=194700 AND pool_entry=12826;
DELETE FROM pool_gameobject WHERE guid=194701 AND pool_entry=12826;
DELETE FROM pool_gameobject WHERE guid=194702 AND pool_entry=12826;
DELETE FROM pool_gameobject WHERE guid=194703 AND pool_entry=12826;
DELETE FROM pool_gameobject WHERE guid=194704 AND pool_entry=12827;
DELETE FROM pool_gameobject WHERE guid=194705 AND pool_entry=12827;
DELETE FROM pool_gameobject WHERE guid=194706 AND pool_entry=12827;
DELETE FROM pool_gameobject WHERE guid=194707 AND pool_entry=12827;
DELETE FROM pool_gameobject WHERE guid=194708 AND pool_entry=12828;
DELETE FROM pool_gameobject WHERE guid=194709 AND pool_entry=12828;
DELETE FROM pool_gameobject WHERE guid=194710 AND pool_entry=12828;
DELETE FROM pool_gameobject WHERE guid=194711 AND pool_entry=12828;
DELETE FROM pool_gameobject WHERE guid=194712 AND pool_entry=12829;
DELETE FROM pool_gameobject WHERE guid=194713 AND pool_entry=12829;
DELETE FROM pool_gameobject WHERE guid=194714 AND pool_entry=12829;
DELETE FROM pool_gameobject WHERE guid=194715 AND pool_entry=12829;
DELETE FROM pool_gameobject WHERE guid=194716 AND pool_entry=12830;
DELETE FROM pool_gameobject WHERE guid=194717 AND pool_entry=12830;
DELETE FROM pool_gameobject WHERE guid=194718 AND pool_entry=12830;
DELETE FROM pool_gameobject WHERE guid=194719 AND pool_entry=12830;
DELETE FROM pool_gameobject WHERE guid=194720 AND pool_entry=12831;
DELETE FROM pool_gameobject WHERE guid=194721 AND pool_entry=12831;
DELETE FROM pool_gameobject WHERE guid=194722 AND pool_entry=12831;
DELETE FROM pool_gameobject WHERE guid=194723 AND pool_entry=12831;
DELETE FROM pool_gameobject WHERE guid=194724 AND pool_entry=12832;
DELETE FROM pool_gameobject WHERE guid=194725 AND pool_entry=12832;
DELETE FROM pool_gameobject WHERE guid=194726 AND pool_entry=12832;
DELETE FROM pool_gameobject WHERE guid=194727 AND pool_entry=12832;
DELETE FROM pool_gameobject WHERE guid=194728 AND pool_entry=12833;
DELETE FROM pool_gameobject WHERE guid=194729 AND pool_entry=12833;
DELETE FROM pool_gameobject WHERE guid=194730 AND pool_entry=12833;
DELETE FROM pool_gameobject WHERE guid=194731 AND pool_entry=12833;
DELETE FROM pool_gameobject WHERE guid=194732 AND pool_entry=12834;
DELETE FROM pool_gameobject WHERE guid=194733 AND pool_entry=12834;
DELETE FROM pool_gameobject WHERE guid=194734 AND pool_entry=12834;
DELETE FROM pool_gameobject WHERE guid=194735 AND pool_entry=12834;
DELETE FROM pool_gameobject WHERE guid=194736 AND pool_entry=12835;
DELETE FROM pool_gameobject WHERE guid=194737 AND pool_entry=12835;
DELETE FROM pool_gameobject WHERE guid=194738 AND pool_entry=12835;
DELETE FROM pool_gameobject WHERE guid=194739 AND pool_entry=12835;
DELETE FROM pool_gameobject WHERE guid=194740 AND pool_entry=12836;
DELETE FROM pool_gameobject WHERE guid=194741 AND pool_entry=12836;
DELETE FROM pool_gameobject WHERE guid=194742 AND pool_entry=12836;
DELETE FROM pool_gameobject WHERE guid=194743 AND pool_entry=12836;
DELETE FROM pool_gameobject WHERE guid=194744 AND pool_entry=12837;
DELETE FROM pool_gameobject WHERE guid=194745 AND pool_entry=12837;
DELETE FROM pool_gameobject WHERE guid=194746 AND pool_entry=12837;
DELETE FROM pool_gameobject WHERE guid=194747 AND pool_entry=12837;
DELETE FROM pool_gameobject WHERE guid=194748 AND pool_entry=12838;
DELETE FROM pool_gameobject WHERE guid=194749 AND pool_entry=12838;
DELETE FROM pool_gameobject WHERE guid=194750 AND pool_entry=12838;
DELETE FROM pool_gameobject WHERE guid=194751 AND pool_entry=12839;
DELETE FROM pool_gameobject WHERE guid=194752 AND pool_entry=12839;
DELETE FROM pool_gameobject WHERE guid=194753 AND pool_entry=12839;
DELETE FROM pool_gameobject WHERE guid=194754 AND pool_entry=12839;
DELETE FROM pool_gameobject WHERE guid=194755 AND pool_entry=12840;
DELETE FROM pool_gameobject WHERE guid=194756 AND pool_entry=12840;
DELETE FROM pool_gameobject WHERE guid=194757 AND pool_entry=12840;
DELETE FROM pool_gameobject WHERE guid=194758 AND pool_entry=12840;
DELETE FROM pool_gameobject WHERE guid=194759 AND pool_entry=12841;
DELETE FROM pool_gameobject WHERE guid=194760 AND pool_entry=12841;
DELETE FROM pool_gameobject WHERE guid=194761 AND pool_entry=12841;
DELETE FROM pool_gameobject WHERE guid=194762 AND pool_entry=12841;
DELETE FROM pool_gameobject WHERE guid=194763 AND pool_entry=12842;
DELETE FROM pool_gameobject WHERE guid=194764 AND pool_entry=12842;
DELETE FROM pool_gameobject WHERE guid=194765 AND pool_entry=12842;
DELETE FROM pool_gameobject WHERE guid=194766 AND pool_entry=12842;
DELETE FROM pool_gameobject WHERE guid=194767 AND pool_entry=12843;
DELETE FROM pool_gameobject WHERE guid=194768 AND pool_entry=12843;
DELETE FROM pool_gameobject WHERE guid=194769 AND pool_entry=12843;
DELETE FROM pool_gameobject WHERE guid=194770 AND pool_entry=12843;
DELETE FROM pool_gameobject WHERE guid=194771 AND pool_entry=12844;
DELETE FROM pool_gameobject WHERE guid=194772 AND pool_entry=12844;
DELETE FROM pool_gameobject WHERE guid=194773 AND pool_entry=12844;
DELETE FROM pool_gameobject WHERE guid=194774 AND pool_entry=12844;
DELETE FROM pool_gameobject WHERE guid=194775 AND pool_entry=12845;
DELETE FROM pool_gameobject WHERE guid=194776 AND pool_entry=12845;
DELETE FROM pool_gameobject WHERE guid=194777 AND pool_entry=12845;
DELETE FROM pool_gameobject WHERE guid=194778 AND pool_entry=12845;
DELETE FROM pool_gameobject WHERE guid=194779 AND pool_entry=12846;
DELETE FROM pool_gameobject WHERE guid=194780 AND pool_entry=12846;
DELETE FROM pool_gameobject WHERE guid=194781 AND pool_entry=12846;
DELETE FROM pool_gameobject WHERE guid=194782 AND pool_entry=12846;
DELETE FROM pool_gameobject WHERE guid=194783 AND pool_entry=12847;
DELETE FROM pool_gameobject WHERE guid=194784 AND pool_entry=12847;
DELETE FROM pool_gameobject WHERE guid=194785 AND pool_entry=12847;
DELETE FROM pool_gameobject WHERE guid=194786 AND pool_entry=12847;
DELETE FROM pool_gameobject WHERE guid=194787 AND pool_entry=12848;
DELETE FROM pool_gameobject WHERE guid=194788 AND pool_entry=12848;
DELETE FROM pool_gameobject WHERE guid=194789 AND pool_entry=12848;
DELETE FROM pool_gameobject WHERE guid=194790 AND pool_entry=12848;
DELETE FROM pool_gameobject WHERE guid=194791 AND pool_entry=12849;
DELETE FROM pool_gameobject WHERE guid=194792 AND pool_entry=12849;
DELETE FROM pool_gameobject WHERE guid=194793 AND pool_entry=12849;
DELETE FROM pool_gameobject WHERE guid=194794 AND pool_entry=12849;
DELETE FROM pool_gameobject WHERE guid=194795 AND pool_entry=12850;
DELETE FROM pool_gameobject WHERE guid=194796 AND pool_entry=12850;
DELETE FROM pool_gameobject WHERE guid=194797 AND pool_entry=12850;
DELETE FROM pool_gameobject WHERE guid=194798 AND pool_entry=12850;
DELETE FROM pool_gameobject WHERE guid=194799 AND pool_entry=12851;
DELETE FROM pool_gameobject WHERE guid=194800 AND pool_entry=12851;
DELETE FROM pool_gameobject WHERE guid=194801 AND pool_entry=12851;
DELETE FROM pool_gameobject WHERE guid=194802 AND pool_entry=12851;
DELETE FROM pool_gameobject WHERE guid=194803 AND pool_entry=12852;
DELETE FROM pool_gameobject WHERE guid=194804 AND pool_entry=12852;
DELETE FROM pool_gameobject WHERE guid=194805 AND pool_entry=12852;
DELETE FROM pool_gameobject WHERE guid=194806 AND pool_entry=12852;
DELETE FROM pool_gameobject WHERE guid=194807 AND pool_entry=12853;
DELETE FROM pool_gameobject WHERE guid=194808 AND pool_entry=12853;
DELETE FROM pool_gameobject WHERE guid=194809 AND pool_entry=12853;
DELETE FROM pool_gameobject WHERE guid=194810 AND pool_entry=12853;
DELETE FROM pool_gameobject WHERE guid=194811 AND pool_entry=12854;
DELETE FROM pool_gameobject WHERE guid=194812 AND pool_entry=12854;
DELETE FROM pool_gameobject WHERE guid=194813 AND pool_entry=12854;
DELETE FROM pool_gameobject WHERE guid=194814 AND pool_entry=12854;
DELETE FROM pool_gameobject WHERE guid=194815 AND pool_entry=12855;
DELETE FROM pool_gameobject WHERE guid=194816 AND pool_entry=12855;
DELETE FROM pool_gameobject WHERE guid=194817 AND pool_entry=12855;
DELETE FROM pool_gameobject WHERE guid=194818 AND pool_entry=12855;
DELETE FROM pool_gameobject WHERE guid=194819 AND pool_entry=12856;
DELETE FROM pool_gameobject WHERE guid=194820 AND pool_entry=12856;
DELETE FROM pool_gameobject WHERE guid=194821 AND pool_entry=12856;
DELETE FROM pool_gameobject WHERE guid=194822 AND pool_entry=12856;
DELETE FROM pool_gameobject WHERE guid=194823 AND pool_entry=12857;
DELETE FROM pool_gameobject WHERE guid=194824 AND pool_entry=12857;
DELETE FROM pool_gameobject WHERE guid=194825 AND pool_entry=12857;
DELETE FROM pool_gameobject WHERE guid=194826 AND pool_entry=12857;
DELETE FROM pool_gameobject WHERE guid=194827 AND pool_entry=12858;
DELETE FROM pool_gameobject WHERE guid=194828 AND pool_entry=12858;
DELETE FROM pool_gameobject WHERE guid=194829 AND pool_entry=12858;
DELETE FROM pool_gameobject WHERE guid=194830 AND pool_entry=12858;
DELETE FROM pool_gameobject WHERE guid=194831 AND pool_entry=12859;
DELETE FROM pool_gameobject WHERE guid=194832 AND pool_entry=12859;
DELETE FROM pool_gameobject WHERE guid=194833 AND pool_entry=12859;
DELETE FROM pool_gameobject WHERE guid=194834 AND pool_entry=12859;
DELETE FROM pool_gameobject WHERE guid=194835 AND pool_entry=12860;
DELETE FROM pool_gameobject WHERE guid=194836 AND pool_entry=12860;
DELETE FROM pool_gameobject WHERE guid=194837 AND pool_entry=12860;
DELETE FROM pool_gameobject WHERE guid=194838 AND pool_entry=12860;
DELETE FROM pool_gameobject WHERE guid=194839 AND pool_entry=12861;
DELETE FROM pool_gameobject WHERE guid=194840 AND pool_entry=12861;
DELETE FROM pool_gameobject WHERE guid=194841 AND pool_entry=12861;
DELETE FROM pool_gameobject WHERE guid=194842 AND pool_entry=12861;
DELETE FROM pool_gameobject WHERE guid=194843 AND pool_entry=12862;
DELETE FROM pool_gameobject WHERE guid=194844 AND pool_entry=12862;
DELETE FROM pool_gameobject WHERE guid=194845 AND pool_entry=12862;
DELETE FROM pool_gameobject WHERE guid=194846 AND pool_entry=12862;
DELETE FROM pool_gameobject WHERE guid=194847 AND pool_entry=12863;
DELETE FROM pool_gameobject WHERE guid=194848 AND pool_entry=12863;
DELETE FROM pool_gameobject WHERE guid=194849 AND pool_entry=12863;
DELETE FROM pool_gameobject WHERE guid=194850 AND pool_entry=12863;
DELETE FROM pool_gameobject WHERE guid=194851 AND pool_entry=12864;
DELETE FROM pool_gameobject WHERE guid=194852 AND pool_entry=12864;
DELETE FROM pool_gameobject WHERE guid=194853 AND pool_entry=12864;
DELETE FROM pool_gameobject WHERE guid=194854 AND pool_entry=12864;
DELETE FROM pool_gameobject WHERE guid=194855 AND pool_entry=12865;
DELETE FROM pool_gameobject WHERE guid=194856 AND pool_entry=12865;
DELETE FROM pool_gameobject WHERE guid=194857 AND pool_entry=12865;
DELETE FROM pool_gameobject WHERE guid=194858 AND pool_entry=12865;
DELETE FROM pool_gameobject WHERE guid=194859 AND pool_entry=12866;
DELETE FROM pool_gameobject WHERE guid=194860 AND pool_entry=12866;
DELETE FROM pool_gameobject WHERE guid=194861 AND pool_entry=12866;
DELETE FROM pool_gameobject WHERE guid=194862 AND pool_entry=12866;
DELETE FROM pool_gameobject WHERE guid=194863 AND pool_entry=12867;
DELETE FROM pool_gameobject WHERE guid=194864 AND pool_entry=12867;
DELETE FROM pool_gameobject WHERE guid=194865 AND pool_entry=12867;
DELETE FROM pool_gameobject WHERE guid=194866 AND pool_entry=12867;
DELETE FROM pool_gameobject WHERE guid=194867 AND pool_entry=12868;
DELETE FROM pool_gameobject WHERE guid=194868 AND pool_entry=12868;
DELETE FROM pool_gameobject WHERE guid=194869 AND pool_entry=12868;
DELETE FROM pool_gameobject WHERE guid=194870 AND pool_entry=12868;
DELETE FROM pool_gameobject WHERE guid=195328 AND pool_entry=11612;
DELETE FROM pool_gameobject WHERE guid=195329 AND pool_entry=11612;
DELETE FROM pool_gameobject WHERE guid=195330 AND pool_entry=11612;
DELETE FROM pool_gameobject WHERE guid=195331 AND pool_entry=11612;
DELETE FROM pool_gameobject WHERE guid=195332 AND pool_entry=11611;
DELETE FROM pool_gameobject WHERE guid=195333 AND pool_entry=11611;
DELETE FROM pool_gameobject WHERE guid=195334 AND pool_entry=11611;
DELETE FROM pool_gameobject WHERE guid=195335 AND pool_entry=11611;
DELETE FROM pool_gameobject WHERE guid=195336 AND pool_entry=11610;
DELETE FROM pool_gameobject WHERE guid=195337 AND pool_entry=11610;
DELETE FROM pool_gameobject WHERE guid=195338 AND pool_entry=11610;
DELETE FROM pool_gameobject WHERE guid=195339 AND pool_entry=11610;
DELETE FROM pool_gameobject WHERE guid=195340 AND pool_entry=11609;
DELETE FROM pool_gameobject WHERE guid=195341 AND pool_entry=11609;
DELETE FROM pool_gameobject WHERE guid=195342 AND pool_entry=11609;
DELETE FROM pool_gameobject WHERE guid=195343 AND pool_entry=11609;
DELETE FROM pool_gameobject WHERE guid=195344 AND pool_entry=11608;
DELETE FROM pool_gameobject WHERE guid=195345 AND pool_entry=11608;
DELETE FROM pool_gameobject WHERE guid=195346 AND pool_entry=11608;
DELETE FROM pool_gameobject WHERE guid=195347 AND pool_entry=11608;
DELETE FROM pool_gameobject WHERE guid=195348 AND pool_entry=11607;
DELETE FROM pool_gameobject WHERE guid=195349 AND pool_entry=11607;
DELETE FROM pool_gameobject WHERE guid=195350 AND pool_entry=11607;
DELETE FROM pool_gameobject WHERE guid=195351 AND pool_entry=11607;
DELETE FROM pool_gameobject WHERE guid=195352 AND pool_entry=11606;
DELETE FROM pool_gameobject WHERE guid=195353 AND pool_entry=11606;
DELETE FROM pool_gameobject WHERE guid=195355 AND pool_entry=11606;
DELETE FROM pool_gameobject WHERE guid=195356 AND pool_entry=11605;
DELETE FROM pool_gameobject WHERE guid=195357 AND pool_entry=11605;
DELETE FROM pool_gameobject WHERE guid=195358 AND pool_entry=11605;
DELETE FROM pool_gameobject WHERE guid=195359 AND pool_entry=11605;
DELETE FROM pool_gameobject WHERE guid=195360 AND pool_entry=11604;
DELETE FROM pool_gameobject WHERE guid=195361 AND pool_entry=11604;
DELETE FROM pool_gameobject WHERE guid=195363 AND pool_entry=11604;
DELETE FROM pool_gameobject WHERE guid=195364 AND pool_entry=11603;
DELETE FROM pool_gameobject WHERE guid=195365 AND pool_entry=11603;
DELETE FROM pool_gameobject WHERE guid=195366 AND pool_entry=11603;
DELETE FROM pool_gameobject WHERE guid=195367 AND pool_entry=11603;
DELETE FROM pool_gameobject WHERE guid=195368 AND pool_entry=11602;
DELETE FROM pool_gameobject WHERE guid=195369 AND pool_entry=11602;
DELETE FROM pool_gameobject WHERE guid=195370 AND pool_entry=11602;
DELETE FROM pool_gameobject WHERE guid=195371 AND pool_entry=11602;
DELETE FROM pool_gameobject WHERE guid=195372 AND pool_entry=11601;
DELETE FROM pool_gameobject WHERE guid=195373 AND pool_entry=11601;
DELETE FROM pool_gameobject WHERE guid=195374 AND pool_entry=11601;
DELETE FROM pool_gameobject WHERE guid=195375 AND pool_entry=11601;
DELETE FROM pool_gameobject WHERE guid=195376 AND pool_entry=11600;
DELETE FROM pool_gameobject WHERE guid=195377 AND pool_entry=11600;
DELETE FROM pool_gameobject WHERE guid=195378 AND pool_entry=11600;
DELETE FROM pool_gameobject WHERE guid=195379 AND pool_entry=11600;
DELETE FROM pool_gameobject WHERE guid=195380 AND pool_entry=11599;
DELETE FROM pool_gameobject WHERE guid=195381 AND pool_entry=11599;
DELETE FROM pool_gameobject WHERE guid=195382 AND pool_entry=11599;
DELETE FROM pool_gameobject WHERE guid=195383 AND pool_entry=11599;
DELETE FROM pool_gameobject WHERE guid=195384 AND pool_entry=11598;
DELETE FROM pool_gameobject WHERE guid=195385 AND pool_entry=11598;
DELETE FROM pool_gameobject WHERE guid=195386 AND pool_entry=11598;
DELETE FROM pool_gameobject WHERE guid=195387 AND pool_entry=11598;
DELETE FROM pool_gameobject WHERE guid=195388 AND pool_entry=11597;
DELETE FROM pool_gameobject WHERE guid=195389 AND pool_entry=11597;
DELETE FROM pool_gameobject WHERE guid=195390 AND pool_entry=11597;
DELETE FROM pool_gameobject WHERE guid=195391 AND pool_entry=11597;
DELETE FROM pool_gameobject WHERE guid=195392 AND pool_entry=11596;
DELETE FROM pool_gameobject WHERE guid=195393 AND pool_entry=11596;
DELETE FROM pool_gameobject WHERE guid=195394 AND pool_entry=11596;
DELETE FROM pool_gameobject WHERE guid=195395 AND pool_entry=11596;
DELETE FROM pool_gameobject WHERE guid=195396 AND pool_entry=11595;
DELETE FROM pool_gameobject WHERE guid=195397 AND pool_entry=11595;
DELETE FROM pool_gameobject WHERE guid=195398 AND pool_entry=11595;
DELETE FROM pool_gameobject WHERE guid=195399 AND pool_entry=11595;
DELETE FROM pool_gameobject WHERE guid=195400 AND pool_entry=11594;
DELETE FROM pool_gameobject WHERE guid=195401 AND pool_entry=11594;
DELETE FROM pool_gameobject WHERE guid=195402 AND pool_entry=11594;
DELETE FROM pool_gameobject WHERE guid=195403 AND pool_entry=11594;
DELETE FROM pool_gameobject WHERE guid=195404 AND pool_entry=11593;
DELETE FROM pool_gameobject WHERE guid=195405 AND pool_entry=11593;
DELETE FROM pool_gameobject WHERE guid=195406 AND pool_entry=11593;
DELETE FROM pool_gameobject WHERE guid=195407 AND pool_entry=11593;
DELETE FROM pool_gameobject WHERE guid=195408 AND pool_entry=11592;
DELETE FROM pool_gameobject WHERE guid=195409 AND pool_entry=11592;
DELETE FROM pool_gameobject WHERE guid=195410 AND pool_entry=11592;
DELETE FROM pool_gameobject WHERE guid=195411 AND pool_entry=11592;
DELETE FROM pool_gameobject WHERE guid=195412 AND pool_entry=11591;
DELETE FROM pool_gameobject WHERE guid=195413 AND pool_entry=11591;
DELETE FROM pool_gameobject WHERE guid=195414 AND pool_entry=11591;
DELETE FROM pool_gameobject WHERE guid=195415 AND pool_entry=11591;
DELETE FROM pool_gameobject WHERE guid=195416 AND pool_entry=11590;
DELETE FROM pool_gameobject WHERE guid=195417 AND pool_entry=11590;
DELETE FROM pool_gameobject WHERE guid=195418 AND pool_entry=11590;
DELETE FROM pool_gameobject WHERE guid=195419 AND pool_entry=11590;
DELETE FROM pool_gameobject WHERE guid=195420 AND pool_entry=11589;
DELETE FROM pool_gameobject WHERE guid=195421 AND pool_entry=11589;
DELETE FROM pool_gameobject WHERE guid=195422 AND pool_entry=11589;
DELETE FROM pool_gameobject WHERE guid=195423 AND pool_entry=11589;
DELETE FROM pool_gameobject WHERE guid=195424 AND pool_entry=11588;
DELETE FROM pool_gameobject WHERE guid=195425 AND pool_entry=11588;
DELETE FROM pool_gameobject WHERE guid=195426 AND pool_entry=11588;
DELETE FROM pool_gameobject WHERE guid=195427 AND pool_entry=11588;
DELETE FROM pool_gameobject WHERE guid=195428 AND pool_entry=11587;
DELETE FROM pool_gameobject WHERE guid=195429 AND pool_entry=11587;
DELETE FROM pool_gameobject WHERE guid=195430 AND pool_entry=11587;
DELETE FROM pool_gameobject WHERE guid=195431 AND pool_entry=11587;
DELETE FROM pool_gameobject WHERE guid=195432 AND pool_entry=11586;
DELETE FROM pool_gameobject WHERE guid=195433 AND pool_entry=11586;
DELETE FROM pool_gameobject WHERE guid=195434 AND pool_entry=11586;
DELETE FROM pool_gameobject WHERE guid=195435 AND pool_entry=11586;
DELETE FROM pool_gameobject WHERE guid=195436 AND pool_entry=11585;
DELETE FROM pool_gameobject WHERE guid=195437 AND pool_entry=11585;
DELETE FROM pool_gameobject WHERE guid=195438 AND pool_entry=11585;
DELETE FROM pool_gameobject WHERE guid=195439 AND pool_entry=11585;
DELETE FROM pool_gameobject WHERE guid=195440 AND pool_entry=11584;
DELETE FROM pool_gameobject WHERE guid=195441 AND pool_entry=11584;
DELETE FROM pool_gameobject WHERE guid=195443 AND pool_entry=11584;
DELETE FROM pool_gameobject WHERE guid=195444 AND pool_entry=11583;
DELETE FROM pool_gameobject WHERE guid=195445 AND pool_entry=11583;
DELETE FROM pool_gameobject WHERE guid=195446 AND pool_entry=11583;
DELETE FROM pool_gameobject WHERE guid=195447 AND pool_entry=11583;
DELETE FROM pool_gameobject WHERE guid=195448 AND pool_entry=11582;
DELETE FROM pool_gameobject WHERE guid=195449 AND pool_entry=11582;
DELETE FROM pool_gameobject WHERE guid=195450 AND pool_entry=11582;
DELETE FROM pool_gameobject WHERE guid=195451 AND pool_entry=11582;
DELETE FROM pool_gameobject WHERE guid=195452 AND pool_entry=11581;
DELETE FROM pool_gameobject WHERE guid=195453 AND pool_entry=11581;
DELETE FROM pool_gameobject WHERE guid=195454 AND pool_entry=11581;
DELETE FROM pool_gameobject WHERE guid=195455 AND pool_entry=11581;
DELETE FROM pool_gameobject WHERE guid=195456 AND pool_entry=11580;
DELETE FROM pool_gameobject WHERE guid=195457 AND pool_entry=11580;
DELETE FROM pool_gameobject WHERE guid=195458 AND pool_entry=11580;
DELETE FROM pool_gameobject WHERE guid=195459 AND pool_entry=11580;
DELETE FROM pool_gameobject WHERE guid=195460 AND pool_entry=11579;
DELETE FROM pool_gameobject WHERE guid=195461 AND pool_entry=11579;
DELETE FROM pool_gameobject WHERE guid=195462 AND pool_entry=11579;
DELETE FROM pool_gameobject WHERE guid=195463 AND pool_entry=11579;
DELETE FROM pool_gameobject WHERE guid=195464 AND pool_entry=11578;
DELETE FROM pool_gameobject WHERE guid=195465 AND pool_entry=11578;
DELETE FROM pool_gameobject WHERE guid=195466 AND pool_entry=11578;
DELETE FROM pool_gameobject WHERE guid=195467 AND pool_entry=11578;
DELETE FROM pool_gameobject WHERE guid=195468 AND pool_entry=11577;
DELETE FROM pool_gameobject WHERE guid=195469 AND pool_entry=11577;
DELETE FROM pool_gameobject WHERE guid=195470 AND pool_entry=11577;
DELETE FROM pool_gameobject WHERE guid=195471 AND pool_entry=11577;
DELETE FROM pool_gameobject WHERE guid=195472 AND pool_entry=11576;
DELETE FROM pool_gameobject WHERE guid=195473 AND pool_entry=11576;
DELETE FROM pool_gameobject WHERE guid=195474 AND pool_entry=11576;
DELETE FROM pool_gameobject WHERE guid=195475 AND pool_entry=11576;
DELETE FROM pool_gameobject WHERE guid=195476 AND pool_entry=11575;
DELETE FROM pool_gameobject WHERE guid=195477 AND pool_entry=11575;
DELETE FROM pool_gameobject WHERE guid=195478 AND pool_entry=11575;
DELETE FROM pool_gameobject WHERE guid=195479 AND pool_entry=11575;
DELETE FROM pool_gameobject WHERE guid=195480 AND pool_entry=11574;
DELETE FROM pool_gameobject WHERE guid=195481 AND pool_entry=11574;
DELETE FROM pool_gameobject WHERE guid=195482 AND pool_entry=11574;
DELETE FROM pool_gameobject WHERE guid=195483 AND pool_entry=11574;
DELETE FROM pool_gameobject WHERE guid=195484 AND pool_entry=11573;
DELETE FROM pool_gameobject WHERE guid=195485 AND pool_entry=11573;
DELETE FROM pool_gameobject WHERE guid=195486 AND pool_entry=11573;
DELETE FROM pool_gameobject WHERE guid=195487 AND pool_entry=11573;
DELETE FROM pool_gameobject WHERE guid=195488 AND pool_entry=11572;
DELETE FROM pool_gameobject WHERE guid=195489 AND pool_entry=11572;
DELETE FROM pool_gameobject WHERE guid=195490 AND pool_entry=11572;
DELETE FROM pool_gameobject WHERE guid=195491 AND pool_entry=11572;
DELETE FROM pool_gameobject WHERE guid=195492 AND pool_entry=11571;
DELETE FROM pool_gameobject WHERE guid=195493 AND pool_entry=11571;
DELETE FROM pool_gameobject WHERE guid=195494 AND pool_entry=11571;
DELETE FROM pool_gameobject WHERE guid=195495 AND pool_entry=11571;
DELETE FROM pool_gameobject WHERE guid=195496 AND pool_entry=11570;
DELETE FROM pool_gameobject WHERE guid=195497 AND pool_entry=11570;
DELETE FROM pool_gameobject WHERE guid=195498 AND pool_entry=11570;
DELETE FROM pool_gameobject WHERE guid=195499 AND pool_entry=11570;
DELETE FROM pool_gameobject WHERE guid=195500 AND pool_entry=11569;
DELETE FROM pool_gameobject WHERE guid=195501 AND pool_entry=11569;
DELETE FROM pool_gameobject WHERE guid=195502 AND pool_entry=11569;
DELETE FROM pool_gameobject WHERE guid=195503 AND pool_entry=11569;
DELETE FROM pool_gameobject WHERE guid=195504 AND pool_entry=11568;
DELETE FROM pool_gameobject WHERE guid=195505 AND pool_entry=11568;
DELETE FROM pool_gameobject WHERE guid=195506 AND pool_entry=11568;
DELETE FROM pool_gameobject WHERE guid=195507 AND pool_entry=11568;
DELETE FROM pool_gameobject WHERE guid=195508 AND pool_entry=11567;
DELETE FROM pool_gameobject WHERE guid=195509 AND pool_entry=11567;
DELETE FROM pool_gameobject WHERE guid=195510 AND pool_entry=11567;
DELETE FROM pool_gameobject WHERE guid=195511 AND pool_entry=11567;
DELETE FROM pool_gameobject WHERE guid=195512 AND pool_entry=11566;
DELETE FROM pool_gameobject WHERE guid=195513 AND pool_entry=11566;
DELETE FROM pool_gameobject WHERE guid=195514 AND pool_entry=11566;
DELETE FROM pool_gameobject WHERE guid=195515 AND pool_entry=11566;
DELETE FROM pool_gameobject WHERE guid=195516 AND pool_entry=11565;
DELETE FROM pool_gameobject WHERE guid=195517 AND pool_entry=11565;
DELETE FROM pool_gameobject WHERE guid=195518 AND pool_entry=11565;
DELETE FROM pool_gameobject WHERE guid=195519 AND pool_entry=11565;
DELETE FROM pool_gameobject WHERE guid=195520 AND pool_entry=11564;
DELETE FROM pool_gameobject WHERE guid=195521 AND pool_entry=11564;
DELETE FROM pool_gameobject WHERE guid=195522 AND pool_entry=11564;
DELETE FROM pool_gameobject WHERE guid=195523 AND pool_entry=11564;
DELETE FROM pool_gameobject WHERE guid=195524 AND pool_entry=11563;
DELETE FROM pool_gameobject WHERE guid=195525 AND pool_entry=11563;
DELETE FROM pool_gameobject WHERE guid=195526 AND pool_entry=11563;
DELETE FROM pool_gameobject WHERE guid=195527 AND pool_entry=11563;
DELETE FROM pool_gameobject WHERE guid=195528 AND pool_entry=11562;
DELETE FROM pool_gameobject WHERE guid=195529 AND pool_entry=11562;
DELETE FROM pool_gameobject WHERE guid=195530 AND pool_entry=11562;
DELETE FROM pool_gameobject WHERE guid=195531 AND pool_entry=11562;
DELETE FROM pool_gameobject WHERE guid=195532 AND pool_entry=11561;
DELETE FROM pool_gameobject WHERE guid=195533 AND pool_entry=11561;
DELETE FROM pool_gameobject WHERE guid=195534 AND pool_entry=11561;
DELETE FROM pool_gameobject WHERE guid=195535 AND pool_entry=11561;
DELETE FROM pool_gameobject WHERE guid=195536 AND pool_entry=11560;
DELETE FROM pool_gameobject WHERE guid=195537 AND pool_entry=11560;
DELETE FROM pool_gameobject WHERE guid=195538 AND pool_entry=11560;
DELETE FROM pool_gameobject WHERE guid=195539 AND pool_entry=11560;
DELETE FROM pool_gameobject WHERE guid=195540 AND pool_entry=11559;
DELETE FROM pool_gameobject WHERE guid=195541 AND pool_entry=11559;
DELETE FROM pool_gameobject WHERE guid=195542 AND pool_entry=11559;
DELETE FROM pool_gameobject WHERE guid=195543 AND pool_entry=11559;
DELETE FROM pool_gameobject WHERE guid=195544 AND pool_entry=11558;
DELETE FROM pool_gameobject WHERE guid=195545 AND pool_entry=11558;
DELETE FROM pool_gameobject WHERE guid=195546 AND pool_entry=11558;
DELETE FROM pool_gameobject WHERE guid=195547 AND pool_entry=11558;
DELETE FROM pool_gameobject WHERE guid=195548 AND pool_entry=11557;
DELETE FROM pool_gameobject WHERE guid=195549 AND pool_entry=11557;
DELETE FROM pool_gameobject WHERE guid=195550 AND pool_entry=11557;
DELETE FROM pool_gameobject WHERE guid=195551 AND pool_entry=11557;
DELETE FROM pool_gameobject WHERE guid=195552 AND pool_entry=11556;
DELETE FROM pool_gameobject WHERE guid=195553 AND pool_entry=11556;
DELETE FROM pool_gameobject WHERE guid=195554 AND pool_entry=11556;
DELETE FROM pool_gameobject WHERE guid=195555 AND pool_entry=11556;
DELETE FROM pool_gameobject WHERE guid=195556 AND pool_entry=11555;
DELETE FROM pool_gameobject WHERE guid=195557 AND pool_entry=11555;
DELETE FROM pool_gameobject WHERE guid=195558 AND pool_entry=11555;
DELETE FROM pool_gameobject WHERE guid=195559 AND pool_entry=11555;
DELETE FROM pool_gameobject WHERE guid=195560 AND pool_entry=11554;
DELETE FROM pool_gameobject WHERE guid=195561 AND pool_entry=11554;
DELETE FROM pool_gameobject WHERE guid=195562 AND pool_entry=11554;
DELETE FROM pool_gameobject WHERE guid=195563 AND pool_entry=11554;
DELETE FROM pool_gameobject WHERE guid=195564 AND pool_entry=11553;
DELETE FROM pool_gameobject WHERE guid=195565 AND pool_entry=11553;
DELETE FROM pool_gameobject WHERE guid=195566 AND pool_entry=11553;
DELETE FROM pool_gameobject WHERE guid=195567 AND pool_entry=11553;
DELETE FROM pool_gameobject WHERE guid=195568 AND pool_entry=11552;
DELETE FROM pool_gameobject WHERE guid=195569 AND pool_entry=11552;
DELETE FROM pool_gameobject WHERE guid=195570 AND pool_entry=11552;
DELETE FROM pool_gameobject WHERE guid=195571 AND pool_entry=11552;
DELETE FROM pool_gameobject WHERE guid=195572 AND pool_entry=11551;
DELETE FROM pool_gameobject WHERE guid=195573 AND pool_entry=11551;
DELETE FROM pool_gameobject WHERE guid=195574 AND pool_entry=11551;
DELETE FROM pool_gameobject WHERE guid=195575 AND pool_entry=11551;
DELETE FROM pool_gameobject WHERE guid=195576 AND pool_entry=11550;
DELETE FROM pool_gameobject WHERE guid=195577 AND pool_entry=11550;
DELETE FROM pool_gameobject WHERE guid=195578 AND pool_entry=11550;
DELETE FROM pool_gameobject WHERE guid=195579 AND pool_entry=11550;
DELETE FROM pool_gameobject WHERE guid=195580 AND pool_entry=11549;
DELETE FROM pool_gameobject WHERE guid=195581 AND pool_entry=11549;
DELETE FROM pool_gameobject WHERE guid=195582 AND pool_entry=11549;
DELETE FROM pool_gameobject WHERE guid=195583 AND pool_entry=11549;
DELETE FROM pool_gameobject WHERE guid=195584 AND pool_entry=11548;
DELETE FROM pool_gameobject WHERE guid=195585 AND pool_entry=11548;
DELETE FROM pool_gameobject WHERE guid=195586 AND pool_entry=11548;
DELETE FROM pool_gameobject WHERE guid=195587 AND pool_entry=11548;
DELETE FROM pool_gameobject WHERE guid=195588 AND pool_entry=11547;
DELETE FROM pool_gameobject WHERE guid=195589 AND pool_entry=11547;
DELETE FROM pool_gameobject WHERE guid=195590 AND pool_entry=11547;
DELETE FROM pool_gameobject WHERE guid=195591 AND pool_entry=11547;
DELETE FROM pool_gameobject WHERE guid=195592 AND pool_entry=11546;
DELETE FROM pool_gameobject WHERE guid=195593 AND pool_entry=11546;
DELETE FROM pool_gameobject WHERE guid=195594 AND pool_entry=11546;
DELETE FROM pool_gameobject WHERE guid=195595 AND pool_entry=11546;
DELETE FROM pool_gameobject WHERE guid=195596 AND pool_entry=11545;
DELETE FROM pool_gameobject WHERE guid=195597 AND pool_entry=11545;
DELETE FROM pool_gameobject WHERE guid=195598 AND pool_entry=11545;
DELETE FROM pool_gameobject WHERE guid=195599 AND pool_entry=11545;
DELETE FROM pool_gameobject WHERE guid=195600 AND pool_entry=11544;
DELETE FROM pool_gameobject WHERE guid=195601 AND pool_entry=11544;
DELETE FROM pool_gameobject WHERE guid=195602 AND pool_entry=11544;
DELETE FROM pool_gameobject WHERE guid=195603 AND pool_entry=11544;
DELETE FROM pool_gameobject WHERE guid=195604 AND pool_entry=11543;
DELETE FROM pool_gameobject WHERE guid=195605 AND pool_entry=11543;
DELETE FROM pool_gameobject WHERE guid=195606 AND pool_entry=11543;
DELETE FROM pool_gameobject WHERE guid=195607 AND pool_entry=11543;
DELETE FROM pool_gameobject WHERE guid=195608 AND pool_entry=11542;
DELETE FROM pool_gameobject WHERE guid=195609 AND pool_entry=11542;
DELETE FROM pool_gameobject WHERE guid=195610 AND pool_entry=11542;
DELETE FROM pool_gameobject WHERE guid=195611 AND pool_entry=11542;
DELETE FROM pool_gameobject WHERE guid=195612 AND pool_entry=11541;
DELETE FROM pool_gameobject WHERE guid=195613 AND pool_entry=11541;
DELETE FROM pool_gameobject WHERE guid=195614 AND pool_entry=11541;
DELETE FROM pool_gameobject WHERE guid=195615 AND pool_entry=11541;
DELETE FROM pool_gameobject WHERE guid=195616 AND pool_entry=11540;
DELETE FROM pool_gameobject WHERE guid=195617 AND pool_entry=11540;
DELETE FROM pool_gameobject WHERE guid=195618 AND pool_entry=11540;
DELETE FROM pool_gameobject WHERE guid=195619 AND pool_entry=11540;
DELETE FROM pool_gameobject WHERE guid=195620 AND pool_entry=11539;
DELETE FROM pool_gameobject WHERE guid=195621 AND pool_entry=11539;
DELETE FROM pool_gameobject WHERE guid=195622 AND pool_entry=11539;
DELETE FROM pool_gameobject WHERE guid=195623 AND pool_entry=11539;
DELETE FROM pool_gameobject WHERE guid=195624 AND pool_entry=11538;
DELETE FROM pool_gameobject WHERE guid=195625 AND pool_entry=11538;
DELETE FROM pool_gameobject WHERE guid=195626 AND pool_entry=11538;
DELETE FROM pool_gameobject WHERE guid=195627 AND pool_entry=11538;
DELETE FROM pool_gameobject WHERE guid=195628 AND pool_entry=11537;
DELETE FROM pool_gameobject WHERE guid=195629 AND pool_entry=11537;
DELETE FROM pool_gameobject WHERE guid=195630 AND pool_entry=11537;
DELETE FROM pool_gameobject WHERE guid=195631 AND pool_entry=11537;
DELETE FROM pool_gameobject WHERE guid=195632 AND pool_entry=11536;
DELETE FROM pool_gameobject WHERE guid=195633 AND pool_entry=11536;
DELETE FROM pool_gameobject WHERE guid=195634 AND pool_entry=11536;
DELETE FROM pool_gameobject WHERE guid=195635 AND pool_entry=11536;
DELETE FROM pool_gameobject WHERE guid=195636 AND pool_entry=11535;
DELETE FROM pool_gameobject WHERE guid=195637 AND pool_entry=11535;
DELETE FROM pool_gameobject WHERE guid=195638 AND pool_entry=11535;
DELETE FROM pool_gameobject WHERE guid=195639 AND pool_entry=11535;
DELETE FROM pool_gameobject WHERE guid=195640 AND pool_entry=11534;
DELETE FROM pool_gameobject WHERE guid=195641 AND pool_entry=11534;
DELETE FROM pool_gameobject WHERE guid=195642 AND pool_entry=11534;
DELETE FROM pool_gameobject WHERE guid=195643 AND pool_entry=11534;
DELETE FROM pool_gameobject WHERE guid=195644 AND pool_entry=11533;
DELETE FROM pool_gameobject WHERE guid=195645 AND pool_entry=11533;
DELETE FROM pool_gameobject WHERE guid=195646 AND pool_entry=11533;
DELETE FROM pool_gameobject WHERE guid=195647 AND pool_entry=11533;
DELETE FROM pool_gameobject WHERE guid=195648 AND pool_entry=11532;
DELETE FROM pool_gameobject WHERE guid=195649 AND pool_entry=11532;
DELETE FROM pool_gameobject WHERE guid=195650 AND pool_entry=11532;
DELETE FROM pool_gameobject WHERE guid=195651 AND pool_entry=11532;
DELETE FROM pool_gameobject WHERE guid=195652 AND pool_entry=11531;
DELETE FROM pool_gameobject WHERE guid=195653 AND pool_entry=11531;
DELETE FROM pool_gameobject WHERE guid=195654 AND pool_entry=11531;
DELETE FROM pool_gameobject WHERE guid=195655 AND pool_entry=11531;
DELETE FROM pool_gameobject WHERE guid=195656 AND pool_entry=11530;
DELETE FROM pool_gameobject WHERE guid=195657 AND pool_entry=11530;
DELETE FROM pool_gameobject WHERE guid=195658 AND pool_entry=11530;
DELETE FROM pool_gameobject WHERE guid=195659 AND pool_entry=11530;
DELETE FROM pool_gameobject WHERE guid=195660 AND pool_entry=11529;
DELETE FROM pool_gameobject WHERE guid=195661 AND pool_entry=11529;
DELETE FROM pool_gameobject WHERE guid=195662 AND pool_entry=11529;
DELETE FROM pool_gameobject WHERE guid=195663 AND pool_entry=11529;
DELETE FROM pool_gameobject WHERE guid=195664 AND pool_entry=11528;
DELETE FROM pool_gameobject WHERE guid=195665 AND pool_entry=11528;
DELETE FROM pool_gameobject WHERE guid=195666 AND pool_entry=11528;
DELETE FROM pool_gameobject WHERE guid=195667 AND pool_entry=11528;
DELETE FROM pool_gameobject WHERE guid=195668 AND pool_entry=11527;
DELETE FROM pool_gameobject WHERE guid=195669 AND pool_entry=11527;
DELETE FROM pool_gameobject WHERE guid=195670 AND pool_entry=11527;
DELETE FROM pool_gameobject WHERE guid=195671 AND pool_entry=11527;
DELETE FROM pool_gameobject WHERE guid=195672 AND pool_entry=11526;
DELETE FROM pool_gameobject WHERE guid=195673 AND pool_entry=11526;
DELETE FROM pool_gameobject WHERE guid=195674 AND pool_entry=11526;
DELETE FROM pool_gameobject WHERE guid=195675 AND pool_entry=11526;
DELETE FROM pool_gameobject WHERE guid=195676 AND pool_entry=11525;
DELETE FROM pool_gameobject WHERE guid=195677 AND pool_entry=11525;
DELETE FROM pool_gameobject WHERE guid=195678 AND pool_entry=11525;
DELETE FROM pool_gameobject WHERE guid=195679 AND pool_entry=11525;
DELETE FROM pool_gameobject WHERE guid=195680 AND pool_entry=11524;
DELETE FROM pool_gameobject WHERE guid=195681 AND pool_entry=11524;
DELETE FROM pool_gameobject WHERE guid=195682 AND pool_entry=11524;
DELETE FROM pool_gameobject WHERE guid=195683 AND pool_entry=11524;
DELETE FROM pool_gameobject WHERE guid=195684 AND pool_entry=11523;
DELETE FROM pool_gameobject WHERE guid=195685 AND pool_entry=11523;
DELETE FROM pool_gameobject WHERE guid=195687 AND pool_entry=11523;
DELETE FROM pool_gameobject WHERE guid=195688 AND pool_entry=11522;
DELETE FROM pool_gameobject WHERE guid=195689 AND pool_entry=11522;
DELETE FROM pool_gameobject WHERE guid=195690 AND pool_entry=11522;
DELETE FROM pool_gameobject WHERE guid=195691 AND pool_entry=11522;
DELETE FROM pool_gameobject WHERE guid=195692 AND pool_entry=11521;
DELETE FROM pool_gameobject WHERE guid=195693 AND pool_entry=11521;
DELETE FROM pool_gameobject WHERE guid=195694 AND pool_entry=11521;
DELETE FROM pool_gameobject WHERE guid=195695 AND pool_entry=11521;
DELETE FROM pool_gameobject WHERE guid=195696 AND pool_entry=11520;
DELETE FROM pool_gameobject WHERE guid=195697 AND pool_entry=11520;
DELETE FROM pool_gameobject WHERE guid=195698 AND pool_entry=11520;
DELETE FROM pool_gameobject WHERE guid=195699 AND pool_entry=11520;
DELETE FROM pool_gameobject WHERE guid=195700 AND pool_entry=11519;
DELETE FROM pool_gameobject WHERE guid=195701 AND pool_entry=11519;
DELETE FROM pool_gameobject WHERE guid=195702 AND pool_entry=11519;
DELETE FROM pool_gameobject WHERE guid=195703 AND pool_entry=11519;
DELETE FROM pool_gameobject WHERE guid=195704 AND pool_entry=11518;
DELETE FROM pool_gameobject WHERE guid=195705 AND pool_entry=11518;
DELETE FROM pool_gameobject WHERE guid=195706 AND pool_entry=11518;
DELETE FROM pool_gameobject WHERE guid=195707 AND pool_entry=11518;
DELETE FROM pool_gameobject WHERE guid=195708 AND pool_entry=11517;
DELETE FROM pool_gameobject WHERE guid=195709 AND pool_entry=11517;
DELETE FROM pool_gameobject WHERE guid=195710 AND pool_entry=11517;
DELETE FROM pool_gameobject WHERE guid=195711 AND pool_entry=11517;
DELETE FROM pool_gameobject WHERE guid=195712 AND pool_entry=11516;
DELETE FROM pool_gameobject WHERE guid=195713 AND pool_entry=11516;
DELETE FROM pool_gameobject WHERE guid=195714 AND pool_entry=11516;
DELETE FROM pool_gameobject WHERE guid=195715 AND pool_entry=11516;
DELETE FROM pool_gameobject WHERE guid=195716 AND pool_entry=11515;
DELETE FROM pool_gameobject WHERE guid=195717 AND pool_entry=11515;
DELETE FROM pool_gameobject WHERE guid=195718 AND pool_entry=11515;
DELETE FROM pool_gameobject WHERE guid=195719 AND pool_entry=11515;
DELETE FROM pool_gameobject WHERE guid=195720 AND pool_entry=11514;
DELETE FROM pool_gameobject WHERE guid=195721 AND pool_entry=11514;
DELETE FROM pool_gameobject WHERE guid=195722 AND pool_entry=11514;
DELETE FROM pool_gameobject WHERE guid=195723 AND pool_entry=11514;
DELETE FROM pool_gameobject WHERE guid=195724 AND pool_entry=11513;
DELETE FROM pool_gameobject WHERE guid=195725 AND pool_entry=11513;
DELETE FROM pool_gameobject WHERE guid=195726 AND pool_entry=11513;
DELETE FROM pool_gameobject WHERE guid=195727 AND pool_entry=11513;
DELETE FROM pool_gameobject WHERE guid=195728 AND pool_entry=11512;
DELETE FROM pool_gameobject WHERE guid=195729 AND pool_entry=11512;
DELETE FROM pool_gameobject WHERE guid=195730 AND pool_entry=11512;
DELETE FROM pool_gameobject WHERE guid=195731 AND pool_entry=11512;
DELETE FROM pool_gameobject WHERE guid=195732 AND pool_entry=11511;
DELETE FROM pool_gameobject WHERE guid=195733 AND pool_entry=11511;
DELETE FROM pool_gameobject WHERE guid=195734 AND pool_entry=11511;
DELETE FROM pool_gameobject WHERE guid=195735 AND pool_entry=11510;
DELETE FROM pool_gameobject WHERE guid=195736 AND pool_entry=11510;
DELETE FROM pool_gameobject WHERE guid=195737 AND pool_entry=11510;
DELETE FROM pool_gameobject WHERE guid=195738 AND pool_entry=11509;
DELETE FROM pool_gameobject WHERE guid=195739 AND pool_entry=11509;
DELETE FROM pool_gameobject WHERE guid=195740 AND pool_entry=11509;
DELETE FROM pool_gameobject WHERE guid=195741 AND pool_entry=11508;
DELETE FROM pool_gameobject WHERE guid=195742 AND pool_entry=11508;
DELETE FROM pool_gameobject WHERE guid=195743 AND pool_entry=11508;
DELETE FROM pool_gameobject WHERE guid=195744 AND pool_entry=11507;
DELETE FROM pool_gameobject WHERE guid=195745 AND pool_entry=11507;
DELETE FROM pool_gameobject WHERE guid=195746 AND pool_entry=11507;
DELETE FROM pool_gameobject WHERE guid=195747 AND pool_entry=11506;
DELETE FROM pool_gameobject WHERE guid=195748 AND pool_entry=11506;
DELETE FROM pool_gameobject WHERE guid=195749 AND pool_entry=11506;
DELETE FROM pool_gameobject WHERE guid=195750 AND pool_entry=11505;
DELETE FROM pool_gameobject WHERE guid=195751 AND pool_entry=11505;
DELETE FROM pool_gameobject WHERE guid=195752 AND pool_entry=11505;
DELETE FROM pool_gameobject WHERE guid=195753 AND pool_entry=11504;
DELETE FROM pool_gameobject WHERE guid=195754 AND pool_entry=11504;
DELETE FROM pool_gameobject WHERE guid=195755 AND pool_entry=11504;
DELETE FROM pool_gameobject WHERE guid=195756 AND pool_entry=11503;
DELETE FROM pool_gameobject WHERE guid=195757 AND pool_entry=11503;
DELETE FROM pool_gameobject WHERE guid=195758 AND pool_entry=11503;
DELETE FROM pool_gameobject WHERE guid=195759 AND pool_entry=11502;
DELETE FROM pool_gameobject WHERE guid=195760 AND pool_entry=11502;
DELETE FROM pool_gameobject WHERE guid=195761 AND pool_entry=11502;
DELETE FROM pool_gameobject WHERE guid=195762 AND pool_entry=11501;
DELETE FROM pool_gameobject WHERE guid=195763 AND pool_entry=11501;
DELETE FROM pool_gameobject WHERE guid=195764 AND pool_entry=11501;
DELETE FROM pool_gameobject WHERE guid=195765 AND pool_entry=11500;
DELETE FROM pool_gameobject WHERE guid=195766 AND pool_entry=11500;
DELETE FROM pool_gameobject WHERE guid=195767 AND pool_entry=11500;
DELETE FROM pool_gameobject WHERE guid=195768 AND pool_entry=11499;
DELETE FROM pool_gameobject WHERE guid=195769 AND pool_entry=11499;
DELETE FROM pool_gameobject WHERE guid=195770 AND pool_entry=11499;
DELETE FROM pool_gameobject WHERE guid=195771 AND pool_entry=11498;
DELETE FROM pool_gameobject WHERE guid=195772 AND pool_entry=11498;
DELETE FROM pool_gameobject WHERE guid=195773 AND pool_entry=11498;
DELETE FROM pool_gameobject WHERE guid=195774 AND pool_entry=11497;
DELETE FROM pool_gameobject WHERE guid=195775 AND pool_entry=11497;
DELETE FROM pool_gameobject WHERE guid=195776 AND pool_entry=11497;
DELETE FROM pool_gameobject WHERE guid=195777 AND pool_entry=11496;
DELETE FROM pool_gameobject WHERE guid=195778 AND pool_entry=11496;
DELETE FROM pool_gameobject WHERE guid=195779 AND pool_entry=11496;
DELETE FROM pool_gameobject WHERE guid=195780 AND pool_entry=11495;
DELETE FROM pool_gameobject WHERE guid=195781 AND pool_entry=11495;
DELETE FROM pool_gameobject WHERE guid=195782 AND pool_entry=11495;
DELETE FROM pool_gameobject WHERE guid=195783 AND pool_entry=11494;
DELETE FROM pool_gameobject WHERE guid=195784 AND pool_entry=11494;
DELETE FROM pool_gameobject WHERE guid=195785 AND pool_entry=11494;
DELETE FROM pool_gameobject WHERE guid=195786 AND pool_entry=11493;
DELETE FROM pool_gameobject WHERE guid=195787 AND pool_entry=11493;
DELETE FROM pool_gameobject WHERE guid=195788 AND pool_entry=11493;
DELETE FROM pool_gameobject WHERE guid=195789 AND pool_entry=11492;
DELETE FROM pool_gameobject WHERE guid=195790 AND pool_entry=11492;
DELETE FROM pool_gameobject WHERE guid=195791 AND pool_entry=11492;
DELETE FROM pool_gameobject WHERE guid=195792 AND pool_entry=11491;
DELETE FROM pool_gameobject WHERE guid=195793 AND pool_entry=11491;
DELETE FROM pool_gameobject WHERE guid=195794 AND pool_entry=11491;
DELETE FROM pool_gameobject WHERE guid=195795 AND pool_entry=11490;
DELETE FROM pool_gameobject WHERE guid=195796 AND pool_entry=11490;
DELETE FROM pool_gameobject WHERE guid=195797 AND pool_entry=11490;
DELETE FROM pool_gameobject WHERE guid=195798 AND pool_entry=11489;
DELETE FROM pool_gameobject WHERE guid=195799 AND pool_entry=11489;
DELETE FROM pool_gameobject WHERE guid=195800 AND pool_entry=11489;
DELETE FROM pool_gameobject WHERE guid=195801 AND pool_entry=11488;
DELETE FROM pool_gameobject WHERE guid=195802 AND pool_entry=11488;
DELETE FROM pool_gameobject WHERE guid=195803 AND pool_entry=11488;
DELETE FROM pool_gameobject WHERE guid=195804 AND pool_entry=11487;
DELETE FROM pool_gameobject WHERE guid=195805 AND pool_entry=11487;
DELETE FROM pool_gameobject WHERE guid=195806 AND pool_entry=11487;
DELETE FROM pool_gameobject WHERE guid=195807 AND pool_entry=11486;
DELETE FROM pool_gameobject WHERE guid=195808 AND pool_entry=11486;
DELETE FROM pool_gameobject WHERE guid=195809 AND pool_entry=11486;
DELETE FROM pool_gameobject WHERE guid=195810 AND pool_entry=11485;
DELETE FROM pool_gameobject WHERE guid=195811 AND pool_entry=11485;
DELETE FROM pool_gameobject WHERE guid=195812 AND pool_entry=11485;
DELETE FROM pool_gameobject WHERE guid=195813 AND pool_entry=11484;
DELETE FROM pool_gameobject WHERE guid=195814 AND pool_entry=11484;
DELETE FROM pool_gameobject WHERE guid=195815 AND pool_entry=11484;
DELETE FROM pool_gameobject WHERE guid=195816 AND pool_entry=11483;
DELETE FROM pool_gameobject WHERE guid=195817 AND pool_entry=11483;
DELETE FROM pool_gameobject WHERE guid=195818 AND pool_entry=11483;
DELETE FROM pool_gameobject WHERE guid=195819 AND pool_entry=11482;
DELETE FROM pool_gameobject WHERE guid=195820 AND pool_entry=11482;
DELETE FROM pool_gameobject WHERE guid=195821 AND pool_entry=11482;
DELETE FROM pool_gameobject WHERE guid=195822 AND pool_entry=11481;
DELETE FROM pool_gameobject WHERE guid=195823 AND pool_entry=11481;
DELETE FROM pool_gameobject WHERE guid=195824 AND pool_entry=11481;
DELETE FROM pool_gameobject WHERE guid=195825 AND pool_entry=11480;
DELETE FROM pool_gameobject WHERE guid=195826 AND pool_entry=11480;
DELETE FROM pool_gameobject WHERE guid=195827 AND pool_entry=11480;
DELETE FROM pool_gameobject WHERE guid=195828 AND pool_entry=11479;
DELETE FROM pool_gameobject WHERE guid=195829 AND pool_entry=11479;
DELETE FROM pool_gameobject WHERE guid=195830 AND pool_entry=11479;
DELETE FROM pool_gameobject WHERE guid=195831 AND pool_entry=11478;
DELETE FROM pool_gameobject WHERE guid=195832 AND pool_entry=11478;
DELETE FROM pool_gameobject WHERE guid=195833 AND pool_entry=11478;
DELETE FROM pool_gameobject WHERE guid=195834 AND pool_entry=11477;
DELETE FROM pool_gameobject WHERE guid=195835 AND pool_entry=11477;
DELETE FROM pool_gameobject WHERE guid=195836 AND pool_entry=11477;
DELETE FROM pool_gameobject WHERE guid=195837 AND pool_entry=11476;
DELETE FROM pool_gameobject WHERE guid=195838 AND pool_entry=11476;
DELETE FROM pool_gameobject WHERE guid=195839 AND pool_entry=11476;
DELETE FROM pool_gameobject WHERE guid=195840 AND pool_entry=11475;
DELETE FROM pool_gameobject WHERE guid=195841 AND pool_entry=11475;
DELETE FROM pool_gameobject WHERE guid=195842 AND pool_entry=11475;
DELETE FROM pool_gameobject WHERE guid=195843 AND pool_entry=11474;
DELETE FROM pool_gameobject WHERE guid=195844 AND pool_entry=11474;
DELETE FROM pool_gameobject WHERE guid=195845 AND pool_entry=11474;
DELETE FROM pool_gameobject WHERE guid=195846 AND pool_entry=11473;
DELETE FROM pool_gameobject WHERE guid=195847 AND pool_entry=11473;
DELETE FROM pool_gameobject WHERE guid=195848 AND pool_entry=11473;
DELETE FROM pool_gameobject WHERE guid=195849 AND pool_entry=11472;
DELETE FROM pool_gameobject WHERE guid=195850 AND pool_entry=11472;
DELETE FROM pool_gameobject WHERE guid=195851 AND pool_entry=11472;
DELETE FROM pool_gameobject WHERE guid=195852 AND pool_entry=11471;
DELETE FROM pool_gameobject WHERE guid=195853 AND pool_entry=11471;
DELETE FROM pool_gameobject WHERE guid=195854 AND pool_entry=11471;
DELETE FROM pool_gameobject WHERE guid=195855 AND pool_entry=11470;
DELETE FROM pool_gameobject WHERE guid=195856 AND pool_entry=11470;
DELETE FROM pool_gameobject WHERE guid=195857 AND pool_entry=11470;
DELETE FROM pool_gameobject WHERE guid=195858 AND pool_entry=11469;
DELETE FROM pool_gameobject WHERE guid=195859 AND pool_entry=11469;
DELETE FROM pool_gameobject WHERE guid=195860 AND pool_entry=11469;
DELETE FROM pool_gameobject WHERE guid=195861 AND pool_entry=11468;
DELETE FROM pool_gameobject WHERE guid=195862 AND pool_entry=11468;
DELETE FROM pool_gameobject WHERE guid=195863 AND pool_entry=11468;
DELETE FROM pool_gameobject WHERE guid=195864 AND pool_entry=11467;
DELETE FROM pool_gameobject WHERE guid=195865 AND pool_entry=11467;
DELETE FROM pool_gameobject WHERE guid=195866 AND pool_entry=11467;
DELETE FROM pool_gameobject WHERE guid=195867 AND pool_entry=11466;
DELETE FROM pool_gameobject WHERE guid=195868 AND pool_entry=11466;
DELETE FROM pool_gameobject WHERE guid=195869 AND pool_entry=11466;
DELETE FROM pool_gameobject WHERE guid=195870 AND pool_entry=11465;
DELETE FROM pool_gameobject WHERE guid=195871 AND pool_entry=11465;
DELETE FROM pool_gameobject WHERE guid=195872 AND pool_entry=11465;
DELETE FROM pool_gameobject WHERE guid=195873 AND pool_entry=11464;
DELETE FROM pool_gameobject WHERE guid=195874 AND pool_entry=11464;
DELETE FROM pool_gameobject WHERE guid=195875 AND pool_entry=11464;
DELETE FROM pool_gameobject WHERE guid=195876 AND pool_entry=11463;
DELETE FROM pool_gameobject WHERE guid=195877 AND pool_entry=11463;
DELETE FROM pool_gameobject WHERE guid=195878 AND pool_entry=11463;
DELETE FROM pool_gameobject WHERE guid=195879 AND pool_entry=11462;
DELETE FROM pool_gameobject WHERE guid=195880 AND pool_entry=11462;
DELETE FROM pool_gameobject WHERE guid=195881 AND pool_entry=11462;
DELETE FROM pool_gameobject WHERE guid=195882 AND pool_entry=11461;
DELETE FROM pool_gameobject WHERE guid=195883 AND pool_entry=11461;
DELETE FROM pool_gameobject WHERE guid=195884 AND pool_entry=11461;
DELETE FROM pool_gameobject WHERE guid=195885 AND pool_entry=11460;
DELETE FROM pool_gameobject WHERE guid=195886 AND pool_entry=11460;
DELETE FROM pool_gameobject WHERE guid=195887 AND pool_entry=11460;
DELETE FROM pool_gameobject WHERE guid=195888 AND pool_entry=11459;
DELETE FROM pool_gameobject WHERE guid=195889 AND pool_entry=11459;
DELETE FROM pool_gameobject WHERE guid=195890 AND pool_entry=11459;
DELETE FROM pool_gameobject WHERE guid=195891 AND pool_entry=11458;
DELETE FROM pool_gameobject WHERE guid=195892 AND pool_entry=11458;
DELETE FROM pool_gameobject WHERE guid=195893 AND pool_entry=11458;
DELETE FROM pool_gameobject WHERE guid=195894 AND pool_entry=11457;
DELETE FROM pool_gameobject WHERE guid=195895 AND pool_entry=11457;
DELETE FROM pool_gameobject WHERE guid=195896 AND pool_entry=11457;
DELETE FROM pool_gameobject WHERE guid=195897 AND pool_entry=11456;
DELETE FROM pool_gameobject WHERE guid=195898 AND pool_entry=11456;
DELETE FROM pool_gameobject WHERE guid=195899 AND pool_entry=11456;
DELETE FROM pool_gameobject WHERE guid=195900 AND pool_entry=11455;
DELETE FROM pool_gameobject WHERE guid=195901 AND pool_entry=11455;
DELETE FROM pool_gameobject WHERE guid=195902 AND pool_entry=11455;
DELETE FROM pool_gameobject WHERE guid=195903 AND pool_entry=11454;
DELETE FROM pool_gameobject WHERE guid=195904 AND pool_entry=11454;
DELETE FROM pool_gameobject WHERE guid=195905 AND pool_entry=11454;
DELETE FROM pool_gameobject WHERE guid=195906 AND pool_entry=11453;
DELETE FROM pool_gameobject WHERE guid=195907 AND pool_entry=11453;
DELETE FROM pool_gameobject WHERE guid=195908 AND pool_entry=11453;
DELETE FROM pool_gameobject WHERE guid=195909 AND pool_entry=11452;
DELETE FROM pool_gameobject WHERE guid=195910 AND pool_entry=11452;
DELETE FROM pool_gameobject WHERE guid=195911 AND pool_entry=11452;
DELETE FROM pool_gameobject WHERE guid=195912 AND pool_entry=11451;
DELETE FROM pool_gameobject WHERE guid=195913 AND pool_entry=11451;
DELETE FROM pool_gameobject WHERE guid=195914 AND pool_entry=11451;
DELETE FROM pool_gameobject WHERE guid=195915 AND pool_entry=11450;
DELETE FROM pool_gameobject WHERE guid=195916 AND pool_entry=11450;
DELETE FROM pool_gameobject WHERE guid=195917 AND pool_entry=11450;
DELETE FROM pool_gameobject WHERE guid=195918 AND pool_entry=11449;
DELETE FROM pool_gameobject WHERE guid=195919 AND pool_entry=11449;
DELETE FROM pool_gameobject WHERE guid=195920 AND pool_entry=11449;
DELETE FROM pool_gameobject WHERE guid=195921 AND pool_entry=11448;
DELETE FROM pool_gameobject WHERE guid=195922 AND pool_entry=11448;
DELETE FROM pool_gameobject WHERE guid=195923 AND pool_entry=11448;
DELETE FROM pool_gameobject WHERE guid=195924 AND pool_entry=11447;
DELETE FROM pool_gameobject WHERE guid=195925 AND pool_entry=11447;
DELETE FROM pool_gameobject WHERE guid=195926 AND pool_entry=11447;
DELETE FROM pool_gameobject WHERE guid=195927 AND pool_entry=11446;
DELETE FROM pool_gameobject WHERE guid=195928 AND pool_entry=11446;
DELETE FROM pool_gameobject WHERE guid=195929 AND pool_entry=11446;
DELETE FROM pool_gameobject WHERE guid=195930 AND pool_entry=11445;
DELETE FROM pool_gameobject WHERE guid=195931 AND pool_entry=11445;
DELETE FROM pool_gameobject WHERE guid=195932 AND pool_entry=11445;
DELETE FROM pool_gameobject WHERE guid=195933 AND pool_entry=11444;
DELETE FROM pool_gameobject WHERE guid=195934 AND pool_entry=11444;
DELETE FROM pool_gameobject WHERE guid=195935 AND pool_entry=11444;
DELETE FROM pool_gameobject WHERE guid=195936 AND pool_entry=11443;
DELETE FROM pool_gameobject WHERE guid=195937 AND pool_entry=11443;
DELETE FROM pool_gameobject WHERE guid=195938 AND pool_entry=11443;
DELETE FROM pool_gameobject WHERE guid=195939 AND pool_entry=11442;
DELETE FROM pool_gameobject WHERE guid=195940 AND pool_entry=11442;
DELETE FROM pool_gameobject WHERE guid=195941 AND pool_entry=11442;
DELETE FROM pool_gameobject WHERE guid=195942 AND pool_entry=11441;
DELETE FROM pool_gameobject WHERE guid=195943 AND pool_entry=11441;
DELETE FROM pool_gameobject WHERE guid=195944 AND pool_entry=11441;
DELETE FROM pool_gameobject WHERE guid=195945 AND pool_entry=11440;
DELETE FROM pool_gameobject WHERE guid=195946 AND pool_entry=11440;
DELETE FROM pool_gameobject WHERE guid=195947 AND pool_entry=11440;
DELETE FROM pool_gameobject WHERE guid=195948 AND pool_entry=11439;
DELETE FROM pool_gameobject WHERE guid=195949 AND pool_entry=11439;
DELETE FROM pool_gameobject WHERE guid=195950 AND pool_entry=11439;
DELETE FROM pool_gameobject WHERE guid=195951 AND pool_entry=11438;
DELETE FROM pool_gameobject WHERE guid=195952 AND pool_entry=11438;
DELETE FROM pool_gameobject WHERE guid=195953 AND pool_entry=11438;
DELETE FROM pool_gameobject WHERE guid=195954 AND pool_entry=11437;
DELETE FROM pool_gameobject WHERE guid=195955 AND pool_entry=11437;
DELETE FROM pool_gameobject WHERE guid=195956 AND pool_entry=11437;
DELETE FROM pool_gameobject WHERE guid=195957 AND pool_entry=11436;
DELETE FROM pool_gameobject WHERE guid=195958 AND pool_entry=11436;
DELETE FROM pool_gameobject WHERE guid=195959 AND pool_entry=11436;
DELETE FROM pool_gameobject WHERE guid=195960 AND pool_entry=11435;
DELETE FROM pool_gameobject WHERE guid=195961 AND pool_entry=11435;
DELETE FROM pool_gameobject WHERE guid=195962 AND pool_entry=11435;
DELETE FROM pool_gameobject WHERE guid=195963 AND pool_entry=11434;
DELETE FROM pool_gameobject WHERE guid=195964 AND pool_entry=11434;
DELETE FROM pool_gameobject WHERE guid=195965 AND pool_entry=11434;
DELETE FROM pool_gameobject WHERE guid=195966 AND pool_entry=11433;
DELETE FROM pool_gameobject WHERE guid=195967 AND pool_entry=11433;
DELETE FROM pool_gameobject WHERE guid=195968 AND pool_entry=11433;
DELETE FROM pool_gameobject WHERE guid=195969 AND pool_entry=11432;
DELETE FROM pool_gameobject WHERE guid=195970 AND pool_entry=11432;
DELETE FROM pool_gameobject WHERE guid=195971 AND pool_entry=11432;
DELETE FROM pool_gameobject WHERE guid=195972 AND pool_entry=11431;
DELETE FROM pool_gameobject WHERE guid=195973 AND pool_entry=11431;
DELETE FROM pool_gameobject WHERE guid=195974 AND pool_entry=11431;
DELETE FROM pool_gameobject WHERE guid=195975 AND pool_entry=11430;
DELETE FROM pool_gameobject WHERE guid=195976 AND pool_entry=11430;
DELETE FROM pool_gameobject WHERE guid=195977 AND pool_entry=11430;
DELETE FROM pool_gameobject WHERE guid=195978 AND pool_entry=11429;
DELETE FROM pool_gameobject WHERE guid=195979 AND pool_entry=11429;
DELETE FROM pool_gameobject WHERE guid=195980 AND pool_entry=11429;
DELETE FROM pool_gameobject WHERE guid=195981 AND pool_entry=11428;
DELETE FROM pool_gameobject WHERE guid=195982 AND pool_entry=11428;
DELETE FROM pool_gameobject WHERE guid=195983 AND pool_entry=11428;
DELETE FROM pool_gameobject WHERE guid=195984 AND pool_entry=11427;
DELETE FROM pool_gameobject WHERE guid=195985 AND pool_entry=11427;
DELETE FROM pool_gameobject WHERE guid=195986 AND pool_entry=11427;
DELETE FROM pool_gameobject WHERE guid=195987 AND pool_entry=11426;
DELETE FROM pool_gameobject WHERE guid=195988 AND pool_entry=11426;
DELETE FROM pool_gameobject WHERE guid=195989 AND pool_entry=11426;
DELETE FROM pool_gameobject WHERE guid=195990 AND pool_entry=11425;
DELETE FROM pool_gameobject WHERE guid=195991 AND pool_entry=11425;
DELETE FROM pool_gameobject WHERE guid=195992 AND pool_entry=11425;
DELETE FROM pool_gameobject WHERE guid=195993 AND pool_entry=11424;
DELETE FROM pool_gameobject WHERE guid=195994 AND pool_entry=11424;
DELETE FROM pool_gameobject WHERE guid=195995 AND pool_entry=11424;
DELETE FROM pool_gameobject WHERE guid=195996 AND pool_entry=11423;
DELETE FROM pool_gameobject WHERE guid=195997 AND pool_entry=11423;
DELETE FROM pool_gameobject WHERE guid=195998 AND pool_entry=11423;
DELETE FROM pool_gameobject WHERE guid=195999 AND pool_entry=11422;
DELETE FROM pool_gameobject WHERE guid=196000 AND pool_entry=11422;
DELETE FROM pool_gameobject WHERE guid=196001 AND pool_entry=11422;
DELETE FROM pool_gameobject WHERE guid=196002 AND pool_entry=11421;
DELETE FROM pool_gameobject WHERE guid=196003 AND pool_entry=11421;
DELETE FROM pool_gameobject WHERE guid=196004 AND pool_entry=11421;
DELETE FROM pool_gameobject WHERE guid=196005 AND pool_entry=11420;
DELETE FROM pool_gameobject WHERE guid=196006 AND pool_entry=11420;
DELETE FROM pool_gameobject WHERE guid=196007 AND pool_entry=11420;
DELETE FROM pool_gameobject WHERE guid=196008 AND pool_entry=11419;
DELETE FROM pool_gameobject WHERE guid=196009 AND pool_entry=11419;
DELETE FROM pool_gameobject WHERE guid=196010 AND pool_entry=11419;
DELETE FROM pool_gameobject WHERE guid=196011 AND pool_entry=11418;
DELETE FROM pool_gameobject WHERE guid=196012 AND pool_entry=11418;
DELETE FROM pool_gameobject WHERE guid=196013 AND pool_entry=11418;
DELETE FROM pool_gameobject WHERE guid=196014 AND pool_entry=11417;
DELETE FROM pool_gameobject WHERE guid=196015 AND pool_entry=11417;
DELETE FROM pool_gameobject WHERE guid=196016 AND pool_entry=11417;
DELETE FROM pool_gameobject WHERE guid=196017 AND pool_entry=11416;
DELETE FROM pool_gameobject WHERE guid=196018 AND pool_entry=11416;
DELETE FROM pool_gameobject WHERE guid=196019 AND pool_entry=11416;
DELETE FROM pool_gameobject WHERE guid=196020 AND pool_entry=11415;
DELETE FROM pool_gameobject WHERE guid=196021 AND pool_entry=11415;
DELETE FROM pool_gameobject WHERE guid=196022 AND pool_entry=11415;
DELETE FROM pool_gameobject WHERE guid=196023 AND pool_entry=11414;
DELETE FROM pool_gameobject WHERE guid=196024 AND pool_entry=11414;
DELETE FROM pool_gameobject WHERE guid=196025 AND pool_entry=11414;
DELETE FROM pool_gameobject WHERE guid=196026 AND pool_entry=11413;
DELETE FROM pool_gameobject WHERE guid=196027 AND pool_entry=11413;
DELETE FROM pool_gameobject WHERE guid=196028 AND pool_entry=11413;
DELETE FROM pool_gameobject WHERE guid=196029 AND pool_entry=11412;
DELETE FROM pool_gameobject WHERE guid=196030 AND pool_entry=11412;
DELETE FROM pool_gameobject WHERE guid=196031 AND pool_entry=11412;
DELETE FROM pool_gameobject WHERE guid=196032 AND pool_entry=11411;
DELETE FROM pool_gameobject WHERE guid=196033 AND pool_entry=11411;
DELETE FROM pool_gameobject WHERE guid=196034 AND pool_entry=11411;
DELETE FROM pool_gameobject WHERE guid=196035 AND pool_entry=11411;
DELETE FROM pool_gameobject WHERE guid=196036 AND pool_entry=11410;
DELETE FROM pool_gameobject WHERE guid=196037 AND pool_entry=11410;
DELETE FROM pool_gameobject WHERE guid=196038 AND pool_entry=11410;
DELETE FROM pool_gameobject WHERE guid=196039 AND pool_entry=11410;
DELETE FROM pool_gameobject WHERE guid=196040 AND pool_entry=11409;
DELETE FROM pool_gameobject WHERE guid=196041 AND pool_entry=11409;
DELETE FROM pool_gameobject WHERE guid=196042 AND pool_entry=11409;
DELETE FROM pool_gameobject WHERE guid=196043 AND pool_entry=11409;
DELETE FROM pool_gameobject WHERE guid=196044 AND pool_entry=11408;
DELETE FROM pool_gameobject WHERE guid=196045 AND pool_entry=11408;
DELETE FROM pool_gameobject WHERE guid=196046 AND pool_entry=11408;
DELETE FROM pool_gameobject WHERE guid=196047 AND pool_entry=11408;
DELETE FROM pool_gameobject WHERE guid=196048 AND pool_entry=11407;
DELETE FROM pool_gameobject WHERE guid=196049 AND pool_entry=11407;
DELETE FROM pool_gameobject WHERE guid=196050 AND pool_entry=11407;
DELETE FROM pool_gameobject WHERE guid=196051 AND pool_entry=11407;
DELETE FROM pool_gameobject WHERE guid=196052 AND pool_entry=11406;
DELETE FROM pool_gameobject WHERE guid=196053 AND pool_entry=11406;
DELETE FROM pool_gameobject WHERE guid=196054 AND pool_entry=11406;
DELETE FROM pool_gameobject WHERE guid=196055 AND pool_entry=11406;
DELETE FROM pool_gameobject WHERE guid=196056 AND pool_entry=11405;
DELETE FROM pool_gameobject WHERE guid=196057 AND pool_entry=11405;
DELETE FROM pool_gameobject WHERE guid=196058 AND pool_entry=11405;
DELETE FROM pool_gameobject WHERE guid=196059 AND pool_entry=11405;
DELETE FROM pool_gameobject WHERE guid=196060 AND pool_entry=11404;
DELETE FROM pool_gameobject WHERE guid=196061 AND pool_entry=11404;
DELETE FROM pool_gameobject WHERE guid=196062 AND pool_entry=11404;
DELETE FROM pool_gameobject WHERE guid=196063 AND pool_entry=11404;
DELETE FROM pool_gameobject WHERE guid=196064 AND pool_entry=11403;
DELETE FROM pool_gameobject WHERE guid=196065 AND pool_entry=11403;
DELETE FROM pool_gameobject WHERE guid=196066 AND pool_entry=11403;
DELETE FROM pool_gameobject WHERE guid=196067 AND pool_entry=11403;
DELETE FROM pool_gameobject WHERE guid=196068 AND pool_entry=11402;
DELETE FROM pool_gameobject WHERE guid=196069 AND pool_entry=11402;
DELETE FROM pool_gameobject WHERE guid=196070 AND pool_entry=11402;
DELETE FROM pool_gameobject WHERE guid=196071 AND pool_entry=11402;
DELETE FROM pool_gameobject WHERE guid=196072 AND pool_entry=11401;
DELETE FROM pool_gameobject WHERE guid=196073 AND pool_entry=11401;
DELETE FROM pool_gameobject WHERE guid=196074 AND pool_entry=11401;
DELETE FROM pool_gameobject WHERE guid=196075 AND pool_entry=11401;
DELETE FROM pool_gameobject WHERE guid=196076 AND pool_entry=11400;
DELETE FROM pool_gameobject WHERE guid=196077 AND pool_entry=11400;
DELETE FROM pool_gameobject WHERE guid=196078 AND pool_entry=11400;
DELETE FROM pool_gameobject WHERE guid=196079 AND pool_entry=11400;
DELETE FROM pool_gameobject WHERE guid=196080 AND pool_entry=11399;
DELETE FROM pool_gameobject WHERE guid=196081 AND pool_entry=11399;
DELETE FROM pool_gameobject WHERE guid=196082 AND pool_entry=11399;
DELETE FROM pool_gameobject WHERE guid=196083 AND pool_entry=11399;
DELETE FROM pool_gameobject WHERE guid=196084 AND pool_entry=11398;
DELETE FROM pool_gameobject WHERE guid=196085 AND pool_entry=11398;
DELETE FROM pool_gameobject WHERE guid=196086 AND pool_entry=11398;
DELETE FROM pool_gameobject WHERE guid=196087 AND pool_entry=11398;
DELETE FROM pool_gameobject WHERE guid=196088 AND pool_entry=11397;
DELETE FROM pool_gameobject WHERE guid=196089 AND pool_entry=11397;
DELETE FROM pool_gameobject WHERE guid=196090 AND pool_entry=11397;
DELETE FROM pool_gameobject WHERE guid=196091 AND pool_entry=11397;
DELETE FROM pool_gameobject WHERE guid=196092 AND pool_entry=11396;
DELETE FROM pool_gameobject WHERE guid=196093 AND pool_entry=11396;
DELETE FROM pool_gameobject WHERE guid=196094 AND pool_entry=11396;
DELETE FROM pool_gameobject WHERE guid=196095 AND pool_entry=11396;
DELETE FROM pool_gameobject WHERE guid=196096 AND pool_entry=11395;
DELETE FROM pool_gameobject WHERE guid=196097 AND pool_entry=11395;
DELETE FROM pool_gameobject WHERE guid=196098 AND pool_entry=11395;
DELETE FROM pool_gameobject WHERE guid=196099 AND pool_entry=11395;
DELETE FROM pool_gameobject WHERE guid=196100 AND pool_entry=11394;
DELETE FROM pool_gameobject WHERE guid=196101 AND pool_entry=11394;
DELETE FROM pool_gameobject WHERE guid=196102 AND pool_entry=11394;
DELETE FROM pool_gameobject WHERE guid=196103 AND pool_entry=11394;
DELETE FROM pool_gameobject WHERE guid=196104 AND pool_entry=11393;
DELETE FROM pool_gameobject WHERE guid=196105 AND pool_entry=11393;
DELETE FROM pool_gameobject WHERE guid=196106 AND pool_entry=11393;
DELETE FROM pool_gameobject WHERE guid=196107 AND pool_entry=11393;
DELETE FROM pool_gameobject WHERE guid=196108 AND pool_entry=11392;
DELETE FROM pool_gameobject WHERE guid=196109 AND pool_entry=11392;
DELETE FROM pool_gameobject WHERE guid=196110 AND pool_entry=11392;
DELETE FROM pool_gameobject WHERE guid=196111 AND pool_entry=11392;
DELETE FROM pool_gameobject WHERE guid=196112 AND pool_entry=11391;
DELETE FROM pool_gameobject WHERE guid=196113 AND pool_entry=11391;
DELETE FROM pool_gameobject WHERE guid=196114 AND pool_entry=11391;
DELETE FROM pool_gameobject WHERE guid=196115 AND pool_entry=11391;
DELETE FROM pool_gameobject WHERE guid=196116 AND pool_entry=11390;
DELETE FROM pool_gameobject WHERE guid=196117 AND pool_entry=11390;
DELETE FROM pool_gameobject WHERE guid=196118 AND pool_entry=11390;
DELETE FROM pool_gameobject WHERE guid=196119 AND pool_entry=11390;
DELETE FROM pool_gameobject WHERE guid=196120 AND pool_entry=11389;
DELETE FROM pool_gameobject WHERE guid=196121 AND pool_entry=11389;
DELETE FROM pool_gameobject WHERE guid=196122 AND pool_entry=11389;
DELETE FROM pool_gameobject WHERE guid=196123 AND pool_entry=11389;
DELETE FROM pool_gameobject WHERE guid=196124 AND pool_entry=11388;
DELETE FROM pool_gameobject WHERE guid=196125 AND pool_entry=11388;
DELETE FROM pool_gameobject WHERE guid=196126 AND pool_entry=11388;
DELETE FROM pool_gameobject WHERE guid=196127 AND pool_entry=11388;
DELETE FROM pool_gameobject WHERE guid=196128 AND pool_entry=11387;
DELETE FROM pool_gameobject WHERE guid=196129 AND pool_entry=11387;
DELETE FROM pool_gameobject WHERE guid=196130 AND pool_entry=11387;
DELETE FROM pool_gameobject WHERE guid=196131 AND pool_entry=11387;
DELETE FROM pool_gameobject WHERE guid=196132 AND pool_entry=11386;
DELETE FROM pool_gameobject WHERE guid=196133 AND pool_entry=11386;
DELETE FROM pool_gameobject WHERE guid=196134 AND pool_entry=11386;
DELETE FROM pool_gameobject WHERE guid=196135 AND pool_entry=11386;
DELETE FROM pool_gameobject WHERE guid=196136 AND pool_entry=11385;
DELETE FROM pool_gameobject WHERE guid=196137 AND pool_entry=11385;
DELETE FROM pool_gameobject WHERE guid=196138 AND pool_entry=11385;
DELETE FROM pool_gameobject WHERE guid=196139 AND pool_entry=11385;
DELETE FROM pool_gameobject WHERE guid=196140 AND pool_entry=11384;
DELETE FROM pool_gameobject WHERE guid=196141 AND pool_entry=11384;
DELETE FROM pool_gameobject WHERE guid=196142 AND pool_entry=11384;
DELETE FROM pool_gameobject WHERE guid=196143 AND pool_entry=11384;
DELETE FROM pool_gameobject WHERE guid=196144 AND pool_entry=11383;
DELETE FROM pool_gameobject WHERE guid=196145 AND pool_entry=11383;
DELETE FROM pool_gameobject WHERE guid=196146 AND pool_entry=11383;
DELETE FROM pool_gameobject WHERE guid=196147 AND pool_entry=11383;
DELETE FROM pool_gameobject WHERE guid=196148 AND pool_entry=11382;
DELETE FROM pool_gameobject WHERE guid=196149 AND pool_entry=11382;
DELETE FROM pool_gameobject WHERE guid=196150 AND pool_entry=11382;
DELETE FROM pool_gameobject WHERE guid=196151 AND pool_entry=11382;
DELETE FROM pool_gameobject WHERE guid=196152 AND pool_entry=11381;
DELETE FROM pool_gameobject WHERE guid=196153 AND pool_entry=11381;
DELETE FROM pool_gameobject WHERE guid=196154 AND pool_entry=11381;
DELETE FROM pool_gameobject WHERE guid=196155 AND pool_entry=11381;
DELETE FROM pool_gameobject WHERE guid=196156 AND pool_entry=11380;
DELETE FROM pool_gameobject WHERE guid=196157 AND pool_entry=11380;
DELETE FROM pool_gameobject WHERE guid=196158 AND pool_entry=11380;
DELETE FROM pool_gameobject WHERE guid=196159 AND pool_entry=11380;
DELETE FROM pool_gameobject WHERE guid=196160 AND pool_entry=11379;
DELETE FROM pool_gameobject WHERE guid=196161 AND pool_entry=11379;
DELETE FROM pool_gameobject WHERE guid=196162 AND pool_entry=11379;
DELETE FROM pool_gameobject WHERE guid=196163 AND pool_entry=11379;
DELETE FROM pool_gameobject WHERE guid=196164 AND pool_entry=11378;
DELETE FROM pool_gameobject WHERE guid=196165 AND pool_entry=11378;
DELETE FROM pool_gameobject WHERE guid=196166 AND pool_entry=11378;
DELETE FROM pool_gameobject WHERE guid=196167 AND pool_entry=11378;
DELETE FROM pool_gameobject WHERE guid=196168 AND pool_entry=11377;
DELETE FROM pool_gameobject WHERE guid=196169 AND pool_entry=11377;
DELETE FROM pool_gameobject WHERE guid=196170 AND pool_entry=11377;
DELETE FROM pool_gameobject WHERE guid=196171 AND pool_entry=11377;
DELETE FROM pool_gameobject WHERE guid=196172 AND pool_entry=11376;
DELETE FROM pool_gameobject WHERE guid=196173 AND pool_entry=11376;
DELETE FROM pool_gameobject WHERE guid=196174 AND pool_entry=11376;
DELETE FROM pool_gameobject WHERE guid=196175 AND pool_entry=11376;
DELETE FROM pool_gameobject WHERE guid=196176 AND pool_entry=11375;
DELETE FROM pool_gameobject WHERE guid=196177 AND pool_entry=11375;
DELETE FROM pool_gameobject WHERE guid=196178 AND pool_entry=11375;
DELETE FROM pool_gameobject WHERE guid=196179 AND pool_entry=11375;
DELETE FROM pool_gameobject WHERE guid=196180 AND pool_entry=11374;
DELETE FROM pool_gameobject WHERE guid=196181 AND pool_entry=11374;
DELETE FROM pool_gameobject WHERE guid=196182 AND pool_entry=11374;
DELETE FROM pool_gameobject WHERE guid=196183 AND pool_entry=11374;
DELETE FROM pool_gameobject WHERE guid=196184 AND pool_entry=11373;
DELETE FROM pool_gameobject WHERE guid=196185 AND pool_entry=11373;
DELETE FROM pool_gameobject WHERE guid=196186 AND pool_entry=11373;
DELETE FROM pool_gameobject WHERE guid=196187 AND pool_entry=11373;
DELETE FROM pool_gameobject WHERE guid=196188 AND pool_entry=11372;
DELETE FROM pool_gameobject WHERE guid=196189 AND pool_entry=11372;
DELETE FROM pool_gameobject WHERE guid=196190 AND pool_entry=11372;
DELETE FROM pool_gameobject WHERE guid=196191 AND pool_entry=11372;
DELETE FROM pool_gameobject WHERE guid=196192 AND pool_entry=11371;
DELETE FROM pool_gameobject WHERE guid=196193 AND pool_entry=11371;
DELETE FROM pool_gameobject WHERE guid=196194 AND pool_entry=11371;
DELETE FROM pool_gameobject WHERE guid=196195 AND pool_entry=11371;
DELETE FROM pool_gameobject WHERE guid=196196 AND pool_entry=11370;
DELETE FROM pool_gameobject WHERE guid=196197 AND pool_entry=11370;
DELETE FROM pool_gameobject WHERE guid=196198 AND pool_entry=11370;
DELETE FROM pool_gameobject WHERE guid=196199 AND pool_entry=11370;
DELETE FROM pool_gameobject WHERE guid=196200 AND pool_entry=11369;
DELETE FROM pool_gameobject WHERE guid=196201 AND pool_entry=11369;
DELETE FROM pool_gameobject WHERE guid=196202 AND pool_entry=11369;
DELETE FROM pool_gameobject WHERE guid=196203 AND pool_entry=11369;
DELETE FROM pool_gameobject WHERE guid=196204 AND pool_entry=11368;
DELETE FROM pool_gameobject WHERE guid=196205 AND pool_entry=11368;
DELETE FROM pool_gameobject WHERE guid=196206 AND pool_entry=11368;
DELETE FROM pool_gameobject WHERE guid=196207 AND pool_entry=11368;
DELETE FROM pool_gameobject WHERE guid=196208 AND pool_entry=11367;
DELETE FROM pool_gameobject WHERE guid=196209 AND pool_entry=11367;
DELETE FROM pool_gameobject WHERE guid=196210 AND pool_entry=11367;
DELETE FROM pool_gameobject WHERE guid=196211 AND pool_entry=11367;
DELETE FROM pool_gameobject WHERE guid=196212 AND pool_entry=11366;
DELETE FROM pool_gameobject WHERE guid=196213 AND pool_entry=11366;
DELETE FROM pool_gameobject WHERE guid=196214 AND pool_entry=11366;
DELETE FROM pool_gameobject WHERE guid=196215 AND pool_entry=11366;
DELETE FROM pool_gameobject WHERE guid=196216 AND pool_entry=11365;
DELETE FROM pool_gameobject WHERE guid=196217 AND pool_entry=11365;
DELETE FROM pool_gameobject WHERE guid=196218 AND pool_entry=11365;
DELETE FROM pool_gameobject WHERE guid=196219 AND pool_entry=11365;
DELETE FROM pool_gameobject WHERE guid=196220 AND pool_entry=11364;
DELETE FROM pool_gameobject WHERE guid=196221 AND pool_entry=11364;
DELETE FROM pool_gameobject WHERE guid=196222 AND pool_entry=11364;
DELETE FROM pool_gameobject WHERE guid=196223 AND pool_entry=11364;
DELETE FROM pool_gameobject WHERE guid=196224 AND pool_entry=11363;
DELETE FROM pool_gameobject WHERE guid=196225 AND pool_entry=11363;
DELETE FROM pool_gameobject WHERE guid=196226 AND pool_entry=11363;
DELETE FROM pool_gameobject WHERE guid=196227 AND pool_entry=11363;
DELETE FROM pool_gameobject WHERE guid=196228 AND pool_entry=11362;
DELETE FROM pool_gameobject WHERE guid=196229 AND pool_entry=11362;
DELETE FROM pool_gameobject WHERE guid=196230 AND pool_entry=11362;
DELETE FROM pool_gameobject WHERE guid=196231 AND pool_entry=11362;
DELETE FROM pool_gameobject WHERE guid=196232 AND pool_entry=11361;
DELETE FROM pool_gameobject WHERE guid=196233 AND pool_entry=11361;
DELETE FROM pool_gameobject WHERE guid=196234 AND pool_entry=11361;
DELETE FROM pool_gameobject WHERE guid=196235 AND pool_entry=11361;
DELETE FROM pool_gameobject WHERE guid=196236 AND pool_entry=11360;
DELETE FROM pool_gameobject WHERE guid=196237 AND pool_entry=11360;
DELETE FROM pool_gameobject WHERE guid=196238 AND pool_entry=11360;
DELETE FROM pool_gameobject WHERE guid=196239 AND pool_entry=11360;
DELETE FROM pool_gameobject WHERE guid=196240 AND pool_entry=11359;
DELETE FROM pool_gameobject WHERE guid=196241 AND pool_entry=11359;
DELETE FROM pool_gameobject WHERE guid=196242 AND pool_entry=11359;
DELETE FROM pool_gameobject WHERE guid=196243 AND pool_entry=11359;
DELETE FROM pool_gameobject WHERE guid=196244 AND pool_entry=11358;
DELETE FROM pool_gameobject WHERE guid=196245 AND pool_entry=11358;
DELETE FROM pool_gameobject WHERE guid=196246 AND pool_entry=11358;
DELETE FROM pool_gameobject WHERE guid=196247 AND pool_entry=11358;
DELETE FROM pool_gameobject WHERE guid=196248 AND pool_entry=11357;
DELETE FROM pool_gameobject WHERE guid=196249 AND pool_entry=11357;
DELETE FROM pool_gameobject WHERE guid=196250 AND pool_entry=11357;
DELETE FROM pool_gameobject WHERE guid=196251 AND pool_entry=11357;
DELETE FROM pool_gameobject WHERE guid=196252 AND pool_entry=11356;
DELETE FROM pool_gameobject WHERE guid=196253 AND pool_entry=11356;
DELETE FROM pool_gameobject WHERE guid=196254 AND pool_entry=11356;
DELETE FROM pool_gameobject WHERE guid=196255 AND pool_entry=11356;
DELETE FROM pool_gameobject WHERE guid=196256 AND pool_entry=11355;
DELETE FROM pool_gameobject WHERE guid=196257 AND pool_entry=11355;
DELETE FROM pool_gameobject WHERE guid=196258 AND pool_entry=11355;
DELETE FROM pool_gameobject WHERE guid=196259 AND pool_entry=11355;
DELETE FROM pool_gameobject WHERE guid=196260 AND pool_entry=11354;
DELETE FROM pool_gameobject WHERE guid=196261 AND pool_entry=11354;
DELETE FROM pool_gameobject WHERE guid=196262 AND pool_entry=11354;
DELETE FROM pool_gameobject WHERE guid=196263 AND pool_entry=11354;
DELETE FROM pool_gameobject WHERE guid=196264 AND pool_entry=11353;
DELETE FROM pool_gameobject WHERE guid=196265 AND pool_entry=11353;
DELETE FROM pool_gameobject WHERE guid=196266 AND pool_entry=11353;
DELETE FROM pool_gameobject WHERE guid=196267 AND pool_entry=11353;
DELETE FROM pool_gameobject WHERE guid=196268 AND pool_entry=11352;
DELETE FROM pool_gameobject WHERE guid=196269 AND pool_entry=11352;
DELETE FROM pool_gameobject WHERE guid=196270 AND pool_entry=11352;
DELETE FROM pool_gameobject WHERE guid=196271 AND pool_entry=11352;
DELETE FROM pool_gameobject WHERE guid=196272 AND pool_entry=11351;
DELETE FROM pool_gameobject WHERE guid=196273 AND pool_entry=11351;
DELETE FROM pool_gameobject WHERE guid=196274 AND pool_entry=11351;
DELETE FROM pool_gameobject WHERE guid=196275 AND pool_entry=11351;
DELETE FROM pool_gameobject WHERE guid=196276 AND pool_entry=11350;
DELETE FROM pool_gameobject WHERE guid=196277 AND pool_entry=11350;
DELETE FROM pool_gameobject WHERE guid=196278 AND pool_entry=11350;
DELETE FROM pool_gameobject WHERE guid=196279 AND pool_entry=11350;
DELETE FROM pool_gameobject WHERE guid=196280 AND pool_entry=11349;
DELETE FROM pool_gameobject WHERE guid=196281 AND pool_entry=11349;
DELETE FROM pool_gameobject WHERE guid=196282 AND pool_entry=11349;
DELETE FROM pool_gameobject WHERE guid=196283 AND pool_entry=11349;
DELETE FROM pool_gameobject WHERE guid=196284 AND pool_entry=11348;
DELETE FROM pool_gameobject WHERE guid=196285 AND pool_entry=11348;
DELETE FROM pool_gameobject WHERE guid=196286 AND pool_entry=11348;
DELETE FROM pool_gameobject WHERE guid=196287 AND pool_entry=11348;
DELETE FROM pool_gameobject WHERE guid=196288 AND pool_entry=11347;
DELETE FROM pool_gameobject WHERE guid=196289 AND pool_entry=11347;
DELETE FROM pool_gameobject WHERE guid=196290 AND pool_entry=11347;
DELETE FROM pool_gameobject WHERE guid=196291 AND pool_entry=11347;
DELETE FROM pool_gameobject WHERE guid=196292 AND pool_entry=11346;
DELETE FROM pool_gameobject WHERE guid=196293 AND pool_entry=11346;
DELETE FROM pool_gameobject WHERE guid=196294 AND pool_entry=11346;
DELETE FROM pool_gameobject WHERE guid=196295 AND pool_entry=11346;
DELETE FROM pool_gameobject WHERE guid=196296 AND pool_entry=11345;
DELETE FROM pool_gameobject WHERE guid=196297 AND pool_entry=11345;
DELETE FROM pool_gameobject WHERE guid=196298 AND pool_entry=11345;
DELETE FROM pool_gameobject WHERE guid=196299 AND pool_entry=11345;
DELETE FROM pool_gameobject WHERE guid=196300 AND pool_entry=11344;
DELETE FROM pool_gameobject WHERE guid=196301 AND pool_entry=11344;
DELETE FROM pool_gameobject WHERE guid=196302 AND pool_entry=11344;
DELETE FROM pool_gameobject WHERE guid=196303 AND pool_entry=11344;
DELETE FROM pool_gameobject WHERE guid=196304 AND pool_entry=11343;
DELETE FROM pool_gameobject WHERE guid=196305 AND pool_entry=11343;
DELETE FROM pool_gameobject WHERE guid=196306 AND pool_entry=11343;
DELETE FROM pool_gameobject WHERE guid=196307 AND pool_entry=11343;
DELETE FROM pool_gameobject WHERE guid=196308 AND pool_entry=11342;
DELETE FROM pool_gameobject WHERE guid=196309 AND pool_entry=11342;
DELETE FROM pool_gameobject WHERE guid=196310 AND pool_entry=11342;
DELETE FROM pool_gameobject WHERE guid=196311 AND pool_entry=11342;
DELETE FROM pool_gameobject WHERE guid=196312 AND pool_entry=11341;
DELETE FROM pool_gameobject WHERE guid=196313 AND pool_entry=11341;
DELETE FROM pool_gameobject WHERE guid=196314 AND pool_entry=11341;
DELETE FROM pool_gameobject WHERE guid=196315 AND pool_entry=11341;
DELETE FROM pool_gameobject WHERE guid=196316 AND pool_entry=11340;
DELETE FROM pool_gameobject WHERE guid=196317 AND pool_entry=11340;
DELETE FROM pool_gameobject WHERE guid=196318 AND pool_entry=11340;
DELETE FROM pool_gameobject WHERE guid=196319 AND pool_entry=11340;
DELETE FROM pool_gameobject WHERE guid=196320 AND pool_entry=11339;
DELETE FROM pool_gameobject WHERE guid=196321 AND pool_entry=11339;
DELETE FROM pool_gameobject WHERE guid=196322 AND pool_entry=11339;
DELETE FROM pool_gameobject WHERE guid=196323 AND pool_entry=11339;
DELETE FROM pool_gameobject WHERE guid=196324 AND pool_entry=11338;
DELETE FROM pool_gameobject WHERE guid=196325 AND pool_entry=11338;
DELETE FROM pool_gameobject WHERE guid=196326 AND pool_entry=11338;
DELETE FROM pool_gameobject WHERE guid=196327 AND pool_entry=11338;
DELETE FROM pool_gameobject WHERE guid=196328 AND pool_entry=11337;
DELETE FROM pool_gameobject WHERE guid=196329 AND pool_entry=11337;
DELETE FROM pool_gameobject WHERE guid=196330 AND pool_entry=11337;
DELETE FROM pool_gameobject WHERE guid=196331 AND pool_entry=11336;
DELETE FROM pool_gameobject WHERE guid=196332 AND pool_entry=11336;
DELETE FROM pool_gameobject WHERE guid=196333 AND pool_entry=11336;
DELETE FROM pool_gameobject WHERE guid=196334 AND pool_entry=11335;
DELETE FROM pool_gameobject WHERE guid=196335 AND pool_entry=11335;
DELETE FROM pool_gameobject WHERE guid=196336 AND pool_entry=11335;
DELETE FROM pool_gameobject WHERE guid=196337 AND pool_entry=11334;
DELETE FROM pool_gameobject WHERE guid=196338 AND pool_entry=11334;
DELETE FROM pool_gameobject WHERE guid=196339 AND pool_entry=11334;
DELETE FROM pool_gameobject WHERE guid=196340 AND pool_entry=11333;
DELETE FROM pool_gameobject WHERE guid=196341 AND pool_entry=11333;
DELETE FROM pool_gameobject WHERE guid=196342 AND pool_entry=11333;
DELETE FROM pool_gameobject WHERE guid=196343 AND pool_entry=11332;
DELETE FROM pool_gameobject WHERE guid=196344 AND pool_entry=11332;
DELETE FROM pool_gameobject WHERE guid=196345 AND pool_entry=11332;
DELETE FROM pool_gameobject WHERE guid=196346 AND pool_entry=11331;
DELETE FROM pool_gameobject WHERE guid=196347 AND pool_entry=11331;
DELETE FROM pool_gameobject WHERE guid=196348 AND pool_entry=11331;
DELETE FROM pool_gameobject WHERE guid=196349 AND pool_entry=11330;
DELETE FROM pool_gameobject WHERE guid=196350 AND pool_entry=11330;
DELETE FROM pool_gameobject WHERE guid=196351 AND pool_entry=11330;
DELETE FROM pool_gameobject WHERE guid=196352 AND pool_entry=11329;
DELETE FROM pool_gameobject WHERE guid=196353 AND pool_entry=11329;
DELETE FROM pool_gameobject WHERE guid=196354 AND pool_entry=11329;
DELETE FROM pool_gameobject WHERE guid=196355 AND pool_entry=11328;
DELETE FROM pool_gameobject WHERE guid=196356 AND pool_entry=11328;
DELETE FROM pool_gameobject WHERE guid=196357 AND pool_entry=11328;
DELETE FROM pool_gameobject WHERE guid=196358 AND pool_entry=11327;
DELETE FROM pool_gameobject WHERE guid=196359 AND pool_entry=11327;
DELETE FROM pool_gameobject WHERE guid=196360 AND pool_entry=11327;
DELETE FROM pool_gameobject WHERE guid=196361 AND pool_entry=11326;
DELETE FROM pool_gameobject WHERE guid=196362 AND pool_entry=11326;
DELETE FROM pool_gameobject WHERE guid=196363 AND pool_entry=11326;
DELETE FROM pool_gameobject WHERE guid=196364 AND pool_entry=11325;
DELETE FROM pool_gameobject WHERE guid=196365 AND pool_entry=11325;
DELETE FROM pool_gameobject WHERE guid=196366 AND pool_entry=11325;
DELETE FROM pool_gameobject WHERE guid=196367 AND pool_entry=11324;
DELETE FROM pool_gameobject WHERE guid=196368 AND pool_entry=11324;
DELETE FROM pool_gameobject WHERE guid=196369 AND pool_entry=11324;
DELETE FROM pool_gameobject WHERE guid=196370 AND pool_entry=11323;
DELETE FROM pool_gameobject WHERE guid=196371 AND pool_entry=11323;
DELETE FROM pool_gameobject WHERE guid=196372 AND pool_entry=11323;
DELETE FROM pool_gameobject WHERE guid=196373 AND pool_entry=11322;
DELETE FROM pool_gameobject WHERE guid=196374 AND pool_entry=11322;
DELETE FROM pool_gameobject WHERE guid=196375 AND pool_entry=11322;
DELETE FROM pool_gameobject WHERE guid=196376 AND pool_entry=11321;
DELETE FROM pool_gameobject WHERE guid=196377 AND pool_entry=11321;
DELETE FROM pool_gameobject WHERE guid=196378 AND pool_entry=11321;
DELETE FROM pool_gameobject WHERE guid=196379 AND pool_entry=11320;
DELETE FROM pool_gameobject WHERE guid=196380 AND pool_entry=11320;
DELETE FROM pool_gameobject WHERE guid=196381 AND pool_entry=11320;
DELETE FROM pool_gameobject WHERE guid=196382 AND pool_entry=11319;
DELETE FROM pool_gameobject WHERE guid=196383 AND pool_entry=11319;
DELETE FROM pool_gameobject WHERE guid=196384 AND pool_entry=11319;
DELETE FROM pool_gameobject WHERE guid=196385 AND pool_entry=11318;
DELETE FROM pool_gameobject WHERE guid=196386 AND pool_entry=11318;
DELETE FROM pool_gameobject WHERE guid=196387 AND pool_entry=11318;
DELETE FROM pool_gameobject WHERE guid=196388 AND pool_entry=11317;
DELETE FROM pool_gameobject WHERE guid=196389 AND pool_entry=11317;
DELETE FROM pool_gameobject WHERE guid=196390 AND pool_entry=11317;
DELETE FROM pool_gameobject WHERE guid=196391 AND pool_entry=11316;
DELETE FROM pool_gameobject WHERE guid=196392 AND pool_entry=11316;
DELETE FROM pool_gameobject WHERE guid=196393 AND pool_entry=11316;
DELETE FROM pool_gameobject WHERE guid=196394 AND pool_entry=11315;
DELETE FROM pool_gameobject WHERE guid=196395 AND pool_entry=11315;
DELETE FROM pool_gameobject WHERE guid=196396 AND pool_entry=11315;
DELETE FROM pool_gameobject WHERE guid=196397 AND pool_entry=11314;
DELETE FROM pool_gameobject WHERE guid=196398 AND pool_entry=11314;
DELETE FROM pool_gameobject WHERE guid=196399 AND pool_entry=11314;
DELETE FROM pool_gameobject WHERE guid=196400 AND pool_entry=11313;
DELETE FROM pool_gameobject WHERE guid=196401 AND pool_entry=11313;
DELETE FROM pool_gameobject WHERE guid=196402 AND pool_entry=11313;
DELETE FROM pool_gameobject WHERE guid=196403 AND pool_entry=11312;
DELETE FROM pool_gameobject WHERE guid=196404 AND pool_entry=11312;
DELETE FROM pool_gameobject WHERE guid=196405 AND pool_entry=11312;
DELETE FROM pool_gameobject WHERE guid=196406 AND pool_entry=11311;
DELETE FROM pool_gameobject WHERE guid=196407 AND pool_entry=11311;
DELETE FROM pool_gameobject WHERE guid=196408 AND pool_entry=11311;
DELETE FROM pool_gameobject WHERE guid=196409 AND pool_entry=11310;
DELETE FROM pool_gameobject WHERE guid=196410 AND pool_entry=11310;
DELETE FROM pool_gameobject WHERE guid=196411 AND pool_entry=11310;
DELETE FROM pool_gameobject WHERE guid=196412 AND pool_entry=11309;
DELETE FROM pool_gameobject WHERE guid=196413 AND pool_entry=11309;
DELETE FROM pool_gameobject WHERE guid=196414 AND pool_entry=11309;
DELETE FROM pool_gameobject WHERE guid=196415 AND pool_entry=11308;
DELETE FROM pool_gameobject WHERE guid=196416 AND pool_entry=11308;
DELETE FROM pool_gameobject WHERE guid=196417 AND pool_entry=11308;
DELETE FROM pool_gameobject WHERE guid=196418 AND pool_entry=11307;
DELETE FROM pool_gameobject WHERE guid=196419 AND pool_entry=11307;
DELETE FROM pool_gameobject WHERE guid=196420 AND pool_entry=11307;
DELETE FROM pool_gameobject WHERE guid=196421 AND pool_entry=11306;
DELETE FROM pool_gameobject WHERE guid=196422 AND pool_entry=11306;
DELETE FROM pool_gameobject WHERE guid=196423 AND pool_entry=11306;
DELETE FROM pool_gameobject WHERE guid=196424 AND pool_entry=11305;
DELETE FROM pool_gameobject WHERE guid=196425 AND pool_entry=11305;
DELETE FROM pool_gameobject WHERE guid=196426 AND pool_entry=11305;
DELETE FROM pool_gameobject WHERE guid=196427 AND pool_entry=11304;
DELETE FROM pool_gameobject WHERE guid=196428 AND pool_entry=11304;
DELETE FROM pool_gameobject WHERE guid=196429 AND pool_entry=11304;
DELETE FROM pool_gameobject WHERE guid=196430 AND pool_entry=11303;
DELETE FROM pool_gameobject WHERE guid=196431 AND pool_entry=11303;
DELETE FROM pool_gameobject WHERE guid=196432 AND pool_entry=11303;
DELETE FROM pool_gameobject WHERE guid=196433 AND pool_entry=11302;
DELETE FROM pool_gameobject WHERE guid=196434 AND pool_entry=11302;
DELETE FROM pool_gameobject WHERE guid=196435 AND pool_entry=11302;
DELETE FROM pool_gameobject WHERE guid=196436 AND pool_entry=11301;
DELETE FROM pool_gameobject WHERE guid=196437 AND pool_entry=11301;
DELETE FROM pool_gameobject WHERE guid=196438 AND pool_entry=11301;
DELETE FROM pool_gameobject WHERE guid=196439 AND pool_entry=11300;
DELETE FROM pool_gameobject WHERE guid=196440 AND pool_entry=11300;
DELETE FROM pool_gameobject WHERE guid=196441 AND pool_entry=11300;
DELETE FROM pool_gameobject WHERE guid=196442 AND pool_entry=11299;
DELETE FROM pool_gameobject WHERE guid=196443 AND pool_entry=11299;
DELETE FROM pool_gameobject WHERE guid=196444 AND pool_entry=11299;
DELETE FROM pool_gameobject WHERE guid=196445 AND pool_entry=11298;
DELETE FROM pool_gameobject WHERE guid=196446 AND pool_entry=11298;
DELETE FROM pool_gameobject WHERE guid=196447 AND pool_entry=11298;
DELETE FROM pool_gameobject WHERE guid=196448 AND pool_entry=11297;
DELETE FROM pool_gameobject WHERE guid=196449 AND pool_entry=11297;
DELETE FROM pool_gameobject WHERE guid=196450 AND pool_entry=11297;
DELETE FROM pool_gameobject WHERE guid=196451 AND pool_entry=11296;
DELETE FROM pool_gameobject WHERE guid=196452 AND pool_entry=11296;
DELETE FROM pool_gameobject WHERE guid=196453 AND pool_entry=11296;
DELETE FROM pool_gameobject WHERE guid=196454 AND pool_entry=11295;
DELETE FROM pool_gameobject WHERE guid=196455 AND pool_entry=11295;
DELETE FROM pool_gameobject WHERE guid=196456 AND pool_entry=11295;
DELETE FROM pool_gameobject WHERE guid=196457 AND pool_entry=11294;
DELETE FROM pool_gameobject WHERE guid=196458 AND pool_entry=11294;
DELETE FROM pool_gameobject WHERE guid=196459 AND pool_entry=11294;
DELETE FROM pool_gameobject WHERE guid=196460 AND pool_entry=11293;
DELETE FROM pool_gameobject WHERE guid=196461 AND pool_entry=11293;
DELETE FROM pool_gameobject WHERE guid=196462 AND pool_entry=11293;
DELETE FROM pool_gameobject WHERE guid=196463 AND pool_entry=11292;
DELETE FROM pool_gameobject WHERE guid=196464 AND pool_entry=11292;
DELETE FROM pool_gameobject WHERE guid=196465 AND pool_entry=11292;
DELETE FROM pool_gameobject WHERE guid=196466 AND pool_entry=11291;
DELETE FROM pool_gameobject WHERE guid=196467 AND pool_entry=11291;
DELETE FROM pool_gameobject WHERE guid=196468 AND pool_entry=11291;
DELETE FROM pool_gameobject WHERE guid=196469 AND pool_entry=11290;
DELETE FROM pool_gameobject WHERE guid=196470 AND pool_entry=11290;
DELETE FROM pool_gameobject WHERE guid=196471 AND pool_entry=11290;
DELETE FROM pool_gameobject WHERE guid=196472 AND pool_entry=11289;
DELETE FROM pool_gameobject WHERE guid=196473 AND pool_entry=11289;
DELETE FROM pool_gameobject WHERE guid=196474 AND pool_entry=11289;
DELETE FROM pool_gameobject WHERE guid=196475 AND pool_entry=11288;
DELETE FROM pool_gameobject WHERE guid=196476 AND pool_entry=11288;
DELETE FROM pool_gameobject WHERE guid=196477 AND pool_entry=11288;
DELETE FROM pool_gameobject WHERE guid=196478 AND pool_entry=11287;
DELETE FROM pool_gameobject WHERE guid=196479 AND pool_entry=11287;
DELETE FROM pool_gameobject WHERE guid=196480 AND pool_entry=11287;
DELETE FROM pool_gameobject WHERE guid=196481 AND pool_entry=11286;
DELETE FROM pool_gameobject WHERE guid=196482 AND pool_entry=11286;
DELETE FROM pool_gameobject WHERE guid=196483 AND pool_entry=11286;
DELETE FROM pool_gameobject WHERE guid=196484 AND pool_entry=11285;
DELETE FROM pool_gameobject WHERE guid=196485 AND pool_entry=11285;
DELETE FROM pool_gameobject WHERE guid=196486 AND pool_entry=11285;
DELETE FROM pool_gameobject WHERE guid=196487 AND pool_entry=11284;
DELETE FROM pool_gameobject WHERE guid=196488 AND pool_entry=11284;
DELETE FROM pool_gameobject WHERE guid=196489 AND pool_entry=11284;
DELETE FROM pool_gameobject WHERE guid=196490 AND pool_entry=11283;
DELETE FROM pool_gameobject WHERE guid=196491 AND pool_entry=11283;
DELETE FROM pool_gameobject WHERE guid=196492 AND pool_entry=11283;
DELETE FROM pool_gameobject WHERE guid=196493 AND pool_entry=11282;
DELETE FROM pool_gameobject WHERE guid=196494 AND pool_entry=11282;
DELETE FROM pool_gameobject WHERE guid=196495 AND pool_entry=11282;
DELETE FROM pool_gameobject WHERE guid=196496 AND pool_entry=11281;
DELETE FROM pool_gameobject WHERE guid=196497 AND pool_entry=11281;
DELETE FROM pool_gameobject WHERE guid=196498 AND pool_entry=11281;
DELETE FROM pool_gameobject WHERE guid=196499 AND pool_entry=11280;
DELETE FROM pool_gameobject WHERE guid=196500 AND pool_entry=11280;
DELETE FROM pool_gameobject WHERE guid=196501 AND pool_entry=11280;
DELETE FROM pool_gameobject WHERE guid=196502 AND pool_entry=11279;
DELETE FROM pool_gameobject WHERE guid=196503 AND pool_entry=11279;
DELETE FROM pool_gameobject WHERE guid=196504 AND pool_entry=11279;
DELETE FROM pool_gameobject WHERE guid=196505 AND pool_entry=11278;
DELETE FROM pool_gameobject WHERE guid=196506 AND pool_entry=11278;
DELETE FROM pool_gameobject WHERE guid=196507 AND pool_entry=11278;
DELETE FROM pool_gameobject WHERE guid=196508 AND pool_entry=11277;
DELETE FROM pool_gameobject WHERE guid=196509 AND pool_entry=11277;
DELETE FROM pool_gameobject WHERE guid=196510 AND pool_entry=11277;
DELETE FROM pool_gameobject WHERE guid=196511 AND pool_entry=11276;
DELETE FROM pool_gameobject WHERE guid=196512 AND pool_entry=11276;
DELETE FROM pool_gameobject WHERE guid=196513 AND pool_entry=11276;
DELETE FROM pool_gameobject WHERE guid=196514 AND pool_entry=11275;
DELETE FROM pool_gameobject WHERE guid=196515 AND pool_entry=11275;
DELETE FROM pool_gameobject WHERE guid=196516 AND pool_entry=11275;
DELETE FROM pool_gameobject WHERE guid=196517 AND pool_entry=11274;
DELETE FROM pool_gameobject WHERE guid=196518 AND pool_entry=11274;
DELETE FROM pool_gameobject WHERE guid=196519 AND pool_entry=11274;
DELETE FROM pool_gameobject WHERE guid=196520 AND pool_entry=11273;
DELETE FROM pool_gameobject WHERE guid=196521 AND pool_entry=11273;
DELETE FROM pool_gameobject WHERE guid=196522 AND pool_entry=11273;
DELETE FROM pool_gameobject WHERE guid=196523 AND pool_entry=11272;
DELETE FROM pool_gameobject WHERE guid=196524 AND pool_entry=11272;
DELETE FROM pool_gameobject WHERE guid=196525 AND pool_entry=11272;
DELETE FROM pool_gameobject WHERE guid=196526 AND pool_entry=11271;
DELETE FROM pool_gameobject WHERE guid=196527 AND pool_entry=11271;
DELETE FROM pool_gameobject WHERE guid=196528 AND pool_entry=11271;
DELETE FROM pool_gameobject WHERE guid=196529 AND pool_entry=11270;
DELETE FROM pool_gameobject WHERE guid=196530 AND pool_entry=11270;
DELETE FROM pool_gameobject WHERE guid=196531 AND pool_entry=11270;
DELETE FROM pool_gameobject WHERE guid=196532 AND pool_entry=11269;
DELETE FROM pool_gameobject WHERE guid=196533 AND pool_entry=11269;
DELETE FROM pool_gameobject WHERE guid=196534 AND pool_entry=11269;
DELETE FROM pool_gameobject WHERE guid=196535 AND pool_entry=11268;
DELETE FROM pool_gameobject WHERE guid=196536 AND pool_entry=11268;
DELETE FROM pool_gameobject WHERE guid=196537 AND pool_entry=11268;
DELETE FROM pool_gameobject WHERE guid=196538 AND pool_entry=11267;
DELETE FROM pool_gameobject WHERE guid=196539 AND pool_entry=11267;
DELETE FROM pool_gameobject WHERE guid=196540 AND pool_entry=11267;
DELETE FROM pool_gameobject WHERE guid=196541 AND pool_entry=11266;
DELETE FROM pool_gameobject WHERE guid=196542 AND pool_entry=11266;
DELETE FROM pool_gameobject WHERE guid=196543 AND pool_entry=11266;
DELETE FROM pool_gameobject WHERE guid=196544 AND pool_entry=11265;
DELETE FROM pool_gameobject WHERE guid=196545 AND pool_entry=11265;
DELETE FROM pool_gameobject WHERE guid=196546 AND pool_entry=11265;
DELETE FROM pool_gameobject WHERE guid=196547 AND pool_entry=11264;
DELETE FROM pool_gameobject WHERE guid=196548 AND pool_entry=11264;
DELETE FROM pool_gameobject WHERE guid=196549 AND pool_entry=11264;
DELETE FROM pool_gameobject WHERE guid=196550 AND pool_entry=11263;
DELETE FROM pool_gameobject WHERE guid=196551 AND pool_entry=11263;
DELETE FROM pool_gameobject WHERE guid=196552 AND pool_entry=11263;
DELETE FROM pool_gameobject WHERE guid=196553 AND pool_entry=11262;
DELETE FROM pool_gameobject WHERE guid=196554 AND pool_entry=11262;
DELETE FROM pool_gameobject WHERE guid=196555 AND pool_entry=11262;
DELETE FROM pool_gameobject WHERE guid=196556 AND pool_entry=11261;
DELETE FROM pool_gameobject WHERE guid=196557 AND pool_entry=11261;
DELETE FROM pool_gameobject WHERE guid=196558 AND pool_entry=11261;
DELETE FROM pool_gameobject WHERE guid=196559 AND pool_entry=11260;
DELETE FROM pool_gameobject WHERE guid=196560 AND pool_entry=11260;
DELETE FROM pool_gameobject WHERE guid=196561 AND pool_entry=11260;
DELETE FROM pool_gameobject WHERE guid=196562 AND pool_entry=11259;
DELETE FROM pool_gameobject WHERE guid=196563 AND pool_entry=11259;
DELETE FROM pool_gameobject WHERE guid=196564 AND pool_entry=11259;
DELETE FROM pool_gameobject WHERE guid=196565 AND pool_entry=11258;
DELETE FROM pool_gameobject WHERE guid=196566 AND pool_entry=11258;
DELETE FROM pool_gameobject WHERE guid=196567 AND pool_entry=11258;
DELETE FROM pool_gameobject WHERE guid=196568 AND pool_entry=11257;
DELETE FROM pool_gameobject WHERE guid=196569 AND pool_entry=11257;
DELETE FROM pool_gameobject WHERE guid=196570 AND pool_entry=11257;
DELETE FROM pool_gameobject WHERE guid=196571 AND pool_entry=11256;
DELETE FROM pool_gameobject WHERE guid=196572 AND pool_entry=11256;
DELETE FROM pool_gameobject WHERE guid=196573 AND pool_entry=11256;
DELETE FROM pool_gameobject WHERE guid=196574 AND pool_entry=11255;
DELETE FROM pool_gameobject WHERE guid=196575 AND pool_entry=11255;
DELETE FROM pool_gameobject WHERE guid=196576 AND pool_entry=11255;
DELETE FROM pool_gameobject WHERE guid=196577 AND pool_entry=11254;
DELETE FROM pool_gameobject WHERE guid=196578 AND pool_entry=11254;
DELETE FROM pool_gameobject WHERE guid=196579 AND pool_entry=11254;
DELETE FROM pool_gameobject WHERE guid=196580 AND pool_entry=11253;
DELETE FROM pool_gameobject WHERE guid=196581 AND pool_entry=11253;
DELETE FROM pool_gameobject WHERE guid=196582 AND pool_entry=11253;
DELETE FROM pool_gameobject WHERE guid=196583 AND pool_entry=11252;
DELETE FROM pool_gameobject WHERE guid=196584 AND pool_entry=11252;
DELETE FROM pool_gameobject WHERE guid=196585 AND pool_entry=11252;
DELETE FROM pool_gameobject WHERE guid=196586 AND pool_entry=11251;
DELETE FROM pool_gameobject WHERE guid=196587 AND pool_entry=11251;
DELETE FROM pool_gameobject WHERE guid=196588 AND pool_entry=11251;
DELETE FROM pool_gameobject WHERE guid=196589 AND pool_entry=11250;
DELETE FROM pool_gameobject WHERE guid=196590 AND pool_entry=11250;
DELETE FROM pool_gameobject WHERE guid=196591 AND pool_entry=11250;
DELETE FROM pool_gameobject WHERE guid=196592 AND pool_entry=11249;
DELETE FROM pool_gameobject WHERE guid=196593 AND pool_entry=11249;
DELETE FROM pool_gameobject WHERE guid=196594 AND pool_entry=11249;
DELETE FROM pool_gameobject WHERE guid=196595 AND pool_entry=11248;
DELETE FROM pool_gameobject WHERE guid=196596 AND pool_entry=11248;
DELETE FROM pool_gameobject WHERE guid=196597 AND pool_entry=11248;
DELETE FROM pool_gameobject WHERE guid=196598 AND pool_entry=11247;
DELETE FROM pool_gameobject WHERE guid=196599 AND pool_entry=11247;
DELETE FROM pool_gameobject WHERE guid=196600 AND pool_entry=11247;
DELETE FROM pool_gameobject WHERE guid=196601 AND pool_entry=11246;
DELETE FROM pool_gameobject WHERE guid=196602 AND pool_entry=11246;
DELETE FROM pool_gameobject WHERE guid=196603 AND pool_entry=11246;
DELETE FROM pool_gameobject WHERE guid=196604 AND pool_entry=11245;
DELETE FROM pool_gameobject WHERE guid=196605 AND pool_entry=11245;
DELETE FROM pool_gameobject WHERE guid=196606 AND pool_entry=11245;
DELETE FROM pool_gameobject WHERE guid=196607 AND pool_entry=11244;
DELETE FROM pool_gameobject WHERE guid=196608 AND pool_entry=11244;
DELETE FROM pool_gameobject WHERE guid=196609 AND pool_entry=11244;
DELETE FROM pool_gameobject WHERE guid=196610 AND pool_entry=11243;
DELETE FROM pool_gameobject WHERE guid=196611 AND pool_entry=11243;
DELETE FROM pool_gameobject WHERE guid=196612 AND pool_entry=11243;
DELETE FROM pool_gameobject WHERE guid=196613 AND pool_entry=11242;
DELETE FROM pool_gameobject WHERE guid=196614 AND pool_entry=11242;
DELETE FROM pool_gameobject WHERE guid=196615 AND pool_entry=11242;
DELETE FROM pool_gameobject WHERE guid=196616 AND pool_entry=11241;
DELETE FROM pool_gameobject WHERE guid=196617 AND pool_entry=11241;
DELETE FROM pool_gameobject WHERE guid=196618 AND pool_entry=11241;
DELETE FROM pool_gameobject WHERE guid=196619 AND pool_entry=11240;
DELETE FROM pool_gameobject WHERE guid=196620 AND pool_entry=11240;
DELETE FROM pool_gameobject WHERE guid=196621 AND pool_entry=11240;
DELETE FROM pool_gameobject WHERE guid=196622 AND pool_entry=11239;
DELETE FROM pool_gameobject WHERE guid=196623 AND pool_entry=11239;
DELETE FROM pool_gameobject WHERE guid=196624 AND pool_entry=11239;
DELETE FROM pool_gameobject WHERE guid=196625 AND pool_entry=11238;
DELETE FROM pool_gameobject WHERE guid=196626 AND pool_entry=11238;
DELETE FROM pool_gameobject WHERE guid=196627 AND pool_entry=11238;
DELETE FROM pool_gameobject WHERE guid=196628 AND pool_entry=11237;
DELETE FROM pool_gameobject WHERE guid=196629 AND pool_entry=11237;
DELETE FROM pool_gameobject WHERE guid=196630 AND pool_entry=11237;
DELETE FROM pool_gameobject WHERE guid=196631 AND pool_entry=11236;
DELETE FROM pool_gameobject WHERE guid=196632 AND pool_entry=11236;
DELETE FROM pool_gameobject WHERE guid=196633 AND pool_entry=11236;
DELETE FROM pool_gameobject WHERE guid=196634 AND pool_entry=11235;
DELETE FROM pool_gameobject WHERE guid=196635 AND pool_entry=11235;
DELETE FROM pool_gameobject WHERE guid=196636 AND pool_entry=11235;
DELETE FROM pool_gameobject WHERE guid=196637 AND pool_entry=11234;
DELETE FROM pool_gameobject WHERE guid=196638 AND pool_entry=11234;
DELETE FROM pool_gameobject WHERE guid=196639 AND pool_entry=11234;
DELETE FROM pool_gameobject WHERE guid=196640 AND pool_entry=11233;
DELETE FROM pool_gameobject WHERE guid=196641 AND pool_entry=11233;
DELETE FROM pool_gameobject WHERE guid=196642 AND pool_entry=11233;
DELETE FROM pool_gameobject WHERE guid=196643 AND pool_entry=11232;
DELETE FROM pool_gameobject WHERE guid=196644 AND pool_entry=11232;
DELETE FROM pool_gameobject WHERE guid=196645 AND pool_entry=11232;
DELETE FROM pool_gameobject WHERE guid=196646 AND pool_entry=11231;
DELETE FROM pool_gameobject WHERE guid=196647 AND pool_entry=11231;
DELETE FROM pool_gameobject WHERE guid=196648 AND pool_entry=11231;
DELETE FROM pool_gameobject WHERE guid=196649 AND pool_entry=11230;
DELETE FROM pool_gameobject WHERE guid=196650 AND pool_entry=11230;
DELETE FROM pool_gameobject WHERE guid=196651 AND pool_entry=11230;
DELETE FROM pool_gameobject WHERE guid=196652 AND pool_entry=11229;
DELETE FROM pool_gameobject WHERE guid=196653 AND pool_entry=11229;
DELETE FROM pool_gameobject WHERE guid=196654 AND pool_entry=11229;
DELETE FROM pool_gameobject WHERE guid=196655 AND pool_entry=11228;
DELETE FROM pool_gameobject WHERE guid=196656 AND pool_entry=11228;
DELETE FROM pool_gameobject WHERE guid=196657 AND pool_entry=11228;
DELETE FROM pool_gameobject WHERE guid=196658 AND pool_entry=11227;
DELETE FROM pool_gameobject WHERE guid=196659 AND pool_entry=11227;
DELETE FROM pool_gameobject WHERE guid=196660 AND pool_entry=11227;
DELETE FROM pool_gameobject WHERE guid=196661 AND pool_entry=11226;
DELETE FROM pool_gameobject WHERE guid=196662 AND pool_entry=11226;
DELETE FROM pool_gameobject WHERE guid=196663 AND pool_entry=11226;
DELETE FROM pool_gameobject WHERE guid=196664 AND pool_entry=11225;
DELETE FROM pool_gameobject WHERE guid=196665 AND pool_entry=11225;
DELETE FROM pool_gameobject WHERE guid=196666 AND pool_entry=11225;
DELETE FROM pool_gameobject WHERE guid=196667 AND pool_entry=11224;
DELETE FROM pool_gameobject WHERE guid=196668 AND pool_entry=11224;
DELETE FROM pool_gameobject WHERE guid=196669 AND pool_entry=11224;
DELETE FROM pool_gameobject WHERE guid=196670 AND pool_entry=11223;
DELETE FROM pool_gameobject WHERE guid=196671 AND pool_entry=11223;
DELETE FROM pool_gameobject WHERE guid=196672 AND pool_entry=11223;
DELETE FROM pool_gameobject WHERE guid=196673 AND pool_entry=11222;
DELETE FROM pool_gameobject WHERE guid=196674 AND pool_entry=11222;
DELETE FROM pool_gameobject WHERE guid=196675 AND pool_entry=11222;
DELETE FROM pool_gameobject WHERE guid=196676 AND pool_entry=11221;
DELETE FROM pool_gameobject WHERE guid=196677 AND pool_entry=11221;
DELETE FROM pool_gameobject WHERE guid=196678 AND pool_entry=11221;
DELETE FROM pool_gameobject WHERE guid=196679 AND pool_entry=11220;
DELETE FROM pool_gameobject WHERE guid=196680 AND pool_entry=11220;
DELETE FROM pool_gameobject WHERE guid=196681 AND pool_entry=11220;
DELETE FROM pool_gameobject WHERE guid=196682 AND pool_entry=11219;
DELETE FROM pool_gameobject WHERE guid=196683 AND pool_entry=11219;
DELETE FROM pool_gameobject WHERE guid=196684 AND pool_entry=11219;
DELETE FROM pool_gameobject WHERE guid=196685 AND pool_entry=11218;
DELETE FROM pool_gameobject WHERE guid=196686 AND pool_entry=11218;
DELETE FROM pool_gameobject WHERE guid=196687 AND pool_entry=11218;
DELETE FROM pool_gameobject WHERE guid=196688 AND pool_entry=11217;
DELETE FROM pool_gameobject WHERE guid=196689 AND pool_entry=11217;
DELETE FROM pool_gameobject WHERE guid=196690 AND pool_entry=11217;
DELETE FROM pool_gameobject WHERE guid=196691 AND pool_entry=11216;
DELETE FROM pool_gameobject WHERE guid=196692 AND pool_entry=11216;
DELETE FROM pool_gameobject WHERE guid=196693 AND pool_entry=11216;
DELETE FROM pool_gameobject WHERE guid=196694 AND pool_entry=11215;
DELETE FROM pool_gameobject WHERE guid=196695 AND pool_entry=11215;
DELETE FROM pool_gameobject WHERE guid=196696 AND pool_entry=11215;
DELETE FROM pool_gameobject WHERE guid=196697 AND pool_entry=11214;
DELETE FROM pool_gameobject WHERE guid=196698 AND pool_entry=11214;
DELETE FROM pool_gameobject WHERE guid=196699 AND pool_entry=11214;
DELETE FROM pool_gameobject WHERE guid=196700 AND pool_entry=11213;
DELETE FROM pool_gameobject WHERE guid=196701 AND pool_entry=11213;
DELETE FROM pool_gameobject WHERE guid=196702 AND pool_entry=11213;
DELETE FROM pool_gameobject WHERE guid=196703 AND pool_entry=11212;
DELETE FROM pool_gameobject WHERE guid=196704 AND pool_entry=11212;
DELETE FROM pool_gameobject WHERE guid=196705 AND pool_entry=11212;
DELETE FROM pool_gameobject WHERE guid=196706 AND pool_entry=11211;
DELETE FROM pool_gameobject WHERE guid=196707 AND pool_entry=11211;
DELETE FROM pool_gameobject WHERE guid=196708 AND pool_entry=11211;
DELETE FROM pool_gameobject WHERE guid=196709 AND pool_entry=11210;
DELETE FROM pool_gameobject WHERE guid=196710 AND pool_entry=11210;
DELETE FROM pool_gameobject WHERE guid=196711 AND pool_entry=11210;
DELETE FROM pool_gameobject WHERE guid=196712 AND pool_entry=11209;
DELETE FROM pool_gameobject WHERE guid=196713 AND pool_entry=11209;
DELETE FROM pool_gameobject WHERE guid=196714 AND pool_entry=11209;
DELETE FROM pool_gameobject WHERE guid=196715 AND pool_entry=11209;
DELETE FROM pool_gameobject WHERE guid=196716 AND pool_entry=11208;
DELETE FROM pool_gameobject WHERE guid=196717 AND pool_entry=11208;
DELETE FROM pool_gameobject WHERE guid=196718 AND pool_entry=11208;
DELETE FROM pool_gameobject WHERE guid=196719 AND pool_entry=11208;
DELETE FROM pool_gameobject WHERE guid=196720 AND pool_entry=11207;
DELETE FROM pool_gameobject WHERE guid=196721 AND pool_entry=11207;
DELETE FROM pool_gameobject WHERE guid=196722 AND pool_entry=11207;
DELETE FROM pool_gameobject WHERE guid=196723 AND pool_entry=11207;
DELETE FROM pool_gameobject WHERE guid=196724 AND pool_entry=11206;
DELETE FROM pool_gameobject WHERE guid=196725 AND pool_entry=11206;
DELETE FROM pool_gameobject WHERE guid=196726 AND pool_entry=11206;
DELETE FROM pool_gameobject WHERE guid=196727 AND pool_entry=11206;
DELETE FROM pool_gameobject WHERE guid=196728 AND pool_entry=11205;
DELETE FROM pool_gameobject WHERE guid=196729 AND pool_entry=11205;
DELETE FROM pool_gameobject WHERE guid=196730 AND pool_entry=11205;
DELETE FROM pool_gameobject WHERE guid=196731 AND pool_entry=11205;
DELETE FROM pool_gameobject WHERE guid=196732 AND pool_entry=11204;
DELETE FROM pool_gameobject WHERE guid=196733 AND pool_entry=11204;
DELETE FROM pool_gameobject WHERE guid=196734 AND pool_entry=11204;
DELETE FROM pool_gameobject WHERE guid=196735 AND pool_entry=11204;
DELETE FROM pool_gameobject WHERE guid=196736 AND pool_entry=11203;
DELETE FROM pool_gameobject WHERE guid=196737 AND pool_entry=11203;
DELETE FROM pool_gameobject WHERE guid=196738 AND pool_entry=11203;
DELETE FROM pool_gameobject WHERE guid=196739 AND pool_entry=11203;
DELETE FROM pool_gameobject WHERE guid=196740 AND pool_entry=11202;
DELETE FROM pool_gameobject WHERE guid=196741 AND pool_entry=11202;
DELETE FROM pool_gameobject WHERE guid=196742 AND pool_entry=11202;
DELETE FROM pool_gameobject WHERE guid=196743 AND pool_entry=11202;
DELETE FROM pool_gameobject WHERE guid=196744 AND pool_entry=11201;
DELETE FROM pool_gameobject WHERE guid=196745 AND pool_entry=11201;
DELETE FROM pool_gameobject WHERE guid=196746 AND pool_entry=11201;
DELETE FROM pool_gameobject WHERE guid=196747 AND pool_entry=11201;
DELETE FROM pool_gameobject WHERE guid=196748 AND pool_entry=11200;
DELETE FROM pool_gameobject WHERE guid=196749 AND pool_entry=11200;
DELETE FROM pool_gameobject WHERE guid=196750 AND pool_entry=11200;
DELETE FROM pool_gameobject WHERE guid=196751 AND pool_entry=11200;
DELETE FROM pool_gameobject WHERE guid=196752 AND pool_entry=11199;
DELETE FROM pool_gameobject WHERE guid=196753 AND pool_entry=11199;
DELETE FROM pool_gameobject WHERE guid=196754 AND pool_entry=11199;
DELETE FROM pool_gameobject WHERE guid=196755 AND pool_entry=11199;
DELETE FROM pool_gameobject WHERE guid=196756 AND pool_entry=11198;
DELETE FROM pool_gameobject WHERE guid=196757 AND pool_entry=11198;
DELETE FROM pool_gameobject WHERE guid=196758 AND pool_entry=11198;
DELETE FROM pool_gameobject WHERE guid=196759 AND pool_entry=11198;
DELETE FROM pool_gameobject WHERE guid=196760 AND pool_entry=11197;
DELETE FROM pool_gameobject WHERE guid=196761 AND pool_entry=11197;
DELETE FROM pool_gameobject WHERE guid=196762 AND pool_entry=11197;
DELETE FROM pool_gameobject WHERE guid=196763 AND pool_entry=11197;
DELETE FROM pool_gameobject WHERE guid=196764 AND pool_entry=11196;
DELETE FROM pool_gameobject WHERE guid=196765 AND pool_entry=11196;
DELETE FROM pool_gameobject WHERE guid=196766 AND pool_entry=11196;
DELETE FROM pool_gameobject WHERE guid=196767 AND pool_entry=11196;
DELETE FROM pool_gameobject WHERE guid=196768 AND pool_entry=11195;
DELETE FROM pool_gameobject WHERE guid=196769 AND pool_entry=11195;
DELETE FROM pool_gameobject WHERE guid=196770 AND pool_entry=11195;
DELETE FROM pool_gameobject WHERE guid=196771 AND pool_entry=11195;
DELETE FROM pool_gameobject WHERE guid=196772 AND pool_entry=11194;
DELETE FROM pool_gameobject WHERE guid=196773 AND pool_entry=11194;
DELETE FROM pool_gameobject WHERE guid=196774 AND pool_entry=11194;
DELETE FROM pool_gameobject WHERE guid=196775 AND pool_entry=11194;
DELETE FROM pool_gameobject WHERE guid=196776 AND pool_entry=11193;
DELETE FROM pool_gameobject WHERE guid=196777 AND pool_entry=11193;
DELETE FROM pool_gameobject WHERE guid=196778 AND pool_entry=11193;
DELETE FROM pool_gameobject WHERE guid=196779 AND pool_entry=11193;
DELETE FROM pool_gameobject WHERE guid=196780 AND pool_entry=11192;
DELETE FROM pool_gameobject WHERE guid=196781 AND pool_entry=11192;
DELETE FROM pool_gameobject WHERE guid=196782 AND pool_entry=11192;
DELETE FROM pool_gameobject WHERE guid=196783 AND pool_entry=11192;
DELETE FROM pool_gameobject WHERE guid=196784 AND pool_entry=11191;
DELETE FROM pool_gameobject WHERE guid=196785 AND pool_entry=11191;
DELETE FROM pool_gameobject WHERE guid=196786 AND pool_entry=11191;
DELETE FROM pool_gameobject WHERE guid=196787 AND pool_entry=11191;
DELETE FROM pool_gameobject WHERE guid=196788 AND pool_entry=11190;
DELETE FROM pool_gameobject WHERE guid=196789 AND pool_entry=11190;
DELETE FROM pool_gameobject WHERE guid=196790 AND pool_entry=11190;
DELETE FROM pool_gameobject WHERE guid=196791 AND pool_entry=11190;
DELETE FROM pool_gameobject WHERE guid=196792 AND pool_entry=11189;
DELETE FROM pool_gameobject WHERE guid=196793 AND pool_entry=11189;
DELETE FROM pool_gameobject WHERE guid=196794 AND pool_entry=11189;
DELETE FROM pool_gameobject WHERE guid=196795 AND pool_entry=11189;
DELETE FROM pool_gameobject WHERE guid=196796 AND pool_entry=11188;
DELETE FROM pool_gameobject WHERE guid=196797 AND pool_entry=11188;
DELETE FROM pool_gameobject WHERE guid=196798 AND pool_entry=11188;
DELETE FROM pool_gameobject WHERE guid=196799 AND pool_entry=11188;
DELETE FROM pool_gameobject WHERE guid=196800 AND pool_entry=11187;
DELETE FROM pool_gameobject WHERE guid=196801 AND pool_entry=11187;
DELETE FROM pool_gameobject WHERE guid=196802 AND pool_entry=11187;
DELETE FROM pool_gameobject WHERE guid=196803 AND pool_entry=11187;
DELETE FROM pool_gameobject WHERE guid=196804 AND pool_entry=11186;
DELETE FROM pool_gameobject WHERE guid=196805 AND pool_entry=11186;
DELETE FROM pool_gameobject WHERE guid=196806 AND pool_entry=11186;
DELETE FROM pool_gameobject WHERE guid=196807 AND pool_entry=11186;
DELETE FROM pool_gameobject WHERE guid=196808 AND pool_entry=11185;
DELETE FROM pool_gameobject WHERE guid=196809 AND pool_entry=11185;
DELETE FROM pool_gameobject WHERE guid=196810 AND pool_entry=11185;
DELETE FROM pool_gameobject WHERE guid=196811 AND pool_entry=11185;
DELETE FROM pool_gameobject WHERE guid=196812 AND pool_entry=11184;
DELETE FROM pool_gameobject WHERE guid=196813 AND pool_entry=11184;
DELETE FROM pool_gameobject WHERE guid=196814 AND pool_entry=11184;
DELETE FROM pool_gameobject WHERE guid=196815 AND pool_entry=11184;
DELETE FROM pool_gameobject WHERE guid=196816 AND pool_entry=11183;
DELETE FROM pool_gameobject WHERE guid=196817 AND pool_entry=11183;
DELETE FROM pool_gameobject WHERE guid=196818 AND pool_entry=11183;
DELETE FROM pool_gameobject WHERE guid=196819 AND pool_entry=11183;
DELETE FROM pool_gameobject WHERE guid=196820 AND pool_entry=11182;
DELETE FROM pool_gameobject WHERE guid=196821 AND pool_entry=11182;
DELETE FROM pool_gameobject WHERE guid=196822 AND pool_entry=11182;
DELETE FROM pool_gameobject WHERE guid=196823 AND pool_entry=11182;
DELETE FROM pool_gameobject WHERE guid=196824 AND pool_entry=11181;
DELETE FROM pool_gameobject WHERE guid=196825 AND pool_entry=11181;
DELETE FROM pool_gameobject WHERE guid=196826 AND pool_entry=11181;
DELETE FROM pool_gameobject WHERE guid=196827 AND pool_entry=11181;
DELETE FROM pool_gameobject WHERE guid=196828 AND pool_entry=11180;
DELETE FROM pool_gameobject WHERE guid=196829 AND pool_entry=11180;
DELETE FROM pool_gameobject WHERE guid=196830 AND pool_entry=11180;
DELETE FROM pool_gameobject WHERE guid=196831 AND pool_entry=11180;
DELETE FROM pool_gameobject WHERE guid=196832 AND pool_entry=11179;
DELETE FROM pool_gameobject WHERE guid=196833 AND pool_entry=11179;
DELETE FROM pool_gameobject WHERE guid=196834 AND pool_entry=11179;
DELETE FROM pool_gameobject WHERE guid=196835 AND pool_entry=11179;
DELETE FROM pool_gameobject WHERE guid=196836 AND pool_entry=11178;
DELETE FROM pool_gameobject WHERE guid=196837 AND pool_entry=11178;
DELETE FROM pool_gameobject WHERE guid=196838 AND pool_entry=11178;
DELETE FROM pool_gameobject WHERE guid=196839 AND pool_entry=11178;
DELETE FROM pool_gameobject WHERE guid=196840 AND pool_entry=11177;
DELETE FROM pool_gameobject WHERE guid=196841 AND pool_entry=11177;
DELETE FROM pool_gameobject WHERE guid=196842 AND pool_entry=11177;
DELETE FROM pool_gameobject WHERE guid=196843 AND pool_entry=11177;
DELETE FROM pool_gameobject WHERE guid=196844 AND pool_entry=11176;
DELETE FROM pool_gameobject WHERE guid=196845 AND pool_entry=11176;
DELETE FROM pool_gameobject WHERE guid=196846 AND pool_entry=11176;
DELETE FROM pool_gameobject WHERE guid=196847 AND pool_entry=11176;
DELETE FROM pool_gameobject WHERE guid=196848 AND pool_entry=11175;
DELETE FROM pool_gameobject WHERE guid=196849 AND pool_entry=11175;
DELETE FROM pool_gameobject WHERE guid=196850 AND pool_entry=11175;
DELETE FROM pool_gameobject WHERE guid=196851 AND pool_entry=11175;
DELETE FROM pool_gameobject WHERE guid=196852 AND pool_entry=11174;
DELETE FROM pool_gameobject WHERE guid=196853 AND pool_entry=11174;
DELETE FROM pool_gameobject WHERE guid=196854 AND pool_entry=11174;
DELETE FROM pool_gameobject WHERE guid=196855 AND pool_entry=11174;
DELETE FROM pool_gameobject WHERE guid=196856 AND pool_entry=11173;
DELETE FROM pool_gameobject WHERE guid=196857 AND pool_entry=11173;
DELETE FROM pool_gameobject WHERE guid=196858 AND pool_entry=11173;
DELETE FROM pool_gameobject WHERE guid=196859 AND pool_entry=11173;
DELETE FROM pool_gameobject WHERE guid=196860 AND pool_entry=11172;
DELETE FROM pool_gameobject WHERE guid=196861 AND pool_entry=11172;
DELETE FROM pool_gameobject WHERE guid=196862 AND pool_entry=11172;
DELETE FROM pool_gameobject WHERE guid=196863 AND pool_entry=11172;
DELETE FROM pool_gameobject WHERE guid=196864 AND pool_entry=11171;
DELETE FROM pool_gameobject WHERE guid=196865 AND pool_entry=11171;
DELETE FROM pool_gameobject WHERE guid=196866 AND pool_entry=11171;
DELETE FROM pool_gameobject WHERE guid=196867 AND pool_entry=11171;
DELETE FROM pool_gameobject WHERE guid=196868 AND pool_entry=11170;
DELETE FROM pool_gameobject WHERE guid=196869 AND pool_entry=11170;
DELETE FROM pool_gameobject WHERE guid=196870 AND pool_entry=11170;
DELETE FROM pool_gameobject WHERE guid=196871 AND pool_entry=11170;
DELETE FROM pool_gameobject WHERE guid=196872 AND pool_entry=11169;
DELETE FROM pool_gameobject WHERE guid=196873 AND pool_entry=11169;
DELETE FROM pool_gameobject WHERE guid=196874 AND pool_entry=11169;
DELETE FROM pool_gameobject WHERE guid=196875 AND pool_entry=11169;
DELETE FROM pool_gameobject WHERE guid=196876 AND pool_entry=11168;
DELETE FROM pool_gameobject WHERE guid=196877 AND pool_entry=11168;
DELETE FROM pool_gameobject WHERE guid=196878 AND pool_entry=11168;
DELETE FROM pool_gameobject WHERE guid=196879 AND pool_entry=11168;
DELETE FROM pool_gameobject WHERE guid=196880 AND pool_entry=11167;
DELETE FROM pool_gameobject WHERE guid=196881 AND pool_entry=11167;
DELETE FROM pool_gameobject WHERE guid=196882 AND pool_entry=11167;
DELETE FROM pool_gameobject WHERE guid=196883 AND pool_entry=11167;
DELETE FROM pool_gameobject WHERE guid=196884 AND pool_entry=11166;
DELETE FROM pool_gameobject WHERE guid=196885 AND pool_entry=11166;
DELETE FROM pool_gameobject WHERE guid=196886 AND pool_entry=11166;
DELETE FROM pool_gameobject WHERE guid=196887 AND pool_entry=11166;
DELETE FROM pool_gameobject WHERE guid=196888 AND pool_entry=11165;
DELETE FROM pool_gameobject WHERE guid=196889 AND pool_entry=11165;
DELETE FROM pool_gameobject WHERE guid=196890 AND pool_entry=11165;
DELETE FROM pool_gameobject WHERE guid=196891 AND pool_entry=11165;
DELETE FROM pool_gameobject WHERE guid=196892 AND pool_entry=11164;
DELETE FROM pool_gameobject WHERE guid=196893 AND pool_entry=11164;
DELETE FROM pool_gameobject WHERE guid=196894 AND pool_entry=11164;
DELETE FROM pool_gameobject WHERE guid=196895 AND pool_entry=11164;
DELETE FROM pool_gameobject WHERE guid=196896 AND pool_entry=11163;
DELETE FROM pool_gameobject WHERE guid=196897 AND pool_entry=11163;
DELETE FROM pool_gameobject WHERE guid=196898 AND pool_entry=11163;
DELETE FROM pool_gameobject WHERE guid=196899 AND pool_entry=11163;
DELETE FROM pool_gameobject WHERE guid=196900 AND pool_entry=11162;
DELETE FROM pool_gameobject WHERE guid=196901 AND pool_entry=11162;
DELETE FROM pool_gameobject WHERE guid=196902 AND pool_entry=11162;
DELETE FROM pool_gameobject WHERE guid=196903 AND pool_entry=11162;
DELETE FROM pool_gameobject WHERE guid=196904 AND pool_entry=11161;
DELETE FROM pool_gameobject WHERE guid=196905 AND pool_entry=11161;
DELETE FROM pool_gameobject WHERE guid=196906 AND pool_entry=11161;
DELETE FROM pool_gameobject WHERE guid=196907 AND pool_entry=11161;
DELETE FROM pool_gameobject WHERE guid=196908 AND pool_entry=11160;
DELETE FROM pool_gameobject WHERE guid=196909 AND pool_entry=11160;
DELETE FROM pool_gameobject WHERE guid=196910 AND pool_entry=11160;
DELETE FROM pool_gameobject WHERE guid=196911 AND pool_entry=11160;
DELETE FROM pool_gameobject WHERE guid=196912 AND pool_entry=11159;
DELETE FROM pool_gameobject WHERE guid=196913 AND pool_entry=11159;
DELETE FROM pool_gameobject WHERE guid=196914 AND pool_entry=11159;
DELETE FROM pool_gameobject WHERE guid=196915 AND pool_entry=11159;
DELETE FROM pool_gameobject WHERE guid=196916 AND pool_entry=11158;
DELETE FROM pool_gameobject WHERE guid=196917 AND pool_entry=11158;
DELETE FROM pool_gameobject WHERE guid=196918 AND pool_entry=11158;
DELETE FROM pool_gameobject WHERE guid=196919 AND pool_entry=11158;
DELETE FROM pool_gameobject WHERE guid=196920 AND pool_entry=11157;
DELETE FROM pool_gameobject WHERE guid=196921 AND pool_entry=11157;
DELETE FROM pool_gameobject WHERE guid=196922 AND pool_entry=11157;
DELETE FROM pool_gameobject WHERE guid=196923 AND pool_entry=11157;
DELETE FROM pool_gameobject WHERE guid=196924 AND pool_entry=11156;
DELETE FROM pool_gameobject WHERE guid=196925 AND pool_entry=11156;
DELETE FROM pool_gameobject WHERE guid=196926 AND pool_entry=11156;
DELETE FROM pool_gameobject WHERE guid=196927 AND pool_entry=11156;
DELETE FROM pool_gameobject WHERE guid=196928 AND pool_entry=11155;
DELETE FROM pool_gameobject WHERE guid=196929 AND pool_entry=11155;
DELETE FROM pool_gameobject WHERE guid=196930 AND pool_entry=11155;
DELETE FROM pool_gameobject WHERE guid=196931 AND pool_entry=11155;
DELETE FROM pool_gameobject WHERE guid=196932 AND pool_entry=11154;
DELETE FROM pool_gameobject WHERE guid=196933 AND pool_entry=11154;
DELETE FROM pool_gameobject WHERE guid=196934 AND pool_entry=11154;
DELETE FROM pool_gameobject WHERE guid=196935 AND pool_entry=11154;
DELETE FROM pool_gameobject WHERE guid=196936 AND pool_entry=11153;
DELETE FROM pool_gameobject WHERE guid=196937 AND pool_entry=11153;
DELETE FROM pool_gameobject WHERE guid=196938 AND pool_entry=11153;
DELETE FROM pool_gameobject WHERE guid=196939 AND pool_entry=11153;
DELETE FROM pool_gameobject WHERE guid=196940 AND pool_entry=11152;
DELETE FROM pool_gameobject WHERE guid=196941 AND pool_entry=11152;
DELETE FROM pool_gameobject WHERE guid=196942 AND pool_entry=11152;
DELETE FROM pool_gameobject WHERE guid=196943 AND pool_entry=11152;
DELETE FROM pool_gameobject WHERE guid=196944 AND pool_entry=11151;
DELETE FROM pool_gameobject WHERE guid=196945 AND pool_entry=11151;
DELETE FROM pool_gameobject WHERE guid=196946 AND pool_entry=11151;
DELETE FROM pool_gameobject WHERE guid=196947 AND pool_entry=11151;
DELETE FROM pool_gameobject WHERE guid=196948 AND pool_entry=11150;
DELETE FROM pool_gameobject WHERE guid=196949 AND pool_entry=11150;
DELETE FROM pool_gameobject WHERE guid=196950 AND pool_entry=11150;
DELETE FROM pool_gameobject WHERE guid=196951 AND pool_entry=11150;
DELETE FROM pool_gameobject WHERE guid=196952 AND pool_entry=11149;
DELETE FROM pool_gameobject WHERE guid=196953 AND pool_entry=11149;
DELETE FROM pool_gameobject WHERE guid=196954 AND pool_entry=11149;
DELETE FROM pool_gameobject WHERE guid=196955 AND pool_entry=11149;
DELETE FROM pool_gameobject WHERE guid=196956 AND pool_entry=11148;
DELETE FROM pool_gameobject WHERE guid=196957 AND pool_entry=11148;
DELETE FROM pool_gameobject WHERE guid=196958 AND pool_entry=11148;
DELETE FROM pool_gameobject WHERE guid=196959 AND pool_entry=11148;
DELETE FROM pool_gameobject WHERE guid=196960 AND pool_entry=11147;
DELETE FROM pool_gameobject WHERE guid=196961 AND pool_entry=11147;
DELETE FROM pool_gameobject WHERE guid=196962 AND pool_entry=11147;
DELETE FROM pool_gameobject WHERE guid=196963 AND pool_entry=11147;
DELETE FROM pool_gameobject WHERE guid=196964 AND pool_entry=11146;
DELETE FROM pool_gameobject WHERE guid=196965 AND pool_entry=11146;
DELETE FROM pool_gameobject WHERE guid=196966 AND pool_entry=11146;
DELETE FROM pool_gameobject WHERE guid=196967 AND pool_entry=11146;
DELETE FROM pool_gameobject WHERE guid=196968 AND pool_entry=11145;
DELETE FROM pool_gameobject WHERE guid=196969 AND pool_entry=11145;
DELETE FROM pool_gameobject WHERE guid=196970 AND pool_entry=11145;
DELETE FROM pool_gameobject WHERE guid=196971 AND pool_entry=11145;
DELETE FROM pool_gameobject WHERE guid=196972 AND pool_entry=11144;
DELETE FROM pool_gameobject WHERE guid=196973 AND pool_entry=11144;
DELETE FROM pool_gameobject WHERE guid=196974 AND pool_entry=11144;
DELETE FROM pool_gameobject WHERE guid=196975 AND pool_entry=11144;
DELETE FROM pool_gameobject WHERE guid=196976 AND pool_entry=11143;
DELETE FROM pool_gameobject WHERE guid=196977 AND pool_entry=11143;
DELETE FROM pool_gameobject WHERE guid=196978 AND pool_entry=11143;
DELETE FROM pool_gameobject WHERE guid=196979 AND pool_entry=11143;
DELETE FROM pool_gameobject WHERE guid=196980 AND pool_entry=11142;
DELETE FROM pool_gameobject WHERE guid=196981 AND pool_entry=11142;
DELETE FROM pool_gameobject WHERE guid=196982 AND pool_entry=11142;
DELETE FROM pool_gameobject WHERE guid=196983 AND pool_entry=11142;
DELETE FROM pool_gameobject WHERE guid=196984 AND pool_entry=11141;
DELETE FROM pool_gameobject WHERE guid=196985 AND pool_entry=11141;
DELETE FROM pool_gameobject WHERE guid=196986 AND pool_entry=11141;
DELETE FROM pool_gameobject WHERE guid=196987 AND pool_entry=11141;
DELETE FROM pool_gameobject WHERE guid=196988 AND pool_entry=11140;
DELETE FROM pool_gameobject WHERE guid=196989 AND pool_entry=11140;
DELETE FROM pool_gameobject WHERE guid=196990 AND pool_entry=11140;
DELETE FROM pool_gameobject WHERE guid=196991 AND pool_entry=11140;
DELETE FROM pool_gameobject WHERE guid=196992 AND pool_entry=11139;
DELETE FROM pool_gameobject WHERE guid=196993 AND pool_entry=11139;
DELETE FROM pool_gameobject WHERE guid=196994 AND pool_entry=11139;
DELETE FROM pool_gameobject WHERE guid=196995 AND pool_entry=11139;
DELETE FROM pool_gameobject WHERE guid=196996 AND pool_entry=11138;
DELETE FROM pool_gameobject WHERE guid=196997 AND pool_entry=11138;
DELETE FROM pool_gameobject WHERE guid=196998 AND pool_entry=11138;
DELETE FROM pool_gameobject WHERE guid=196999 AND pool_entry=11138;
DELETE FROM pool_gameobject WHERE guid=197000 AND pool_entry=11137;
DELETE FROM pool_gameobject WHERE guid=197001 AND pool_entry=11137;
DELETE FROM pool_gameobject WHERE guid=197002 AND pool_entry=11137;
DELETE FROM pool_gameobject WHERE guid=197003 AND pool_entry=11137;
DELETE FROM pool_gameobject WHERE guid=197004 AND pool_entry=11136;
DELETE FROM pool_gameobject WHERE guid=197005 AND pool_entry=11136;
DELETE FROM pool_gameobject WHERE guid=197006 AND pool_entry=11136;
DELETE FROM pool_gameobject WHERE guid=197007 AND pool_entry=11136;
DELETE FROM pool_gameobject WHERE guid=197008 AND pool_entry=11135;
DELETE FROM pool_gameobject WHERE guid=197009 AND pool_entry=11135;
DELETE FROM pool_gameobject WHERE guid=197010 AND pool_entry=11135;
DELETE FROM pool_gameobject WHERE guid=197011 AND pool_entry=11135;
DELETE FROM pool_gameobject WHERE guid=197012 AND pool_entry=11134;
DELETE FROM pool_gameobject WHERE guid=197013 AND pool_entry=11134;
DELETE FROM pool_gameobject WHERE guid=197014 AND pool_entry=11134;
DELETE FROM pool_gameobject WHERE guid=197015 AND pool_entry=11134;
DELETE FROM pool_gameobject WHERE guid=197016 AND pool_entry=11133;
DELETE FROM pool_gameobject WHERE guid=197017 AND pool_entry=11133;
DELETE FROM pool_gameobject WHERE guid=197018 AND pool_entry=11133;
DELETE FROM pool_gameobject WHERE guid=197019 AND pool_entry=11133;
DELETE FROM pool_gameobject WHERE guid=197020 AND pool_entry=11132;
DELETE FROM pool_gameobject WHERE guid=197021 AND pool_entry=11132;
DELETE FROM pool_gameobject WHERE guid=197022 AND pool_entry=11132;
DELETE FROM pool_gameobject WHERE guid=197023 AND pool_entry=11132;
DELETE FROM pool_gameobject WHERE guid=197024 AND pool_entry=11131;
DELETE FROM pool_gameobject WHERE guid=197025 AND pool_entry=11131;
DELETE FROM pool_gameobject WHERE guid=197026 AND pool_entry=11131;
DELETE FROM pool_gameobject WHERE guid=197027 AND pool_entry=11131;
DELETE FROM pool_gameobject WHERE guid=197028 AND pool_entry=11130;
DELETE FROM pool_gameobject WHERE guid=197029 AND pool_entry=11130;
DELETE FROM pool_gameobject WHERE guid=197030 AND pool_entry=11130;
DELETE FROM pool_gameobject WHERE guid=197031 AND pool_entry=11130;
DELETE FROM pool_gameobject WHERE guid=197032 AND pool_entry=11129;
DELETE FROM pool_gameobject WHERE guid=197033 AND pool_entry=11129;
DELETE FROM pool_gameobject WHERE guid=197034 AND pool_entry=11129;
DELETE FROM pool_gameobject WHERE guid=197035 AND pool_entry=11129;
DELETE FROM pool_gameobject WHERE guid=197036 AND pool_entry=11128;
DELETE FROM pool_gameobject WHERE guid=197037 AND pool_entry=11128;
DELETE FROM pool_gameobject WHERE guid=197038 AND pool_entry=11128;
DELETE FROM pool_gameobject WHERE guid=197039 AND pool_entry=11128;
DELETE FROM pool_gameobject WHERE guid=197040 AND pool_entry=11127;
DELETE FROM pool_gameobject WHERE guid=197041 AND pool_entry=11127;
DELETE FROM pool_gameobject WHERE guid=197042 AND pool_entry=11127;
DELETE FROM pool_gameobject WHERE guid=197043 AND pool_entry=11127;
DELETE FROM pool_gameobject WHERE guid=197044 AND pool_entry=11126;
DELETE FROM pool_gameobject WHERE guid=197045 AND pool_entry=11126;
DELETE FROM pool_gameobject WHERE guid=197046 AND pool_entry=11126;
DELETE FROM pool_gameobject WHERE guid=197047 AND pool_entry=11126;
DELETE FROM pool_gameobject WHERE guid=197048 AND pool_entry=11125;
DELETE FROM pool_gameobject WHERE guid=197049 AND pool_entry=11125;
DELETE FROM pool_gameobject WHERE guid=197050 AND pool_entry=11125;
DELETE FROM pool_gameobject WHERE guid=197051 AND pool_entry=11125;
DELETE FROM pool_gameobject WHERE guid=197052 AND pool_entry=11124;
DELETE FROM pool_gameobject WHERE guid=197053 AND pool_entry=11124;
DELETE FROM pool_gameobject WHERE guid=197054 AND pool_entry=11124;
DELETE FROM pool_gameobject WHERE guid=197055 AND pool_entry=11124;
DELETE FROM pool_gameobject WHERE guid=197056 AND pool_entry=11123;
DELETE FROM pool_gameobject WHERE guid=197057 AND pool_entry=11123;
DELETE FROM pool_gameobject WHERE guid=197058 AND pool_entry=11123;
DELETE FROM pool_gameobject WHERE guid=197059 AND pool_entry=11123;
DELETE FROM pool_gameobject WHERE guid=197060 AND pool_entry=11122;
DELETE FROM pool_gameobject WHERE guid=197061 AND pool_entry=11122;
DELETE FROM pool_gameobject WHERE guid=197062 AND pool_entry=11122;
DELETE FROM pool_gameobject WHERE guid=197063 AND pool_entry=11122;
DELETE FROM pool_gameobject WHERE guid=197064 AND pool_entry=11121;
DELETE FROM pool_gameobject WHERE guid=197065 AND pool_entry=11121;
DELETE FROM pool_gameobject WHERE guid=197066 AND pool_entry=11121;
DELETE FROM pool_gameobject WHERE guid=197067 AND pool_entry=11121;
DELETE FROM pool_gameobject WHERE guid=197068 AND pool_entry=11120;
DELETE FROM pool_gameobject WHERE guid=197069 AND pool_entry=11120;
DELETE FROM pool_gameobject WHERE guid=197070 AND pool_entry=11120;
DELETE FROM pool_gameobject WHERE guid=197071 AND pool_entry=11120;
DELETE FROM pool_gameobject WHERE guid=197072 AND pool_entry=11119;
DELETE FROM pool_gameobject WHERE guid=197073 AND pool_entry=11119;
DELETE FROM pool_gameobject WHERE guid=197074 AND pool_entry=11119;
DELETE FROM pool_gameobject WHERE guid=197075 AND pool_entry=11119;
DELETE FROM pool_gameobject WHERE guid=197076 AND pool_entry=11118;
DELETE FROM pool_gameobject WHERE guid=197077 AND pool_entry=11118;
DELETE FROM pool_gameobject WHERE guid=197078 AND pool_entry=11118;
DELETE FROM pool_gameobject WHERE guid=197079 AND pool_entry=11118;
DELETE FROM pool_gameobject WHERE guid=197080 AND pool_entry=11117;
DELETE FROM pool_gameobject WHERE guid=197081 AND pool_entry=11117;
DELETE FROM pool_gameobject WHERE guid=197082 AND pool_entry=11117;
DELETE FROM pool_gameobject WHERE guid=197083 AND pool_entry=11117;
DELETE FROM pool_gameobject WHERE guid=197084 AND pool_entry=11116;
DELETE FROM pool_gameobject WHERE guid=197085 AND pool_entry=11116;
DELETE FROM pool_gameobject WHERE guid=197086 AND pool_entry=11116;
DELETE FROM pool_gameobject WHERE guid=197087 AND pool_entry=11116;
DELETE FROM pool_gameobject WHERE guid=197088 AND pool_entry=11115;
DELETE FROM pool_gameobject WHERE guid=197089 AND pool_entry=11115;
DELETE FROM pool_gameobject WHERE guid=197090 AND pool_entry=11115;
DELETE FROM pool_gameobject WHERE guid=197091 AND pool_entry=11115;
DELETE FROM pool_gameobject WHERE guid=197092 AND pool_entry=11114;
DELETE FROM pool_gameobject WHERE guid=197093 AND pool_entry=11114;
DELETE FROM pool_gameobject WHERE guid=197094 AND pool_entry=11114;
DELETE FROM pool_gameobject WHERE guid=197095 AND pool_entry=11114;
DELETE FROM pool_gameobject WHERE guid=197096 AND pool_entry=11113;
DELETE FROM pool_gameobject WHERE guid=197097 AND pool_entry=11113;
DELETE FROM pool_gameobject WHERE guid=197098 AND pool_entry=11113;
DELETE FROM pool_gameobject WHERE guid=197099 AND pool_entry=11113;
DELETE FROM pool_gameobject WHERE guid=197100 AND pool_entry=11112;
DELETE FROM pool_gameobject WHERE guid=197101 AND pool_entry=11112;
DELETE FROM pool_gameobject WHERE guid=197102 AND pool_entry=11112;
DELETE FROM pool_gameobject WHERE guid=197103 AND pool_entry=11112;
DELETE FROM pool_gameobject WHERE guid=197104 AND pool_entry=11111;
DELETE FROM pool_gameobject WHERE guid=197105 AND pool_entry=11111;
DELETE FROM pool_gameobject WHERE guid=197106 AND pool_entry=11111;
DELETE FROM pool_gameobject WHERE guid=197107 AND pool_entry=11111;
DELETE FROM pool_gameobject WHERE guid=197108 AND pool_entry=11110;
DELETE FROM pool_gameobject WHERE guid=197109 AND pool_entry=11110;
DELETE FROM pool_gameobject WHERE guid=197110 AND pool_entry=11110;
DELETE FROM pool_gameobject WHERE guid=197111 AND pool_entry=11110;
DELETE FROM pool_gameobject WHERE guid=197112 AND pool_entry=11109;
DELETE FROM pool_gameobject WHERE guid=197113 AND pool_entry=11109;
DELETE FROM pool_gameobject WHERE guid=197114 AND pool_entry=11109;
DELETE FROM pool_gameobject WHERE guid=197115 AND pool_entry=11109;
DELETE FROM pool_gameobject WHERE guid=197116 AND pool_entry=11108;
DELETE FROM pool_gameobject WHERE guid=197117 AND pool_entry=11108;
DELETE FROM pool_gameobject WHERE guid=197118 AND pool_entry=11108;
DELETE FROM pool_gameobject WHERE guid=197119 AND pool_entry=11108;
DELETE FROM pool_gameobject WHERE guid=197120 AND pool_entry=11107;
DELETE FROM pool_gameobject WHERE guid=197121 AND pool_entry=11107;
DELETE FROM pool_gameobject WHERE guid=197122 AND pool_entry=11107;
DELETE FROM pool_gameobject WHERE guid=197123 AND pool_entry=11107;
DELETE FROM pool_gameobject WHERE guid=197124 AND pool_entry=11106;
DELETE FROM pool_gameobject WHERE guid=197125 AND pool_entry=11106;
DELETE FROM pool_gameobject WHERE guid=197126 AND pool_entry=11106;
DELETE FROM pool_gameobject WHERE guid=197127 AND pool_entry=11106;
DELETE FROM pool_gameobject WHERE guid=197128 AND pool_entry=11105;
DELETE FROM pool_gameobject WHERE guid=197129 AND pool_entry=11105;
DELETE FROM pool_gameobject WHERE guid=197130 AND pool_entry=11105;
DELETE FROM pool_gameobject WHERE guid=197131 AND pool_entry=11105;
DELETE FROM pool_gameobject WHERE guid=197132 AND pool_entry=11104;
DELETE FROM pool_gameobject WHERE guid=197133 AND pool_entry=11104;
DELETE FROM pool_gameobject WHERE guid=197134 AND pool_entry=11104;
DELETE FROM pool_gameobject WHERE guid=197135 AND pool_entry=11104;
DELETE FROM pool_gameobject WHERE guid=197136 AND pool_entry=11103;
DELETE FROM pool_gameobject WHERE guid=197137 AND pool_entry=11103;
DELETE FROM pool_gameobject WHERE guid=197138 AND pool_entry=11103;
DELETE FROM pool_gameobject WHERE guid=197139 AND pool_entry=11103;
DELETE FROM pool_gameobject WHERE guid=197140 AND pool_entry=11102;
DELETE FROM pool_gameobject WHERE guid=197141 AND pool_entry=11102;
DELETE FROM pool_gameobject WHERE guid=197142 AND pool_entry=11102;
DELETE FROM pool_gameobject WHERE guid=197143 AND pool_entry=11102;
DELETE FROM pool_gameobject WHERE guid=197144 AND pool_entry=11101;
DELETE FROM pool_gameobject WHERE guid=197145 AND pool_entry=11101;
DELETE FROM pool_gameobject WHERE guid=197146 AND pool_entry=11101;
DELETE FROM pool_gameobject WHERE guid=197147 AND pool_entry=11101;
DELETE FROM pool_gameobject WHERE guid=197148 AND pool_entry=11100;
DELETE FROM pool_gameobject WHERE guid=197149 AND pool_entry=11100;
DELETE FROM pool_gameobject WHERE guid=197150 AND pool_entry=11100;
DELETE FROM pool_gameobject WHERE guid=197151 AND pool_entry=11100;
DELETE FROM pool_gameobject WHERE guid=197152 AND pool_entry=11099;
DELETE FROM pool_gameobject WHERE guid=197153 AND pool_entry=11099;
DELETE FROM pool_gameobject WHERE guid=197154 AND pool_entry=11099;
DELETE FROM pool_gameobject WHERE guid=197155 AND pool_entry=11099;
DELETE FROM pool_gameobject WHERE guid=197156 AND pool_entry=11098;
DELETE FROM pool_gameobject WHERE guid=197157 AND pool_entry=11098;
DELETE FROM pool_gameobject WHERE guid=197158 AND pool_entry=11098;
DELETE FROM pool_gameobject WHERE guid=197159 AND pool_entry=11098;
DELETE FROM pool_gameobject WHERE guid=197160 AND pool_entry=11097;
DELETE FROM pool_gameobject WHERE guid=197161 AND pool_entry=11097;
DELETE FROM pool_gameobject WHERE guid=197162 AND pool_entry=11097;
DELETE FROM pool_gameobject WHERE guid=197163 AND pool_entry=11097;
DELETE FROM pool_gameobject WHERE guid=197164 AND pool_entry=11096;
DELETE FROM pool_gameobject WHERE guid=197165 AND pool_entry=11096;
DELETE FROM pool_gameobject WHERE guid=197166 AND pool_entry=11096;
DELETE FROM pool_gameobject WHERE guid=197167 AND pool_entry=11096;
DELETE FROM pool_gameobject WHERE guid=197168 AND pool_entry=11095;
DELETE FROM pool_gameobject WHERE guid=197169 AND pool_entry=11095;
DELETE FROM pool_gameobject WHERE guid=197170 AND pool_entry=11095;
DELETE FROM pool_gameobject WHERE guid=197171 AND pool_entry=11095;
DELETE FROM pool_gameobject WHERE guid=197172 AND pool_entry=11094;
DELETE FROM pool_gameobject WHERE guid=197173 AND pool_entry=11094;
DELETE FROM pool_gameobject WHERE guid=197174 AND pool_entry=11094;
DELETE FROM pool_gameobject WHERE guid=197175 AND pool_entry=11094;
DELETE FROM pool_gameobject WHERE guid=197176 AND pool_entry=11093;
DELETE FROM pool_gameobject WHERE guid=197177 AND pool_entry=11093;
DELETE FROM pool_gameobject WHERE guid=197178 AND pool_entry=11093;
DELETE FROM pool_gameobject WHERE guid=197179 AND pool_entry=11093;
DELETE FROM pool_gameobject WHERE guid=197180 AND pool_entry=11092;
DELETE FROM pool_gameobject WHERE guid=197181 AND pool_entry=11092;
DELETE FROM pool_gameobject WHERE guid=197182 AND pool_entry=11092;
DELETE FROM pool_gameobject WHERE guid=197183 AND pool_entry=11092;
DELETE FROM pool_gameobject WHERE guid=197184 AND pool_entry=11091;
DELETE FROM pool_gameobject WHERE guid=197185 AND pool_entry=11091;
DELETE FROM pool_gameobject WHERE guid=197186 AND pool_entry=11091;
DELETE FROM pool_gameobject WHERE guid=197187 AND pool_entry=11091;
DELETE FROM pool_gameobject WHERE guid=197188 AND pool_entry=11090;
DELETE FROM pool_gameobject WHERE guid=197189 AND pool_entry=11090;
DELETE FROM pool_gameobject WHERE guid=197190 AND pool_entry=11090;
DELETE FROM pool_gameobject WHERE guid=197191 AND pool_entry=11090;
DELETE FROM pool_gameobject WHERE guid=197192 AND pool_entry=11089;
DELETE FROM pool_gameobject WHERE guid=197193 AND pool_entry=11089;
DELETE FROM pool_gameobject WHERE guid=197194 AND pool_entry=11089;
DELETE FROM pool_gameobject WHERE guid=197195 AND pool_entry=11089;
DELETE FROM pool_gameobject WHERE guid=197196 AND pool_entry=11088;
DELETE FROM pool_gameobject WHERE guid=197197 AND pool_entry=11088;
DELETE FROM pool_gameobject WHERE guid=197198 AND pool_entry=11088;
DELETE FROM pool_gameobject WHERE guid=197199 AND pool_entry=11088;
DELETE FROM pool_gameobject WHERE guid=197200 AND pool_entry=11087;
DELETE FROM pool_gameobject WHERE guid=197201 AND pool_entry=11087;
DELETE FROM pool_gameobject WHERE guid=197202 AND pool_entry=11087;
DELETE FROM pool_gameobject WHERE guid=197203 AND pool_entry=11087;
DELETE FROM pool_gameobject WHERE guid=197204 AND pool_entry=11086;
DELETE FROM pool_gameobject WHERE guid=197205 AND pool_entry=11086;
DELETE FROM pool_gameobject WHERE guid=197206 AND pool_entry=11086;
DELETE FROM pool_gameobject WHERE guid=197207 AND pool_entry=11086;
DELETE FROM pool_gameobject WHERE guid=197208 AND pool_entry=11085;
DELETE FROM pool_gameobject WHERE guid=197209 AND pool_entry=11085;
DELETE FROM pool_gameobject WHERE guid=197210 AND pool_entry=11085;
DELETE FROM pool_gameobject WHERE guid=197211 AND pool_entry=11085;
DELETE FROM pool_gameobject WHERE guid=197212 AND pool_entry=11084;
DELETE FROM pool_gameobject WHERE guid=197213 AND pool_entry=11084;
DELETE FROM pool_gameobject WHERE guid=197214 AND pool_entry=11084;
DELETE FROM pool_gameobject WHERE guid=197215 AND pool_entry=11084;
DELETE FROM pool_gameobject WHERE guid=197216 AND pool_entry=11083;
DELETE FROM pool_gameobject WHERE guid=197217 AND pool_entry=11083;
DELETE FROM pool_gameobject WHERE guid=197218 AND pool_entry=11083;
DELETE FROM pool_gameobject WHERE guid=197219 AND pool_entry=11083;
DELETE FROM pool_gameobject WHERE guid=197220 AND pool_entry=11082;
DELETE FROM pool_gameobject WHERE guid=197221 AND pool_entry=11082;
DELETE FROM pool_gameobject WHERE guid=197222 AND pool_entry=11082;
DELETE FROM pool_gameobject WHERE guid=197223 AND pool_entry=11082;
DELETE FROM pool_gameobject WHERE guid=197224 AND pool_entry=11081;
DELETE FROM pool_gameobject WHERE guid=197225 AND pool_entry=11081;
DELETE FROM pool_gameobject WHERE guid=197226 AND pool_entry=11081;
DELETE FROM pool_gameobject WHERE guid=197227 AND pool_entry=11081;
DELETE FROM pool_gameobject WHERE guid=197228 AND pool_entry=11080;
DELETE FROM pool_gameobject WHERE guid=197229 AND pool_entry=11080;
DELETE FROM pool_gameobject WHERE guid=197230 AND pool_entry=11080;
DELETE FROM pool_gameobject WHERE guid=197231 AND pool_entry=11080;
DELETE FROM pool_gameobject WHERE guid=197232 AND pool_entry=11079;
DELETE FROM pool_gameobject WHERE guid=197233 AND pool_entry=11079;
DELETE FROM pool_gameobject WHERE guid=197234 AND pool_entry=11079;
DELETE FROM pool_gameobject WHERE guid=197235 AND pool_entry=11079;
DELETE FROM pool_gameobject WHERE guid=197236 AND pool_entry=11078;
DELETE FROM pool_gameobject WHERE guid=197237 AND pool_entry=11078;
DELETE FROM pool_gameobject WHERE guid=197238 AND pool_entry=11078;
DELETE FROM pool_gameobject WHERE guid=197239 AND pool_entry=11078;
DELETE FROM pool_gameobject WHERE guid=197240 AND pool_entry=11077;
DELETE FROM pool_gameobject WHERE guid=197241 AND pool_entry=11077;
DELETE FROM pool_gameobject WHERE guid=197242 AND pool_entry=11077;
DELETE FROM pool_gameobject WHERE guid=197243 AND pool_entry=11077;
DELETE FROM pool_gameobject WHERE guid=197244 AND pool_entry=11076;
DELETE FROM pool_gameobject WHERE guid=197245 AND pool_entry=11076;
DELETE FROM pool_gameobject WHERE guid=197246 AND pool_entry=11076;
DELETE FROM pool_gameobject WHERE guid=197247 AND pool_entry=11076;
DELETE FROM pool_gameobject WHERE guid=197248 AND pool_entry=11075;
DELETE FROM pool_gameobject WHERE guid=197249 AND pool_entry=11075;
DELETE FROM pool_gameobject WHERE guid=197250 AND pool_entry=11075;
DELETE FROM pool_gameobject WHERE guid=197251 AND pool_entry=11075;
DELETE FROM pool_gameobject WHERE guid=197252 AND pool_entry=11074;
DELETE FROM pool_gameobject WHERE guid=197253 AND pool_entry=11074;
DELETE FROM pool_gameobject WHERE guid=197254 AND pool_entry=11074;
DELETE FROM pool_gameobject WHERE guid=197255 AND pool_entry=11074;
DELETE FROM pool_gameobject WHERE guid=197256 AND pool_entry=11073;
DELETE FROM pool_gameobject WHERE guid=197257 AND pool_entry=11073;
DELETE FROM pool_gameobject WHERE guid=197258 AND pool_entry=11073;
DELETE FROM pool_gameobject WHERE guid=197259 AND pool_entry=11072;
DELETE FROM pool_gameobject WHERE guid=197260 AND pool_entry=11072;
DELETE FROM pool_gameobject WHERE guid=197261 AND pool_entry=11072;
DELETE FROM pool_gameobject WHERE guid=197262 AND pool_entry=11071;
DELETE FROM pool_gameobject WHERE guid=197263 AND pool_entry=11071;
DELETE FROM pool_gameobject WHERE guid=197264 AND pool_entry=11071;
DELETE FROM pool_gameobject WHERE guid=197265 AND pool_entry=11070;
DELETE FROM pool_gameobject WHERE guid=197266 AND pool_entry=11070;
DELETE FROM pool_gameobject WHERE guid=197267 AND pool_entry=11070;
DELETE FROM pool_gameobject WHERE guid=197268 AND pool_entry=11069;
DELETE FROM pool_gameobject WHERE guid=197269 AND pool_entry=11069;
DELETE FROM pool_gameobject WHERE guid=197270 AND pool_entry=11069;
DELETE FROM pool_gameobject WHERE guid=197271 AND pool_entry=11068;
DELETE FROM pool_gameobject WHERE guid=197272 AND pool_entry=11068;
DELETE FROM pool_gameobject WHERE guid=197273 AND pool_entry=11068;
DELETE FROM pool_gameobject WHERE guid=197274 AND pool_entry=11067;
DELETE FROM pool_gameobject WHERE guid=197275 AND pool_entry=11067;
DELETE FROM pool_gameobject WHERE guid=197276 AND pool_entry=11067;
DELETE FROM pool_gameobject WHERE guid=197277 AND pool_entry=11066;
DELETE FROM pool_gameobject WHERE guid=197278 AND pool_entry=11066;
DELETE FROM pool_gameobject WHERE guid=197279 AND pool_entry=11066;
DELETE FROM pool_gameobject WHERE guid=197280 AND pool_entry=11065;
DELETE FROM pool_gameobject WHERE guid=197281 AND pool_entry=11065;
DELETE FROM pool_gameobject WHERE guid=197282 AND pool_entry=11065;
DELETE FROM pool_gameobject WHERE guid=197283 AND pool_entry=11064;
DELETE FROM pool_gameobject WHERE guid=197284 AND pool_entry=11064;
DELETE FROM pool_gameobject WHERE guid=197285 AND pool_entry=11064;
DELETE FROM pool_gameobject WHERE guid=197286 AND pool_entry=11063;
DELETE FROM pool_gameobject WHERE guid=197287 AND pool_entry=11063;
DELETE FROM pool_gameobject WHERE guid=197288 AND pool_entry=11063;
DELETE FROM pool_gameobject WHERE guid=197289 AND pool_entry=11062;
DELETE FROM pool_gameobject WHERE guid=197290 AND pool_entry=11062;
DELETE FROM pool_gameobject WHERE guid=197291 AND pool_entry=11062;
DELETE FROM pool_gameobject WHERE guid=197292 AND pool_entry=11061;
DELETE FROM pool_gameobject WHERE guid=197293 AND pool_entry=11061;
DELETE FROM pool_gameobject WHERE guid=197294 AND pool_entry=11061;
DELETE FROM pool_gameobject WHERE guid=197295 AND pool_entry=11060;
DELETE FROM pool_gameobject WHERE guid=197296 AND pool_entry=11060;
DELETE FROM pool_gameobject WHERE guid=197297 AND pool_entry=11060;
DELETE FROM pool_gameobject WHERE guid=197298 AND pool_entry=11059;
DELETE FROM pool_gameobject WHERE guid=197299 AND pool_entry=11059;
DELETE FROM pool_gameobject WHERE guid=197300 AND pool_entry=11059;
DELETE FROM pool_gameobject WHERE guid=197301 AND pool_entry=11058;
DELETE FROM pool_gameobject WHERE guid=197302 AND pool_entry=11058;
DELETE FROM pool_gameobject WHERE guid=197303 AND pool_entry=11058;
DELETE FROM pool_gameobject WHERE guid=197304 AND pool_entry=11057;
DELETE FROM pool_gameobject WHERE guid=197305 AND pool_entry=11057;
DELETE FROM pool_gameobject WHERE guid=197306 AND pool_entry=11057;
DELETE FROM pool_gameobject WHERE guid=197307 AND pool_entry=11056;
DELETE FROM pool_gameobject WHERE guid=197308 AND pool_entry=11056;
DELETE FROM pool_gameobject WHERE guid=197309 AND pool_entry=11056;
DELETE FROM pool_gameobject WHERE guid=197310 AND pool_entry=11055;
DELETE FROM pool_gameobject WHERE guid=197311 AND pool_entry=11055;
DELETE FROM pool_gameobject WHERE guid=197312 AND pool_entry=11055;
DELETE FROM pool_gameobject WHERE guid=197313 AND pool_entry=11054;
DELETE FROM pool_gameobject WHERE guid=197314 AND pool_entry=11054;
DELETE FROM pool_gameobject WHERE guid=197315 AND pool_entry=11054;
DELETE FROM pool_gameobject WHERE guid=197316 AND pool_entry=11053;
DELETE FROM pool_gameobject WHERE guid=197317 AND pool_entry=11053;
DELETE FROM pool_gameobject WHERE guid=197318 AND pool_entry=11053;
DELETE FROM pool_gameobject WHERE guid=197319 AND pool_entry=11052;
DELETE FROM pool_gameobject WHERE guid=197320 AND pool_entry=11052;
DELETE FROM pool_gameobject WHERE guid=197321 AND pool_entry=11052;
DELETE FROM pool_gameobject WHERE guid=197322 AND pool_entry=11051;
DELETE FROM pool_gameobject WHERE guid=197323 AND pool_entry=11051;
DELETE FROM pool_gameobject WHERE guid=197324 AND pool_entry=11051;
DELETE FROM pool_gameobject WHERE guid=197325 AND pool_entry=11050;
DELETE FROM pool_gameobject WHERE guid=197326 AND pool_entry=11050;
DELETE FROM pool_gameobject WHERE guid=197327 AND pool_entry=11050;
DELETE FROM pool_gameobject WHERE guid=197328 AND pool_entry=11049;
DELETE FROM pool_gameobject WHERE guid=197329 AND pool_entry=11049;
DELETE FROM pool_gameobject WHERE guid=197330 AND pool_entry=11049;
DELETE FROM pool_gameobject WHERE guid=197331 AND pool_entry=11048;
DELETE FROM pool_gameobject WHERE guid=197332 AND pool_entry=11048;
DELETE FROM pool_gameobject WHERE guid=197333 AND pool_entry=11048;
DELETE FROM pool_gameobject WHERE guid=197334 AND pool_entry=11047;
DELETE FROM pool_gameobject WHERE guid=197335 AND pool_entry=11047;
DELETE FROM pool_gameobject WHERE guid=197336 AND pool_entry=11047;
DELETE FROM pool_gameobject WHERE guid=197337 AND pool_entry=11046;
DELETE FROM pool_gameobject WHERE guid=197338 AND pool_entry=11046;
DELETE FROM pool_gameobject WHERE guid=197339 AND pool_entry=11046;
DELETE FROM pool_gameobject WHERE guid=197340 AND pool_entry=11045;
DELETE FROM pool_gameobject WHERE guid=197341 AND pool_entry=11045;
DELETE FROM pool_gameobject WHERE guid=197342 AND pool_entry=11045;
DELETE FROM pool_gameobject WHERE guid=197343 AND pool_entry=11044;
DELETE FROM pool_gameobject WHERE guid=197344 AND pool_entry=11044;
DELETE FROM pool_gameobject WHERE guid=197345 AND pool_entry=11044;
DELETE FROM pool_gameobject WHERE guid=197346 AND pool_entry=11043;
DELETE FROM pool_gameobject WHERE guid=197347 AND pool_entry=11043;
DELETE FROM pool_gameobject WHERE guid=197348 AND pool_entry=11043;
DELETE FROM pool_gameobject WHERE guid=197349 AND pool_entry=11042;
DELETE FROM pool_gameobject WHERE guid=197350 AND pool_entry=11042;
DELETE FROM pool_gameobject WHERE guid=197351 AND pool_entry=11042;
DELETE FROM pool_gameobject WHERE guid=197352 AND pool_entry=11041;
DELETE FROM pool_gameobject WHERE guid=197353 AND pool_entry=11041;
DELETE FROM pool_gameobject WHERE guid=197354 AND pool_entry=11041;
DELETE FROM pool_gameobject WHERE guid=197355 AND pool_entry=11040;
DELETE FROM pool_gameobject WHERE guid=197356 AND pool_entry=11040;
DELETE FROM pool_gameobject WHERE guid=197357 AND pool_entry=11040;
DELETE FROM pool_gameobject WHERE guid=197358 AND pool_entry=11039;
DELETE FROM pool_gameobject WHERE guid=197359 AND pool_entry=11039;
DELETE FROM pool_gameobject WHERE guid=197360 AND pool_entry=11039;
DELETE FROM pool_gameobject WHERE guid=197361 AND pool_entry=11038;
DELETE FROM pool_gameobject WHERE guid=197362 AND pool_entry=11038;
DELETE FROM pool_gameobject WHERE guid=197363 AND pool_entry=11038;
DELETE FROM pool_gameobject WHERE guid=197364 AND pool_entry=11037;
DELETE FROM pool_gameobject WHERE guid=197365 AND pool_entry=11037;
DELETE FROM pool_gameobject WHERE guid=197366 AND pool_entry=11037;
DELETE FROM pool_gameobject WHERE guid=197367 AND pool_entry=11036;
DELETE FROM pool_gameobject WHERE guid=197368 AND pool_entry=11036;
DELETE FROM pool_gameobject WHERE guid=197369 AND pool_entry=11036;
DELETE FROM pool_gameobject WHERE guid=197370 AND pool_entry=11035;
DELETE FROM pool_gameobject WHERE guid=197371 AND pool_entry=11035;
DELETE FROM pool_gameobject WHERE guid=197372 AND pool_entry=11035;
DELETE FROM pool_gameobject WHERE guid=197373 AND pool_entry=11034;
DELETE FROM pool_gameobject WHERE guid=197374 AND pool_entry=11034;
DELETE FROM pool_gameobject WHERE guid=197375 AND pool_entry=11034;
DELETE FROM pool_gameobject WHERE guid=197376 AND pool_entry=11033;
DELETE FROM pool_gameobject WHERE guid=197377 AND pool_entry=11033;
DELETE FROM pool_gameobject WHERE guid=197378 AND pool_entry=11033;
DELETE FROM pool_gameobject WHERE guid=197379 AND pool_entry=11032;
DELETE FROM pool_gameobject WHERE guid=197380 AND pool_entry=11032;
DELETE FROM pool_gameobject WHERE guid=197381 AND pool_entry=11032;
DELETE FROM pool_gameobject WHERE guid=197382 AND pool_entry=11031;
DELETE FROM pool_gameobject WHERE guid=197383 AND pool_entry=11031;
DELETE FROM pool_gameobject WHERE guid=197384 AND pool_entry=11031;
DELETE FROM pool_gameobject WHERE guid=197385 AND pool_entry=11030;
DELETE FROM pool_gameobject WHERE guid=197386 AND pool_entry=11030;
DELETE FROM pool_gameobject WHERE guid=197387 AND pool_entry=11030;
DELETE FROM pool_gameobject WHERE guid=197388 AND pool_entry=11029;
DELETE FROM pool_gameobject WHERE guid=197389 AND pool_entry=11029;
DELETE FROM pool_gameobject WHERE guid=197390 AND pool_entry=11029;
DELETE FROM pool_gameobject WHERE guid=197391 AND pool_entry=11028;
DELETE FROM pool_gameobject WHERE guid=197392 AND pool_entry=11028;
DELETE FROM pool_gameobject WHERE guid=197393 AND pool_entry=11028;
DELETE FROM pool_gameobject WHERE guid=197394 AND pool_entry=11027;
DELETE FROM pool_gameobject WHERE guid=197395 AND pool_entry=11027;
DELETE FROM pool_gameobject WHERE guid=197396 AND pool_entry=11027;
DELETE FROM pool_gameobject WHERE guid=197397 AND pool_entry=11026;
DELETE FROM pool_gameobject WHERE guid=197398 AND pool_entry=11026;
DELETE FROM pool_gameobject WHERE guid=197399 AND pool_entry=11026;
DELETE FROM pool_gameobject WHERE guid=197400 AND pool_entry=11025;
DELETE FROM pool_gameobject WHERE guid=197401 AND pool_entry=11025;
DELETE FROM pool_gameobject WHERE guid=197402 AND pool_entry=11025;
DELETE FROM pool_gameobject WHERE guid=197403 AND pool_entry=11024;
DELETE FROM pool_gameobject WHERE guid=197404 AND pool_entry=11024;
DELETE FROM pool_gameobject WHERE guid=197405 AND pool_entry=11024;
DELETE FROM pool_gameobject WHERE guid=197406 AND pool_entry=11023;
DELETE FROM pool_gameobject WHERE guid=197407 AND pool_entry=11023;
DELETE FROM pool_gameobject WHERE guid=197408 AND pool_entry=11023;
DELETE FROM pool_gameobject WHERE guid=197409 AND pool_entry=11022;
DELETE FROM pool_gameobject WHERE guid=197410 AND pool_entry=11022;
DELETE FROM pool_gameobject WHERE guid=197411 AND pool_entry=11022;
DELETE FROM pool_gameobject WHERE guid=197412 AND pool_entry=11021;
DELETE FROM pool_gameobject WHERE guid=197413 AND pool_entry=11021;
DELETE FROM pool_gameobject WHERE guid=197414 AND pool_entry=11021;
DELETE FROM pool_gameobject WHERE guid=197415 AND pool_entry=11020;
DELETE FROM pool_gameobject WHERE guid=197416 AND pool_entry=11020;
DELETE FROM pool_gameobject WHERE guid=197417 AND pool_entry=11020;
DELETE FROM pool_gameobject WHERE guid=197418 AND pool_entry=11019;
DELETE FROM pool_gameobject WHERE guid=197419 AND pool_entry=11019;
DELETE FROM pool_gameobject WHERE guid=197420 AND pool_entry=11019;
DELETE FROM pool_gameobject WHERE guid=197421 AND pool_entry=11018;
DELETE FROM pool_gameobject WHERE guid=197422 AND pool_entry=11018;
DELETE FROM pool_gameobject WHERE guid=197423 AND pool_entry=11018;
DELETE FROM pool_gameobject WHERE guid=197424 AND pool_entry=11017;
DELETE FROM pool_gameobject WHERE guid=197425 AND pool_entry=11017;
DELETE FROM pool_gameobject WHERE guid=197426 AND pool_entry=11017;
DELETE FROM pool_gameobject WHERE guid=197427 AND pool_entry=11016;
DELETE FROM pool_gameobject WHERE guid=197428 AND pool_entry=11016;
DELETE FROM pool_gameobject WHERE guid=197429 AND pool_entry=11016;
DELETE FROM pool_gameobject WHERE guid=197430 AND pool_entry=11015;
DELETE FROM pool_gameobject WHERE guid=197431 AND pool_entry=11015;
DELETE FROM pool_gameobject WHERE guid=197432 AND pool_entry=11015;
DELETE FROM pool_gameobject WHERE guid=197433 AND pool_entry=11014;
DELETE FROM pool_gameobject WHERE guid=197434 AND pool_entry=11014;
DELETE FROM pool_gameobject WHERE guid=197435 AND pool_entry=11014;
DELETE FROM pool_gameobject WHERE guid=197436 AND pool_entry=11013;
DELETE FROM pool_gameobject WHERE guid=197437 AND pool_entry=11013;
DELETE FROM pool_gameobject WHERE guid=197438 AND pool_entry=11013;
DELETE FROM pool_gameobject WHERE guid=197439 AND pool_entry=11012;
DELETE FROM pool_gameobject WHERE guid=197440 AND pool_entry=11012;
DELETE FROM pool_gameobject WHERE guid=197441 AND pool_entry=11012;
DELETE FROM pool_gameobject WHERE guid=197442 AND pool_entry=11011;
DELETE FROM pool_gameobject WHERE guid=197443 AND pool_entry=11011;
DELETE FROM pool_gameobject WHERE guid=197444 AND pool_entry=11011;
DELETE FROM pool_gameobject WHERE guid=197445 AND pool_entry=11010;
DELETE FROM pool_gameobject WHERE guid=197446 AND pool_entry=11010;
DELETE FROM pool_gameobject WHERE guid=197447 AND pool_entry=11010;
DELETE FROM pool_gameobject WHERE guid=197448 AND pool_entry=11009;
DELETE FROM pool_gameobject WHERE guid=197449 AND pool_entry=11009;
DELETE FROM pool_gameobject WHERE guid=197450 AND pool_entry=11009;
DELETE FROM pool_gameobject WHERE guid=197451 AND pool_entry=11008;
DELETE FROM pool_gameobject WHERE guid=197452 AND pool_entry=11008;
DELETE FROM pool_gameobject WHERE guid=197453 AND pool_entry=11008;
DELETE FROM pool_gameobject WHERE guid=197454 AND pool_entry=11007;
DELETE FROM pool_gameobject WHERE guid=197455 AND pool_entry=11007;
DELETE FROM pool_gameobject WHERE guid=197456 AND pool_entry=11007;
DELETE FROM pool_gameobject WHERE guid=197457 AND pool_entry=11006;
DELETE FROM pool_gameobject WHERE guid=197458 AND pool_entry=11006;
DELETE FROM pool_gameobject WHERE guid=197459 AND pool_entry=11006;
DELETE FROM pool_gameobject WHERE guid=197460 AND pool_entry=11005;
DELETE FROM pool_gameobject WHERE guid=197461 AND pool_entry=11005;
DELETE FROM pool_gameobject WHERE guid=197462 AND pool_entry=11005;
DELETE FROM pool_gameobject WHERE guid=197463 AND pool_entry=11004;
DELETE FROM pool_gameobject WHERE guid=197464 AND pool_entry=11004;
DELETE FROM pool_gameobject WHERE guid=197465 AND pool_entry=11004;
DELETE FROM pool_gameobject WHERE guid=197466 AND pool_entry=11003;
DELETE FROM pool_gameobject WHERE guid=197467 AND pool_entry=11003;
DELETE FROM pool_gameobject WHERE guid=197468 AND pool_entry=11003;
DELETE FROM pool_gameobject WHERE guid=197469 AND pool_entry=11002;
DELETE FROM pool_gameobject WHERE guid=197470 AND pool_entry=11002;
DELETE FROM pool_gameobject WHERE guid=197471 AND pool_entry=11002;
DELETE FROM pool_gameobject WHERE guid=197472 AND pool_entry=11001;
DELETE FROM pool_gameobject WHERE guid=197473 AND pool_entry=11001;
DELETE FROM pool_gameobject WHERE guid=197474 AND pool_entry=11001;
DELETE FROM pool_gameobject WHERE guid=197475 AND pool_entry=11000;
DELETE FROM pool_gameobject WHERE guid=197476 AND pool_entry=11000;
DELETE FROM pool_gameobject WHERE guid=197477 AND pool_entry=11000;
DELETE FROM pool_gameobject WHERE guid=197478 AND pool_entry=10999;
DELETE FROM pool_gameobject WHERE guid=197479 AND pool_entry=10999;
DELETE FROM pool_gameobject WHERE guid=197480 AND pool_entry=10999;
DELETE FROM pool_gameobject WHERE guid=197481 AND pool_entry=10998;
DELETE FROM pool_gameobject WHERE guid=197482 AND pool_entry=10998;
DELETE FROM pool_gameobject WHERE guid=197483 AND pool_entry=10998;
DELETE FROM pool_gameobject WHERE guid=197484 AND pool_entry=10997;
DELETE FROM pool_gameobject WHERE guid=197485 AND pool_entry=10997;
DELETE FROM pool_gameobject WHERE guid=197486 AND pool_entry=10997;
DELETE FROM pool_gameobject WHERE guid=197487 AND pool_entry=10996;
DELETE FROM pool_gameobject WHERE guid=197488 AND pool_entry=10996;
DELETE FROM pool_gameobject WHERE guid=197489 AND pool_entry=10996;
DELETE FROM pool_gameobject WHERE guid=197490 AND pool_entry=10995;
DELETE FROM pool_gameobject WHERE guid=197491 AND pool_entry=10995;
DELETE FROM pool_gameobject WHERE guid=197492 AND pool_entry=10995;
DELETE FROM pool_gameobject WHERE guid=197493 AND pool_entry=10994;
DELETE FROM pool_gameobject WHERE guid=197494 AND pool_entry=10994;
DELETE FROM pool_gameobject WHERE guid=197495 AND pool_entry=10994;
DELETE FROM pool_gameobject WHERE guid=197496 AND pool_entry=10993;
DELETE FROM pool_gameobject WHERE guid=197497 AND pool_entry=10993;
DELETE FROM pool_gameobject WHERE guid=197498 AND pool_entry=10993;
DELETE FROM pool_gameobject WHERE guid=197499 AND pool_entry=10992;
DELETE FROM pool_gameobject WHERE guid=197500 AND pool_entry=10992;
DELETE FROM pool_gameobject WHERE guid=197501 AND pool_entry=10992;
DELETE FROM pool_gameobject WHERE guid=197502 AND pool_entry=10991;
DELETE FROM pool_gameobject WHERE guid=197503 AND pool_entry=10991;
DELETE FROM pool_gameobject WHERE guid=197504 AND pool_entry=10991;
DELETE FROM pool_gameobject WHERE guid=197505 AND pool_entry=10990;
DELETE FROM pool_gameobject WHERE guid=197506 AND pool_entry=10990;
DELETE FROM pool_gameobject WHERE guid=197507 AND pool_entry=10990;
DELETE FROM pool_gameobject WHERE guid=197508 AND pool_entry=10989;
DELETE FROM pool_gameobject WHERE guid=197509 AND pool_entry=10989;
DELETE FROM pool_gameobject WHERE guid=197510 AND pool_entry=10989;
DELETE FROM pool_gameobject WHERE guid=197511 AND pool_entry=10988;
DELETE FROM pool_gameobject WHERE guid=197512 AND pool_entry=10988;
DELETE FROM pool_gameobject WHERE guid=197513 AND pool_entry=10988;
DELETE FROM pool_gameobject WHERE guid=197514 AND pool_entry=10987;
DELETE FROM pool_gameobject WHERE guid=197515 AND pool_entry=10987;
DELETE FROM pool_gameobject WHERE guid=197516 AND pool_entry=10987;
DELETE FROM pool_gameobject WHERE guid=197517 AND pool_entry=10986;
DELETE FROM pool_gameobject WHERE guid=197518 AND pool_entry=10986;
DELETE FROM pool_gameobject WHERE guid=197519 AND pool_entry=10986;
DELETE FROM pool_gameobject WHERE guid=197520 AND pool_entry=10985;
DELETE FROM pool_gameobject WHERE guid=197521 AND pool_entry=10985;
DELETE FROM pool_gameobject WHERE guid=197522 AND pool_entry=10985;
DELETE FROM pool_gameobject WHERE guid=197523 AND pool_entry=10984;
DELETE FROM pool_gameobject WHERE guid=197524 AND pool_entry=10984;
DELETE FROM pool_gameobject WHERE guid=197525 AND pool_entry=10984;
DELETE FROM pool_gameobject WHERE guid=197526 AND pool_entry=10983;
DELETE FROM pool_gameobject WHERE guid=197527 AND pool_entry=10983;
DELETE FROM pool_gameobject WHERE guid=197528 AND pool_entry=10983;
DELETE FROM pool_gameobject WHERE guid=197529 AND pool_entry=10982;
DELETE FROM pool_gameobject WHERE guid=197530 AND pool_entry=10982;
DELETE FROM pool_gameobject WHERE guid=197531 AND pool_entry=10981;
DELETE FROM pool_gameobject WHERE guid=197532 AND pool_entry=10981;
DELETE FROM pool_gameobject WHERE guid=197533 AND pool_entry=10980;
DELETE FROM pool_gameobject WHERE guid=197534 AND pool_entry=10980;
DELETE FROM pool_gameobject WHERE guid=197535 AND pool_entry=10979;
DELETE FROM pool_gameobject WHERE guid=197536 AND pool_entry=10979;
DELETE FROM pool_gameobject WHERE guid=197537 AND pool_entry=10978;
DELETE FROM pool_gameobject WHERE guid=197538 AND pool_entry=10978;
DELETE FROM pool_gameobject WHERE guid=197539 AND pool_entry=10977;
DELETE FROM pool_gameobject WHERE guid=197540 AND pool_entry=10977;
DELETE FROM pool_gameobject WHERE guid=197541 AND pool_entry=10976;
DELETE FROM pool_gameobject WHERE guid=197542 AND pool_entry=10976;
DELETE FROM pool_gameobject WHERE guid=197543 AND pool_entry=10975;
DELETE FROM pool_gameobject WHERE guid=197544 AND pool_entry=10975;
DELETE FROM pool_gameobject WHERE guid=197545 AND pool_entry=10974;
DELETE FROM pool_gameobject WHERE guid=197546 AND pool_entry=10974;
DELETE FROM pool_gameobject WHERE guid=197547 AND pool_entry=10973;
DELETE FROM pool_gameobject WHERE guid=197548 AND pool_entry=10973;
DELETE FROM pool_gameobject WHERE guid=197549 AND pool_entry=10972;
DELETE FROM pool_gameobject WHERE guid=197550 AND pool_entry=10972;
DELETE FROM pool_gameobject WHERE guid=197551 AND pool_entry=10971;
DELETE FROM pool_gameobject WHERE guid=197552 AND pool_entry=10971;
DELETE FROM pool_gameobject WHERE guid=197553 AND pool_entry=10970;
DELETE FROM pool_gameobject WHERE guid=197554 AND pool_entry=10970;
DELETE FROM pool_gameobject WHERE guid=197555 AND pool_entry=10969;
DELETE FROM pool_gameobject WHERE guid=197556 AND pool_entry=10969;
DELETE FROM pool_gameobject WHERE guid=197557 AND pool_entry=10968;
DELETE FROM pool_gameobject WHERE guid=197558 AND pool_entry=10968;
DELETE FROM pool_gameobject WHERE guid=197559 AND pool_entry=10967;
DELETE FROM pool_gameobject WHERE guid=197560 AND pool_entry=10967;
DELETE FROM pool_gameobject WHERE guid=197561 AND pool_entry=10966;
DELETE FROM pool_gameobject WHERE guid=197562 AND pool_entry=10966;
DELETE FROM pool_gameobject WHERE guid=197563 AND pool_entry=10965;
DELETE FROM pool_gameobject WHERE guid=197564 AND pool_entry=10965;
DELETE FROM pool_gameobject WHERE guid=197565 AND pool_entry=10964;
DELETE FROM pool_gameobject WHERE guid=197566 AND pool_entry=10964;
DELETE FROM pool_gameobject WHERE guid=197567 AND pool_entry=10963;
DELETE FROM pool_gameobject WHERE guid=197568 AND pool_entry=10963;
DELETE FROM pool_gameobject WHERE guid=197569 AND pool_entry=10962;
DELETE FROM pool_gameobject WHERE guid=197570 AND pool_entry=10962;
DELETE FROM pool_gameobject WHERE guid=197571 AND pool_entry=10961;
DELETE FROM pool_gameobject WHERE guid=197572 AND pool_entry=10961;
DELETE FROM pool_gameobject WHERE guid=197573 AND pool_entry=10960;
DELETE FROM pool_gameobject WHERE guid=197574 AND pool_entry=10960;
DELETE FROM pool_gameobject WHERE guid=197575 AND pool_entry=10959;
DELETE FROM pool_gameobject WHERE guid=197576 AND pool_entry=10959;
DELETE FROM pool_gameobject WHERE guid=197577 AND pool_entry=10958;
DELETE FROM pool_gameobject WHERE guid=197578 AND pool_entry=10958;
DELETE FROM pool_gameobject WHERE guid=197579 AND pool_entry=10957;
DELETE FROM pool_gameobject WHERE guid=197580 AND pool_entry=10957;
DELETE FROM pool_gameobject WHERE guid=197581 AND pool_entry=10956;
DELETE FROM pool_gameobject WHERE guid=197582 AND pool_entry=10956;
DELETE FROM pool_gameobject WHERE guid=197583 AND pool_entry=10955;
DELETE FROM pool_gameobject WHERE guid=197584 AND pool_entry=10955;
DELETE FROM pool_gameobject WHERE guid=197585 AND pool_entry=10954;
DELETE FROM pool_gameobject WHERE guid=197586 AND pool_entry=10954;
DELETE FROM pool_gameobject WHERE guid=197587 AND pool_entry=10953;
DELETE FROM pool_gameobject WHERE guid=197588 AND pool_entry=10953;
DELETE FROM pool_gameobject WHERE guid=197589 AND pool_entry=10952;
DELETE FROM pool_gameobject WHERE guid=197590 AND pool_entry=10952;
DELETE FROM pool_gameobject WHERE guid=197591 AND pool_entry=10951;
DELETE FROM pool_gameobject WHERE guid=197592 AND pool_entry=10951;
DELETE FROM pool_gameobject WHERE guid=197593 AND pool_entry=10950;
DELETE FROM pool_gameobject WHERE guid=197594 AND pool_entry=10950;
DELETE FROM pool_gameobject WHERE guid=197595 AND pool_entry=10949;
DELETE FROM pool_gameobject WHERE guid=197596 AND pool_entry=10949;
DELETE FROM pool_gameobject WHERE guid=197597 AND pool_entry=10948;
DELETE FROM pool_gameobject WHERE guid=197598 AND pool_entry=10948;
DELETE FROM pool_gameobject WHERE guid=197599 AND pool_entry=10947;
DELETE FROM pool_gameobject WHERE guid=197600 AND pool_entry=10947;
DELETE FROM pool_gameobject WHERE guid=197601 AND pool_entry=10946;
DELETE FROM pool_gameobject WHERE guid=197602 AND pool_entry=10946;
DELETE FROM pool_gameobject WHERE guid=197603 AND pool_entry=10945;
DELETE FROM pool_gameobject WHERE guid=197604 AND pool_entry=10945;
DELETE FROM pool_gameobject WHERE guid=197605 AND pool_entry=10944;
DELETE FROM pool_gameobject WHERE guid=197606 AND pool_entry=10944;
DELETE FROM pool_gameobject WHERE guid=197607 AND pool_entry=10943;
DELETE FROM pool_gameobject WHERE guid=197608 AND pool_entry=10943;
DELETE FROM pool_gameobject WHERE guid=197609 AND pool_entry=10942;
DELETE FROM pool_gameobject WHERE guid=197610 AND pool_entry=10942;
DELETE FROM pool_gameobject WHERE guid=197611 AND pool_entry=10941;
DELETE FROM pool_gameobject WHERE guid=197612 AND pool_entry=10941;
DELETE FROM pool_gameobject WHERE guid=197613 AND pool_entry=10940;
DELETE FROM pool_gameobject WHERE guid=197614 AND pool_entry=10940;
DELETE FROM pool_gameobject WHERE guid=197615 AND pool_entry=10939;
DELETE FROM pool_gameobject WHERE guid=197616 AND pool_entry=10939;
DELETE FROM pool_gameobject WHERE guid=197617 AND pool_entry=10938;
DELETE FROM pool_gameobject WHERE guid=197618 AND pool_entry=10938;
DELETE FROM pool_gameobject WHERE guid=197619 AND pool_entry=10937;
DELETE FROM pool_gameobject WHERE guid=197620 AND pool_entry=10937;
DELETE FROM pool_gameobject WHERE guid=197621 AND pool_entry=10936;
DELETE FROM pool_gameobject WHERE guid=197622 AND pool_entry=10936;
DELETE FROM pool_gameobject WHERE guid=197623 AND pool_entry=10935;
DELETE FROM pool_gameobject WHERE guid=197624 AND pool_entry=10935;
DELETE FROM pool_gameobject WHERE guid=197625 AND pool_entry=10934;
DELETE FROM pool_gameobject WHERE guid=197626 AND pool_entry=10934;
DELETE FROM pool_gameobject WHERE guid=197627 AND pool_entry=10933;
DELETE FROM pool_gameobject WHERE guid=197628 AND pool_entry=10933;
DELETE FROM pool_gameobject WHERE guid=197629 AND pool_entry=10932;
DELETE FROM pool_gameobject WHERE guid=197630 AND pool_entry=10932;
DELETE FROM pool_gameobject WHERE guid=197631 AND pool_entry=10931;
DELETE FROM pool_gameobject WHERE guid=197632 AND pool_entry=10931;
DELETE FROM pool_gameobject WHERE guid=197633 AND pool_entry=10930;
DELETE FROM pool_gameobject WHERE guid=197634 AND pool_entry=10930;
DELETE FROM pool_gameobject WHERE guid=197635 AND pool_entry=10929;
DELETE FROM pool_gameobject WHERE guid=197636 AND pool_entry=10929;
DELETE FROM pool_gameobject WHERE guid=197637 AND pool_entry=10928;
DELETE FROM pool_gameobject WHERE guid=197638 AND pool_entry=10928;
DELETE FROM pool_gameobject WHERE guid=197639 AND pool_entry=10927;
DELETE FROM pool_gameobject WHERE guid=197640 AND pool_entry=10927;
DELETE FROM pool_gameobject WHERE guid=197641 AND pool_entry=10926;
DELETE FROM pool_gameobject WHERE guid=197642 AND pool_entry=10926;
DELETE FROM pool_gameobject WHERE guid=197643 AND pool_entry=10925;
DELETE FROM pool_gameobject WHERE guid=197644 AND pool_entry=10925;
DELETE FROM pool_gameobject WHERE guid=197645 AND pool_entry=10924;
DELETE FROM pool_gameobject WHERE guid=197646 AND pool_entry=10924;
DELETE FROM pool_gameobject WHERE guid=197647 AND pool_entry=10923;
DELETE FROM pool_gameobject WHERE guid=197648 AND pool_entry=10923;
DELETE FROM pool_gameobject WHERE guid=197649 AND pool_entry=10922;
DELETE FROM pool_gameobject WHERE guid=197650 AND pool_entry=10922;
DELETE FROM pool_gameobject WHERE guid=197651 AND pool_entry=10921;
DELETE FROM pool_gameobject WHERE guid=197652 AND pool_entry=10921;
DELETE FROM pool_gameobject WHERE guid=197653 AND pool_entry=10920;
DELETE FROM pool_gameobject WHERE guid=197654 AND pool_entry=10920;
DELETE FROM pool_gameobject WHERE guid=197655 AND pool_entry=10919;
DELETE FROM pool_gameobject WHERE guid=197656 AND pool_entry=10919;
DELETE FROM pool_gameobject WHERE guid=197657 AND pool_entry=10918;
DELETE FROM pool_gameobject WHERE guid=197658 AND pool_entry=10918;
DELETE FROM pool_gameobject WHERE guid=197659 AND pool_entry=10917;
DELETE FROM pool_gameobject WHERE guid=197660 AND pool_entry=10917;
DELETE FROM pool_gameobject WHERE guid=197661 AND pool_entry=10916;
DELETE FROM pool_gameobject WHERE guid=197662 AND pool_entry=10916;
DELETE FROM pool_gameobject WHERE guid=197663 AND pool_entry=10915;
DELETE FROM pool_gameobject WHERE guid=197664 AND pool_entry=10915;
DELETE FROM pool_gameobject WHERE guid=197665 AND pool_entry=10914;
DELETE FROM pool_gameobject WHERE guid=197666 AND pool_entry=10914;
DELETE FROM pool_gameobject WHERE guid=197667 AND pool_entry=10913;
DELETE FROM pool_gameobject WHERE guid=197668 AND pool_entry=10913;
DELETE FROM pool_gameobject WHERE guid=197669 AND pool_entry=10912;
DELETE FROM pool_gameobject WHERE guid=197670 AND pool_entry=10912;
DELETE FROM pool_gameobject WHERE guid=197671 AND pool_entry=10911;
DELETE FROM pool_gameobject WHERE guid=197672 AND pool_entry=10911;
DELETE FROM pool_gameobject WHERE guid=197673 AND pool_entry=10910;
DELETE FROM pool_gameobject WHERE guid=197674 AND pool_entry=10910;
DELETE FROM pool_gameobject WHERE guid=197675 AND pool_entry=10909;
DELETE FROM pool_gameobject WHERE guid=197676 AND pool_entry=10909;
DELETE FROM pool_gameobject WHERE guid=197677 AND pool_entry=10908;
DELETE FROM pool_gameobject WHERE guid=197678 AND pool_entry=10908;
DELETE FROM pool_gameobject WHERE guid=197679 AND pool_entry=10907;
DELETE FROM pool_gameobject WHERE guid=197680 AND pool_entry=10907;
DELETE FROM pool_gameobject WHERE guid=197681 AND pool_entry=10906;
DELETE FROM pool_gameobject WHERE guid=197682 AND pool_entry=10906;
DELETE FROM pool_gameobject WHERE guid=197683 AND pool_entry=10905;
DELETE FROM pool_gameobject WHERE guid=197684 AND pool_entry=10905;
DELETE FROM pool_gameobject WHERE guid=197685 AND pool_entry=10904;
DELETE FROM pool_gameobject WHERE guid=197686 AND pool_entry=10904;
DELETE FROM pool_gameobject WHERE guid=197687 AND pool_entry=10903;
DELETE FROM pool_gameobject WHERE guid=197688 AND pool_entry=10903;
DELETE FROM pool_gameobject WHERE guid=197689 AND pool_entry=10902;
DELETE FROM pool_gameobject WHERE guid=197690 AND pool_entry=10902;
DELETE FROM pool_gameobject WHERE guid=197691 AND pool_entry=10901;
DELETE FROM pool_gameobject WHERE guid=197692 AND pool_entry=10901;
DELETE FROM pool_gameobject WHERE guid=197693 AND pool_entry=10900;
DELETE FROM pool_gameobject WHERE guid=197694 AND pool_entry=10900;
DELETE FROM pool_gameobject WHERE guid=197695 AND pool_entry=10899;
DELETE FROM pool_gameobject WHERE guid=197696 AND pool_entry=10899;
DELETE FROM pool_gameobject WHERE guid=197697 AND pool_entry=10898;
DELETE FROM pool_gameobject WHERE guid=197698 AND pool_entry=10898;
DELETE FROM pool_gameobject WHERE guid=197699 AND pool_entry=10897;
DELETE FROM pool_gameobject WHERE guid=197700 AND pool_entry=10897;
DELETE FROM pool_gameobject WHERE guid=197701 AND pool_entry=10896;
DELETE FROM pool_gameobject WHERE guid=197702 AND pool_entry=10896;
DELETE FROM pool_gameobject WHERE guid=197703 AND pool_entry=10895;
DELETE FROM pool_gameobject WHERE guid=197704 AND pool_entry=10895;
DELETE FROM pool_gameobject WHERE guid=197705 AND pool_entry=10894;
DELETE FROM pool_gameobject WHERE guid=197706 AND pool_entry=10894;
DELETE FROM pool_gameobject WHERE guid=197707 AND pool_entry=10893;
DELETE FROM pool_gameobject WHERE guid=197708 AND pool_entry=10893;
DELETE FROM pool_gameobject WHERE guid=197709 AND pool_entry=10892;
DELETE FROM pool_gameobject WHERE guid=197710 AND pool_entry=10892;
DELETE FROM pool_gameobject WHERE guid=197711 AND pool_entry=10891;
DELETE FROM pool_gameobject WHERE guid=197712 AND pool_entry=10891;
DELETE FROM pool_gameobject WHERE guid=197713 AND pool_entry=10890;
DELETE FROM pool_gameobject WHERE guid=197714 AND pool_entry=10890;
DELETE FROM pool_gameobject WHERE guid=197715 AND pool_entry=10889;
DELETE FROM pool_gameobject WHERE guid=197716 AND pool_entry=10889;
DELETE FROM pool_gameobject WHERE guid=197717 AND pool_entry=10888;
DELETE FROM pool_gameobject WHERE guid=197718 AND pool_entry=10888;
DELETE FROM pool_gameobject WHERE guid=197719 AND pool_entry=10887;
DELETE FROM pool_gameobject WHERE guid=197720 AND pool_entry=10887;
DELETE FROM pool_gameobject WHERE guid=197721 AND pool_entry=10886;
DELETE FROM pool_gameobject WHERE guid=197722 AND pool_entry=10886;
DELETE FROM pool_gameobject WHERE guid=197723 AND pool_entry=10885;
DELETE FROM pool_gameobject WHERE guid=197724 AND pool_entry=10885;
DELETE FROM pool_gameobject WHERE guid=197725 AND pool_entry=10884;
DELETE FROM pool_gameobject WHERE guid=197726 AND pool_entry=10884;
DELETE FROM pool_gameobject WHERE guid=197727 AND pool_entry=10883;
DELETE FROM pool_gameobject WHERE guid=197728 AND pool_entry=10883;
DELETE FROM pool_gameobject WHERE guid=197729 AND pool_entry=10882;
DELETE FROM pool_gameobject WHERE guid=197730 AND pool_entry=10882;
DELETE FROM pool_gameobject WHERE guid=197731 AND pool_entry=10881;
DELETE FROM pool_gameobject WHERE guid=197732 AND pool_entry=10881;
DELETE FROM pool_gameobject WHERE guid=197733 AND pool_entry=10880;
DELETE FROM pool_gameobject WHERE guid=197734 AND pool_entry=10880;
DELETE FROM pool_gameobject WHERE guid=197735 AND pool_entry=10879;
DELETE FROM pool_gameobject WHERE guid=197736 AND pool_entry=10879;
DELETE FROM pool_gameobject WHERE guid=197737 AND pool_entry=10878;
DELETE FROM pool_gameobject WHERE guid=197738 AND pool_entry=10878;
DELETE FROM pool_gameobject WHERE guid=197739 AND pool_entry=10877;
DELETE FROM pool_gameobject WHERE guid=197740 AND pool_entry=10877;
DELETE FROM pool_gameobject WHERE guid=197741 AND pool_entry=10876;
DELETE FROM pool_gameobject WHERE guid=197742 AND pool_entry=10876;
DELETE FROM pool_gameobject WHERE guid=197743 AND pool_entry=10875;
DELETE FROM pool_gameobject WHERE guid=197744 AND pool_entry=10875;
DELETE FROM pool_gameobject WHERE guid=197745 AND pool_entry=10874;
DELETE FROM pool_gameobject WHERE guid=197746 AND pool_entry=10874;
DELETE FROM pool_gameobject WHERE guid=197747 AND pool_entry=10873;
DELETE FROM pool_gameobject WHERE guid=197748 AND pool_entry=10873;
DELETE FROM pool_gameobject WHERE guid=197749 AND pool_entry=10872;
DELETE FROM pool_gameobject WHERE guid=197750 AND pool_entry=10872;
DELETE FROM pool_gameobject WHERE guid=197751 AND pool_entry=10871;
DELETE FROM pool_gameobject WHERE guid=197752 AND pool_entry=10871;
DELETE FROM pool_gameobject WHERE guid=197753 AND pool_entry=10870;
DELETE FROM pool_gameobject WHERE guid=197754 AND pool_entry=10870;
DELETE FROM pool_gameobject WHERE guid=197755 AND pool_entry=10869;
DELETE FROM pool_gameobject WHERE guid=197756 AND pool_entry=10869;
DELETE FROM pool_gameobject WHERE guid=197757 AND pool_entry=10868;
DELETE FROM pool_gameobject WHERE guid=197758 AND pool_entry=10868;
DELETE FROM pool_gameobject WHERE guid=197759 AND pool_entry=10867;
DELETE FROM pool_gameobject WHERE guid=197760 AND pool_entry=10867;
DELETE FROM pool_gameobject WHERE guid=197761 AND pool_entry=10866;
DELETE FROM pool_gameobject WHERE guid=197762 AND pool_entry=10866;
DELETE FROM pool_gameobject WHERE guid=197763 AND pool_entry=10865;
DELETE FROM pool_gameobject WHERE guid=197764 AND pool_entry=10865;
DELETE FROM pool_gameobject WHERE guid=197765 AND pool_entry=10864;
DELETE FROM pool_gameobject WHERE guid=197766 AND pool_entry=10864;
DELETE FROM pool_gameobject WHERE guid=197767 AND pool_entry=10863;
DELETE FROM pool_gameobject WHERE guid=197768 AND pool_entry=10863;
DELETE FROM pool_gameobject WHERE guid=197769 AND pool_entry=10862;
DELETE FROM pool_gameobject WHERE guid=197770 AND pool_entry=10862;
DELETE FROM pool_gameobject WHERE guid=197771 AND pool_entry=10861;
DELETE FROM pool_gameobject WHERE guid=197772 AND pool_entry=10861;
DELETE FROM pool_gameobject WHERE guid=197773 AND pool_entry=10860;
DELETE FROM pool_gameobject WHERE guid=197774 AND pool_entry=10860;
DELETE FROM pool_gameobject WHERE guid=197775 AND pool_entry=10859;
DELETE FROM pool_gameobject WHERE guid=197776 AND pool_entry=10859;
DELETE FROM pool_gameobject WHERE guid=197777 AND pool_entry=10858;
DELETE FROM pool_gameobject WHERE guid=197778 AND pool_entry=10858;
DELETE FROM pool_gameobject WHERE guid=197779 AND pool_entry=10857;
DELETE FROM pool_gameobject WHERE guid=197780 AND pool_entry=10857;
DELETE FROM pool_gameobject WHERE guid=197781 AND pool_entry=10856;
DELETE FROM pool_gameobject WHERE guid=197782 AND pool_entry=10856;
DELETE FROM pool_gameobject WHERE guid=197783 AND pool_entry=10855;
DELETE FROM pool_gameobject WHERE guid=197784 AND pool_entry=10855;
DELETE FROM pool_gameobject WHERE guid=197785 AND pool_entry=10854;
DELETE FROM pool_gameobject WHERE guid=197786 AND pool_entry=10854;
DELETE FROM pool_gameobject WHERE guid=197787 AND pool_entry=10853;
DELETE FROM pool_gameobject WHERE guid=197788 AND pool_entry=10853;
DELETE FROM pool_gameobject WHERE guid=197789 AND pool_entry=10852;
DELETE FROM pool_gameobject WHERE guid=197790 AND pool_entry=10852;
DELETE FROM pool_gameobject WHERE guid=197791 AND pool_entry=10851;
DELETE FROM pool_gameobject WHERE guid=197792 AND pool_entry=10851;
DELETE FROM pool_gameobject WHERE guid=197793 AND pool_entry=10850;
DELETE FROM pool_gameobject WHERE guid=197794 AND pool_entry=10850;
DELETE FROM pool_gameobject WHERE guid=197795 AND pool_entry=10849;
DELETE FROM pool_gameobject WHERE guid=197796 AND pool_entry=10849;
DELETE FROM pool_gameobject WHERE guid=197797 AND pool_entry=10848;
DELETE FROM pool_gameobject WHERE guid=197798 AND pool_entry=10848;
DELETE FROM pool_gameobject WHERE guid=197799 AND pool_entry=10847;
DELETE FROM pool_gameobject WHERE guid=197800 AND pool_entry=10847;
DELETE FROM pool_gameobject WHERE guid=197801 AND pool_entry=10846;
DELETE FROM pool_gameobject WHERE guid=197802 AND pool_entry=10846;
DELETE FROM pool_gameobject WHERE guid=197803 AND pool_entry=10845;
DELETE FROM pool_gameobject WHERE guid=197804 AND pool_entry=10845;
DELETE FROM pool_gameobject WHERE guid=197805 AND pool_entry=10844;
DELETE FROM pool_gameobject WHERE guid=197806 AND pool_entry=10844;
DELETE FROM pool_gameobject WHERE guid=197807 AND pool_entry=10843;
DELETE FROM pool_gameobject WHERE guid=197808 AND pool_entry=10843;
DELETE FROM pool_gameobject WHERE guid=197809 AND pool_entry=10842;
DELETE FROM pool_gameobject WHERE guid=197810 AND pool_entry=10842;
DELETE FROM pool_gameobject WHERE guid=197811 AND pool_entry=10841;
DELETE FROM pool_gameobject WHERE guid=197812 AND pool_entry=10841;
DELETE FROM pool_gameobject WHERE guid=197813 AND pool_entry=10840;
DELETE FROM pool_gameobject WHERE guid=197814 AND pool_entry=10840;
DELETE FROM pool_gameobject WHERE guid=197815 AND pool_entry=10839;
DELETE FROM pool_gameobject WHERE guid=197816 AND pool_entry=10839;
DELETE FROM pool_gameobject WHERE guid=197817 AND pool_entry=10838;
DELETE FROM pool_gameobject WHERE guid=197818 AND pool_entry=10838;
DELETE FROM pool_gameobject WHERE guid=197819 AND pool_entry=10837;
DELETE FROM pool_gameobject WHERE guid=197820 AND pool_entry=10837;
DELETE FROM pool_gameobject WHERE guid=197821 AND pool_entry=10836;
DELETE FROM pool_gameobject WHERE guid=197822 AND pool_entry=10836;
DELETE FROM pool_gameobject WHERE guid=197823 AND pool_entry=10835;
DELETE FROM pool_gameobject WHERE guid=197824 AND pool_entry=10835;
DELETE FROM pool_gameobject WHERE guid=197825 AND pool_entry=10834;
DELETE FROM pool_gameobject WHERE guid=197826 AND pool_entry=10834;
DELETE FROM pool_gameobject WHERE guid=197827 AND pool_entry=10833;
DELETE FROM pool_gameobject WHERE guid=197828 AND pool_entry=10833;
DELETE FROM pool_gameobject WHERE guid=197829 AND pool_entry=10832;
DELETE FROM pool_gameobject WHERE guid=197830 AND pool_entry=10832;
DELETE FROM pool_gameobject WHERE guid=197831 AND pool_entry=10831;
DELETE FROM pool_gameobject WHERE guid=197832 AND pool_entry=10831;
DELETE FROM pool_gameobject WHERE guid=197833 AND pool_entry=10830;
DELETE FROM pool_gameobject WHERE guid=197834 AND pool_entry=10830;
DELETE FROM pool_gameobject WHERE guid=197835 AND pool_entry=10829;
DELETE FROM pool_gameobject WHERE guid=197836 AND pool_entry=10829;
DELETE FROM pool_gameobject WHERE guid=197837 AND pool_entry=10828;
DELETE FROM pool_gameobject WHERE guid=197838 AND pool_entry=10828;
DELETE FROM pool_gameobject WHERE guid=197839 AND pool_entry=10827;
DELETE FROM pool_gameobject WHERE guid=197840 AND pool_entry=10827;
DELETE FROM pool_gameobject WHERE guid=197841 AND pool_entry=10826;
DELETE FROM pool_gameobject WHERE guid=197842 AND pool_entry=10826;
DELETE FROM pool_gameobject WHERE guid=197843 AND pool_entry=10825;
DELETE FROM pool_gameobject WHERE guid=197844 AND pool_entry=10825;
DELETE FROM pool_gameobject WHERE guid=197845 AND pool_entry=10824;
DELETE FROM pool_gameobject WHERE guid=197846 AND pool_entry=10824;
DELETE FROM pool_gameobject WHERE guid=197847 AND pool_entry=10823;
DELETE FROM pool_gameobject WHERE guid=197848 AND pool_entry=10823;
DELETE FROM pool_gameobject WHERE guid=197849 AND pool_entry=10822;
DELETE FROM pool_gameobject WHERE guid=197850 AND pool_entry=10822;
DELETE FROM pool_gameobject WHERE guid=197851 AND pool_entry=10821;
DELETE FROM pool_gameobject WHERE guid=197852 AND pool_entry=10821;
DELETE FROM pool_gameobject WHERE guid=197853 AND pool_entry=10820;
DELETE FROM pool_gameobject WHERE guid=197854 AND pool_entry=10820;
DELETE FROM pool_gameobject WHERE guid=197855 AND pool_entry=10819;
DELETE FROM pool_gameobject WHERE guid=197856 AND pool_entry=10819;
DELETE FROM pool_gameobject WHERE guid=197857 AND pool_entry=10818;
DELETE FROM pool_gameobject WHERE guid=197858 AND pool_entry=10818;
DELETE FROM pool_gameobject WHERE guid=197859 AND pool_entry=10817;
DELETE FROM pool_gameobject WHERE guid=197860 AND pool_entry=10817;
DELETE FROM pool_gameobject WHERE guid=197861 AND pool_entry=10816;
DELETE FROM pool_gameobject WHERE guid=197862 AND pool_entry=10816;
DELETE FROM pool_gameobject WHERE guid=197863 AND pool_entry=10815;
DELETE FROM pool_gameobject WHERE guid=197864 AND pool_entry=10815;
DELETE FROM pool_gameobject WHERE guid=197865 AND pool_entry=10814;
DELETE FROM pool_gameobject WHERE guid=197866 AND pool_entry=10814;
DELETE FROM pool_gameobject WHERE guid=197867 AND pool_entry=10813;
DELETE FROM pool_gameobject WHERE guid=197868 AND pool_entry=10813;
DELETE FROM pool_gameobject WHERE guid=197869 AND pool_entry=10812;
DELETE FROM pool_gameobject WHERE guid=197870 AND pool_entry=10812;
DELETE FROM pool_gameobject WHERE guid=197871 AND pool_entry=10811;
DELETE FROM pool_gameobject WHERE guid=197872 AND pool_entry=10811;
DELETE FROM pool_gameobject WHERE guid=197873 AND pool_entry=10810;
DELETE FROM pool_gameobject WHERE guid=197874 AND pool_entry=10810;
DELETE FROM pool_gameobject WHERE guid=197875 AND pool_entry=10809;
DELETE FROM pool_gameobject WHERE guid=197876 AND pool_entry=10809;
DELETE FROM pool_gameobject WHERE guid=197877 AND pool_entry=10808;
DELETE FROM pool_gameobject WHERE guid=197878 AND pool_entry=10808;
DELETE FROM pool_gameobject WHERE guid=197879 AND pool_entry=10807;
DELETE FROM pool_gameobject WHERE guid=197880 AND pool_entry=10807;
DELETE FROM pool_gameobject WHERE guid=197881 AND pool_entry=10806;
DELETE FROM pool_gameobject WHERE guid=197882 AND pool_entry=10806;
DELETE FROM pool_gameobject WHERE guid=197883 AND pool_entry=10805;
DELETE FROM pool_gameobject WHERE guid=197884 AND pool_entry=10805;
DELETE FROM pool_gameobject WHERE guid=197885 AND pool_entry=10804;
DELETE FROM pool_gameobject WHERE guid=197886 AND pool_entry=10804;
DELETE FROM pool_gameobject WHERE guid=197887 AND pool_entry=10803;
DELETE FROM pool_gameobject WHERE guid=197888 AND pool_entry=10803;
DELETE FROM pool_gameobject WHERE guid=197889 AND pool_entry=10802;
DELETE FROM pool_gameobject WHERE guid=197890 AND pool_entry=10802;
DELETE FROM pool_gameobject WHERE guid=200473 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200496 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200504 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200505 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200509 AND pool_entry=16497;
DELETE FROM pool_gameobject WHERE guid=200531 AND pool_entry=16503;
DELETE FROM pool_gameobject WHERE guid=200532 AND pool_entry=16512;
DELETE FROM pool_gameobject WHERE guid=200533 AND pool_entry=16513;
DELETE FROM pool_gameobject WHERE guid=200534 AND pool_entry=16514;
DELETE FROM pool_gameobject WHERE guid=200543 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200544 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200545 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200546 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200547 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200548 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200549 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200550 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=200552 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5300294 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300295 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300296 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300297 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300298 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300299 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300300 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300301 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300302 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300303 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300304 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300305 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300306 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300307 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300308 AND pool_entry=13052;
DELETE FROM pool_gameobject WHERE guid=5300309 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300310 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300311 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300312 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300313 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300314 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300315 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300316 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300317 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300318 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300319 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300320 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5300321 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300322 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300323 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300324 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300325 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300326 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300327 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300328 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300329 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300330 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300331 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300332 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300333 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300334 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300335 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300336 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300337 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300338 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300339 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300340 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300341 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300342 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300343 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300344 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300345 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300346 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300347 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300348 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300349 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300350 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300351 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300352 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300353 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300354 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300355 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300356 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300357 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300358 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300359 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300360 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300361 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300362 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300363 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300364 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300365 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300366 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300367 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300368 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300369 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300370 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300371 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300372 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300373 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300374 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300375 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300376 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300377 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300378 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300379 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300380 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300381 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300382 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300383 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300384 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300385 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300386 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300387 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300388 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300389 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300390 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300391 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300392 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300393 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300394 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300395 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300396 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5300397 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300398 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300399 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300400 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300401 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300402 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300403 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300404 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300405 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300406 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300407 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300408 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300409 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300410 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300411 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300412 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300413 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300414 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300415 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300416 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300417 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300418 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300419 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300420 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300421 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300422 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300423 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300424 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300425 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300426 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300427 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300428 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300429 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300430 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300431 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300432 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300433 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300434 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300435 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300436 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300437 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300438 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300439 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300440 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300441 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300442 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300443 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300444 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300445 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300446 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300447 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300448 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300449 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300450 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300451 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300452 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300453 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300454 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300455 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300456 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300457 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300458 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300459 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300460 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300461 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300462 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300463 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300464 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300465 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300466 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300467 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300468 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300469 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300470 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300471 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300472 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300473 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300474 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300475 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300476 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300477 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300478 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300479 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300480 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300481 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300482 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300483 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300484 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300485 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300486 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300487 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5300488 AND pool_entry=13055;
DELETE FROM pool_gameobject WHERE guid=5303001 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303002 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303003 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303004 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303005 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303006 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303007 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303008 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303009 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303010 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303011 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303012 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303013 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303014 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303015 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303016 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303017 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303018 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303019 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303020 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303021 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303022 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303023 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303024 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303025 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303026 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303027 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303028 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303029 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303030 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303031 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5303032 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303033 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303034 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303035 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303036 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303037 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303038 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303039 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303040 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303041 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303042 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303043 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303044 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303045 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303046 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303047 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303048 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303049 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303050 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303051 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303052 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303053 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303054 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303055 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303056 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303057 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303058 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303059 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303060 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303061 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303062 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303063 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303064 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303065 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303066 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303067 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303068 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303069 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303070 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303071 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303072 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303073 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303074 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303075 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303076 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303077 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303201 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303202 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303203 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303204 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303205 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303206 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303207 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303208 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303209 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303210 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303211 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303212 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303213 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303214 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303215 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303216 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303217 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303218 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303219 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303220 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303221 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303222 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303223 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303224 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303225 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303226 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303227 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303228 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303229 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303230 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303231 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5303232 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5303233 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303234 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303235 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303236 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303237 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303238 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5303239 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303240 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303241 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303242 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303243 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303401 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303402 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303403 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303404 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303405 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303406 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303407 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303408 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303409 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303410 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303411 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303412 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303413 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5303414 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303415 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5303501 AND pool_entry=13054;
DELETE FROM pool_gameobject WHERE guid=5303502 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5303503 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5303504 AND pool_entry=13053;
DELETE FROM pool_gameobject WHERE guid=5303601 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303602 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303603 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303604 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303605 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303606 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303607 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303608 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303609 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303610 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303611 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303612 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303613 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303614 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303615 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303616 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303617 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303618 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303619 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303620 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303621 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303622 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303623 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303624 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303625 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303626 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303627 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303628 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303629 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303630 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303631 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303632 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303633 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303634 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303635 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303636 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303637 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303638 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303639 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303640 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303641 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303642 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303643 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303701 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303702 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303703 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303704 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303705 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303706 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303707 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303708 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303709 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303710 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303711 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303712 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303713 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303714 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303715 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303716 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303717 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303718 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303719 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303720 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303721 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303722 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303723 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303724 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303725 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303726 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303727 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303728 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303729 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303730 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303731 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303732 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303733 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303734 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303735 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303736 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303737 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303738 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303739 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303740 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303741 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303742 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303743 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303744 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303745 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303746 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303747 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303748 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303749 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303750 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303751 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303752 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303753 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303754 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303801 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303802 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303803 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5303804 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303805 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303806 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303807 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303808 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303809 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303810 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303811 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303812 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303813 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303814 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303815 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303816 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303817 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303818 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303819 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303820 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303821 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303822 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303823 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303824 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303825 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303826 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303827 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303828 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303829 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303830 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303831 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303832 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303833 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303834 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303835 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303836 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303837 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303838 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303839 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303840 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303841 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303842 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303843 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303844 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303845 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303846 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303847 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303848 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303849 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303850 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303851 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303852 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303853 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303854 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303855 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303856 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303857 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303858 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303859 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303860 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303861 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303862 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303863 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303864 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303865 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303866 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303867 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303868 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303869 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303870 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303871 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303872 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303873 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303874 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303875 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303876 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303877 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303878 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303879 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303880 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303881 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303882 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303883 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303884 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303885 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303886 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303887 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303888 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303889 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303890 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303891 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303892 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303893 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303894 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303895 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303896 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303897 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303898 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303899 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303900 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303901 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303902 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303903 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303904 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303905 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303906 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303907 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303908 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303909 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303910 AND pool_entry=13043;
DELETE FROM pool_gameobject WHERE guid=5303915 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303916 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303917 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303918 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303919 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303920 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303921 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303922 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303923 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303924 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303925 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303926 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303927 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303928 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303929 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303930 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303931 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303932 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303933 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303934 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303935 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303936 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303937 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303938 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303939 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303940 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303941 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303942 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303943 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303944 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303945 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303946 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303947 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303948 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303949 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303950 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303951 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303952 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303953 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303954 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303955 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303956 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303957 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303958 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303959 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303960 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303961 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303962 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303963 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303964 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303965 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303966 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303967 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303968 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303969 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303970 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303971 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303972 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303973 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303974 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303975 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303976 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303977 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303978 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303979 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303980 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303981 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303982 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303983 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303984 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303985 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303986 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303987 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303988 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303989 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303990 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303991 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303992 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303993 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303994 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303995 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303996 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303997 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303998 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5303999 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304000 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304001 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304002 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304003 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304004 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304005 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304006 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304007 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304008 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304009 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304010 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304011 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304012 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304013 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304014 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304015 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304016 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304017 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304018 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304019 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304020 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304021 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304022 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304023 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304024 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304025 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304026 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304027 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304028 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304029 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304030 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304031 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304032 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304033 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304034 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304035 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304036 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304037 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304038 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304039 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304040 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304041 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304042 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304043 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304044 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304045 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304046 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304047 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304048 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304049 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304050 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304051 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304052 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304053 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304054 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304055 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304056 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304057 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304058 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304059 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304060 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304061 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304062 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304063 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304064 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304065 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304066 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304067 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304068 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304069 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304070 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304071 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304072 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304073 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304074 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304075 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304076 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304077 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304078 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304079 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304080 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304081 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304082 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304083 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304084 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304085 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304086 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304087 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304088 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304089 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304090 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304091 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304092 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304093 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304094 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304095 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304096 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304097 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304098 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304099 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304100 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304101 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304102 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304103 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304104 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304105 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304106 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304107 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304108 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304109 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304110 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304111 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304112 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304113 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304114 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304115 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304116 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304117 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304118 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304119 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304120 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304121 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304122 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304123 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304124 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304125 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304126 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304127 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304128 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304129 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304130 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304131 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304132 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304133 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304134 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304135 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304136 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304137 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304138 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304139 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304140 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304141 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304142 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304143 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304144 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304145 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304146 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304147 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304148 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304149 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304150 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304151 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304152 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304153 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304154 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304155 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304156 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304157 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304158 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304159 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304160 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304161 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304162 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304163 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304164 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304165 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304166 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304167 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304168 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304169 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304170 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304171 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304172 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304173 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304174 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304175 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304176 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304177 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304178 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304179 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304180 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304181 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304182 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304183 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304184 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304185 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304186 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304187 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304188 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304189 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304190 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304191 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304192 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304193 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304194 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304195 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304196 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304197 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304198 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304199 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304200 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304201 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304202 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304203 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304204 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304205 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304206 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304207 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304208 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304209 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304214 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304215 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304216 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304217 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304218 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304219 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304220 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304221 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304222 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304223 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304224 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304225 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304226 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304227 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304228 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304229 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304230 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304231 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304232 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304233 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304234 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304235 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304236 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304237 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304238 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304239 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304240 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304241 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304242 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304243 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304244 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304245 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304246 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304247 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304248 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304249 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304250 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304251 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304252 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304253 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304254 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304255 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304256 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304257 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304258 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304259 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304260 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304261 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304262 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304263 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304264 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304265 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304266 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304267 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304268 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304269 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304270 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304271 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304272 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304273 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304274 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304275 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304276 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304277 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304278 AND pool_entry=13046;
DELETE FROM pool_gameobject WHERE guid=5304281 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304282 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304283 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304284 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304285 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304286 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304287 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304288 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304289 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304290 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304291 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304292 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304293 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304294 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304295 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304296 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304297 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304298 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304299 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304300 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304301 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304302 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304303 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304304 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304305 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304306 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304307 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304308 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304309 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304310 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304311 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304312 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304313 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304314 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304315 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304316 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304317 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304318 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304319 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304320 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304321 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304322 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304323 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304324 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304325 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304326 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304327 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304328 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304329 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304330 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304331 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304332 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304333 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304334 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304335 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304336 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304337 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304338 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304339 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304340 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304341 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304342 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304343 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304344 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304345 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304346 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304347 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304348 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304349 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304350 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304351 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304352 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304353 AND pool_entry=13047;
DELETE FROM pool_gameobject WHERE guid=5304359 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304360 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304361 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304362 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304363 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304364 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304365 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304366 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304367 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304368 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304369 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304370 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304371 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304372 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304373 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304374 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304375 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304376 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304377 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304378 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304379 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304380 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304381 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304382 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304383 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304384 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304385 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304386 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304387 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304388 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304389 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304390 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304391 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304392 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304393 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304394 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304395 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304396 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304397 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304398 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304399 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304400 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304401 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304402 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304403 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304404 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304405 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304406 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304407 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304408 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304409 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304410 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304411 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304412 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304413 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304414 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304415 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304416 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304417 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304418 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304419 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304420 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304421 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304422 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304423 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304424 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304425 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304426 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304427 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304428 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304429 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304430 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304431 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304432 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304433 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304434 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304435 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304436 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304437 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304438 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304439 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304440 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304441 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304442 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304443 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304444 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304445 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304446 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304447 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304448 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304449 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304450 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304451 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304452 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304453 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304454 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304455 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304456 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304457 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304458 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304459 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304460 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304461 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304462 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304463 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304464 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304465 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304466 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304467 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304468 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304469 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304470 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304471 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304472 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304473 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304474 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304475 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304476 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304477 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304478 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304479 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304480 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304481 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304482 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304483 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304484 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304485 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304486 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304487 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304488 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304489 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304490 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304491 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304492 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304493 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304494 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304495 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304496 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304497 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304498 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304499 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304500 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304501 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304502 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304503 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304504 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304505 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304506 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304507 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304508 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304509 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304510 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304511 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304512 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304513 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304514 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304515 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304516 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304517 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304518 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304519 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304520 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304521 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304522 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304523 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304524 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304525 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304526 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304527 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304528 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304529 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304530 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304531 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304532 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304533 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304534 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304535 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304536 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304537 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304538 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304539 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304540 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304541 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304542 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304543 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304544 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304545 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304546 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304547 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304548 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304549 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304550 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304551 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304552 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304553 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304554 AND pool_entry=13048;
DELETE FROM pool_gameobject WHERE guid=5304567 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304568 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304569 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304570 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304571 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304572 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304573 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304574 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304575 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304576 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304577 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304578 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304579 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304580 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304581 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304582 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304583 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304584 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304585 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304586 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304587 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304588 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304589 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304590 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304591 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304592 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304593 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304594 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304595 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304596 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304597 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304598 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304599 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304600 AND pool_entry=13044;
DELETE FROM pool_gameobject WHERE guid=5304601 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304602 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304603 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304604 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304605 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304606 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304607 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304608 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304609 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304610 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304611 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304612 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304613 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304614 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304615 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304616 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304617 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304618 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304619 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304620 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304621 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304622 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304623 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304624 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304625 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304626 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304627 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304628 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304629 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304630 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304631 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304632 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304633 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304634 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304635 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304636 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304637 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304638 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304639 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304640 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304641 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304642 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304643 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304644 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304645 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304646 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304647 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304648 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304649 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304650 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304651 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304652 AND pool_entry=13045;
DELETE FROM pool_gameobject WHERE guid=5304653 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304654 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304655 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304656 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304657 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304658 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304659 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304660 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304661 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304662 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304663 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304664 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304665 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304666 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304667 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304668 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304669 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304670 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304671 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304672 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304673 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304674 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304675 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304676 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304677 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304678 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304679 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304680 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304681 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304682 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304683 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304684 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304685 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304686 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304687 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304688 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304689 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304690 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304691 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304692 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304693 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304694 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304695 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304696 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304697 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304698 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304699 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304700 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304701 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304702 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304703 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304704 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304705 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304706 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304707 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304708 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304709 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304710 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304711 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304712 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304713 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304714 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304715 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304716 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304717 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304718 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304719 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304720 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304721 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304722 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304723 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304724 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304725 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304726 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304727 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304728 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304729 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304730 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304731 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304732 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304733 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304734 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304735 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304736 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304737 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304738 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304739 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304740 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304741 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304742 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304743 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304744 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304745 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304746 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304747 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304748 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304749 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304750 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304751 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304752 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304753 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304754 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304755 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304756 AND pool_entry=13049;
DELETE FROM pool_gameobject WHERE guid=5304757 AND pool_entry=13049;

SET @SGGUID := 21300;
SET @GGUID := 180000;

INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181279,530,1, 4811.166015625, 2713.62158203125, 86.409698486328125, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+1,181279,530,1, 2706.271484375, 3521.640625, 139.1355438232421875, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+2,181279,530,1, 3061.61279296875, 1927.5125732421875, 144.578155517578125, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+3,181279,530,1, 2974.984130859375, 3269.814697265625, 138.1588592529296875, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+4,181279,530,1, 3286.94091796875, 2298.7080078125, 107.737579345703125, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207,600,600),
(@GGUID+5,181279,530,1, 3857.930908203125, 1472.6634521484375, -136.223220825195312, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+6,181279,530,1, 4142.9833984375, 4177.83837890625, 133.86053466796875, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419,600,600),
(@GGUID+7,181279,530,1, 2883.977294921875, 3787.177978515625, 166.005950927734375, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+8,181279,530,1, 3260.713623046875, 2702.0322265625, 150.000732421875, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+9,181279,530,1, 3974.75732421875, 2413.001220703125, 111.49713134765625, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+10,181279,530,1, 4160.79052734375, 2214.91943359375, 170.0277099609375, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+11,181279,530,1, 3871.716064453125, 1893.9407958984375, 255.4821319580078125, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+12,181279,530,1, 3419.56982421875, 2652.581298828125, 156.246856689453125, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+13,181279,530,1, 2447.775634765625, 2261.4580078125, 125.2113418579101562, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+14,181279,530,1, 4039.541748046875, 2293.890380859375, 112.9884414672851562, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+15,181279,530,1, 3052.737548828125, 2840.943359375, 101.0764312744140625, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631,600,600),
(@GGUID+16,181279,530,1, 3902.502197265625, 4084.73388671875, 189.979278564453125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+17,181279,530,1, 2891.669189453125, 2682.74267578125, 111.8147201538085937, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267,600,600),
(@GGUID+18,181279,530,1, 4001.63330078125, 2237.245849609375, 163.2343292236328125, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+19,181279,530,1, 3786.63623046875, 1981.4791259765625, 257.997711181640625, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+20,181279,530,1, 2520.221923828125, 2760.7177734375, 132.1604156494140625, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+21,181279,530,1, 3350.15576171875, 2317.671875, 89.060333251953125, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+22,181279,530,1, 2495.539794921875, 2828.559814453125, 137.7920074462890625, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+23,181279,530,1, 4875.0849609375, 3286.0859375, 125.695068359375, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+24,181279,530,1, 3792.85205078125, 2459.94580078125, 116.7288436889648437, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938,600,600),
(@GGUID+25,181279,530,1, 3249.335205078125, 1944.1673583984375, 132.5124664306640625, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562,600,600),
(@GGUID+26,181279,530,1, 3684.01220703125, 1754.306640625, 127.2845611572265625, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+27,181279,530,1, 3920.3359375, 1788.1595458984375, 229.466278076171875, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+28,181279,530,1, 4370.9072265625, 3693.322021484375, 101.8363723754882812, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046,600,600),
(@GGUID+29,181279,530,1, 3147.27001953125, 3310.231689453125, 111.6336669921875, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+30,181279,530,1, 4322.3037109375, 2022.2496337890625, 121.2272415161132812, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+31,181279,530,1, 4494.89111328125, 3571.03515625, 130.6244659423828125, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+32,181279,530,1, 3927.2548828125, 2180.585205078125, 235.2738189697265625, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+33,181279,530,1, 4089.251220703125, 2335.08984375, 104.2293777465820312, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+34,181279,530,1, 3491.44677734375, 3249.35546875, 102.822906494140625, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+35,181279,530,1, 4310.57470703125, 1853.4583740234375, 123.6290817260742187, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208,600,600),
(@GGUID+36,181279,530,1, 2226.704345703125, 2806.787109375, 124.4149169921875, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+37,181279,530,1, 4512.41845703125, 2764.537109375, 144.4443359375, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631,600,600),
(@GGUID+38,181279,530,1, 4817.30322265625, 2388.411865234375, 119.5482864379882812, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+39,181279,530,1, 4714.10400390625, 2529.324462890625, 235.4310760498046875, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464,600,600),
(@GGUID+40,181279,530,1, 4551.00439453125, 2297.859130859375, 141.3218994140625, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775,600,600),
(@GGUID+41,181279,530,1, 3707.197509765625, 2895.4462890625, 118.56494140625, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+42,181279,530,1, 4125.310546875, 2708.563720703125, 105.4513931274414062, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046,600,600),
(@GGUID+43,181279,530,1, 4993.60302734375, 2758.29150390625, 49.1405181884765625, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+44,181279,530,1, 4856.01123046875, 3117.192626953125, 114.8636093139648437, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+45,181279,530,1, 4278.52197265625, 3574.561767578125, 138.1497039794921875, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+46,181279,530,1, 2556.839111328125, 2513.50048828125, 118.2544021606445312, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+47,181279,530,1, 4671.66455078125, 2401.60546875, 191.5590667724609375, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+49,181279,530,1, 4162.8486328125, 3943.63232421875, 125.606231689453125, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+50,181279,530,1, 4539.29541015625, 2676.243408203125, 176.439666748046875, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+51,181279,530,1, 3382.75732421875, 3561.884521484375, 154.122955322265625, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+52,181279,530,1, 4282.953125, 2381.70166015625, 114.446807861328125, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+53,181279,530,1, 3447.958251953125, 3839.975341796875, 144.558258056640625, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+54,181279,530,1, 3512.233642578125, 4053.594970703125, 122.5311813354492187, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+55,181279,530,1, 2248.255126953125, 2138.871337890625, 76.24463653564453125, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927,600,600),
(@GGUID+56,181279,530,1, 2417.604736328125, 2139.08251953125, 87.7451019287109375, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+57,181279,530,1, 3703.017333984375, 2224.2734375, 124.2976531982421875, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+58,181279,530,1, 2616.5107421875, 2441.819580078125, 104.4041519165039062, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163,600,600),
(@GGUID+59,181279,530,1, 2768.898681640625, 4327.8818359375, 142.82904052734375, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+60,181279,530,1, 2769.930419921875, 3939.948486328125, 142.0177764892578125, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+61,181279,530,1, 2687.351806640625, 3722.974365234375, 143.993896484375, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+62,181279,530,1, 4112.001953125, 1685.447021484375, 132.023681640625, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+63,181279,530,1, 4040.145751953125, 2061.00830078125, 253.7635955810546875, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+64,181279,530,1, 4039.278564453125, 4150.33203125, 193.0194854736328125, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+65,181279,530,1, 4148.7666015625, 1399.9029541015625, -121.048103332519531, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+66,181279,530,1, 2388.816650390625, 2907.36572265625, 134.7257537841796875, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+67,181279,530,1, 3950.200927734375, 1391.156005859375, -128.382522583007812, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+68,181279,530,1, 3251.770263671875, 2609.66796875, 137.5044403076171875, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+69,181279,530,1, 3095.778564453125, 4055.241455078125, 145.8899688720703125, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724,600,600),
(@GGUID+70,181279,530,1, 3621.2578125, 2114.162841796875, 105.9004898071289062, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+71,181279,530,1, 3212.482177734375, 1749.4205322265625, 129.513336181640625, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+72,181279,530,1, 3199.589599609375, 1740.2955322265625, 132.0981903076171875, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+73,181279,530,1, 3316.758544921875, 4046.619384765625, 156.2154541015625, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+74,181279,530,1, 2998.815673828125, 4255.34619140625, 161.2658538818359375, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+75,181279,530,1, 2642.231201171875, 2606.782470703125, 117.5267105102539062, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+76,181279,530,1, 3329.11474609375, 3122.40771484375, 118.8492813110351562, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+77,181279,530,1, 3610.475830078125, 2737.966064453125, 147.735504150390625, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+78,181279,530,1, 2506.9765625, 3839.198486328125, 130.676483154296875, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+79,181279,530,1, 2584.00244140625, 3242.642578125, 117.9637069702148437, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046,600,600),
(@GGUID+80,181279,530,1, 2530.759521484375, 3414.5625, 131.9201202392578125, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+81,181279,530,1, 3234.73828125, 3632.079345703125, 126.3343963623046875, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+82,181279,530,1, 2156.29931640625, 2199.733642578125, 70.55387115478515625, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+83,181279,530,1, 2974.940673828125, 2310.0009765625, 161.5968170166015625, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556,600,600),
(@GGUID+84,181279,530,1, 3815.71435546875, 4206.91796875, 113.062713623046875, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+85,181279,530,1, 3208.755126953125, 2908.86083984375, 129.1244354248046875, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+86,181279,530,1, 3846.619873046875, 3800.1875, 113.8350677490234375, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+87,181279,530,1, 2248.792724609375, 2634.990966796875, 109.0382766723632812, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341,600,600),
(@GGUID+88,181279,530,1, 2941.3671875, 4403.07177734375, 120.2035598754882812, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+89,181279,530,1, 2163.157470703125, 2375.28564453125, 90.34159088134765625, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+90,181279,530,1, 2842.1416015625, 3050.353271484375, 127.2694168090820312, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+91,181279,530,1, 3599.14404296875, 3577.343017578125, 124.4829330444335937, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+92,181279,530,1, 3584.32177734375, 1986.025634765625, 102.0190277099609375, 3.001946926116943359, 0, 0, 0.997563362121582031, 0.069766148924827575,600,600),
(@GGUID+93,181279,530,1, 3754.118408203125, 1632.69775390625, 133.8795013427734375, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+94,181279,530,1, 3182.844970703125, 3950.5, 168.320343017578125, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755,600,600),
(@GGUID+95,181279,530,1, 2390.50830078125, 2577.472900390625, 136.8140869140625, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+96,181279,530,1, 3335.46630859375, 3939.411376953125, 187.209716796875, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+97,181279,530,1, 2590.96533203125, 4350.2685546875, 129.9261016845703125, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+98,181279,530,1, 2751.376220703125, 4152.16357421875, 185.4741363525390625, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+99,181279,530,1, 2776.69140625, 2918.5439453125, 119.6091079711914062, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+100,181279,530,1, 2505.522216796875, 2062.018798828125, 91.54788970947265625, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+101,181279,530,1, 3139.221435546875, 3459.40673828125, 105.956756591796875, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+102,181279,530,1, 3547.378173828125, 3731.825927734375, 128.2548828125, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+103,181279,530,1, 4098.0810546875, 3934.16748046875, 189.65325927734375, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+104,181279,530,1, 3614.216064453125, 2342.138671875, 87.36283111572265625, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+105,181279,530,1, 4719.5791015625, 3493.477294921875, 124.9917831420898437, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376,600,600),
(@GGUID+106,181279,530,1, 4043.4697265625, 1474.7664794921875, -121.190689086914062, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582,600,600),
(@GGUID+107,181279,530,1, 3940.756103515625, 1648.0797119140625, 126.261016845703125, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+108,181279,530,1, 4718.49658203125, 2982.9580078125, 126.693206787109375, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+109,181279,530,1, 4449.0615234375, 2492.17578125, 95.309478759765625, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+110,181279,530,1, 3996.1728515625, 1894.3446044921875, 247.220428466796875, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+111,181279,530,1, 4063.713134765625, 3461.892333984375, 147.6229095458984375, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+112,181279,530,1, 3877.009521484375, 3341.063720703125, 118.4510726928710937, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+113,181279,530,1, 3864.282470703125, 2092.675048828125, 255.2354278564453125, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+114,181279,530,1, 4039.782470703125, 3747.537841796875, 121.48834228515625, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664,600,600),
(@GGUID+115,181279,530,1, 4837.5224609375, 2900.811279296875, 145.108306884765625, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+116,181279,530,1, 2600.42041015625, 4118.20849609375, 149.7636566162109375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+117,181279,530,1, 3244.595458984375, 2112.574462890625, 131.1997222900390625, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+118,181279,530,1, 2534.965576171875, 2129.954833984375, 99.14505767822265625, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697,600,600),
(@GGUID+119,181279,530,1, 3092.26416015625, 2185.035400390625, 149.221038818359375, -0.92502385377883911, 0, 0, -0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+120,181279,530,1, 2982.896484375, 3124.998291015625, 121.0767822265625, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267,600,600),
(@GGUID+121,181279,530,1, 2965.575927734375, 2544.651123046875, 125.390411376953125, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600);

DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID+13 AND @SGGUID+40;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+13, 'Netherbloom - Kirinvar', 1, 1, 0, 0),
(@SGGUID+14, 'Netherbloom - Manaforge Coruu', 1, 1, 0, 0),
(@SGGUID+15, 'Netherbloom - Cowbell', 1, 1, 0, 0),
(@SGGUID+16, 'Netherbloom - Sunfury Hold', 1, 1, 0, 0),
(@SGGUID+17, 'Netherbloom - Arklon Ruins', 1, 1, 0, 0),
(@SGGUID+18, 'Netherbloom - Area 52 East', 1, 1, 0, 0),
(@SGGUID+19, 'Netherbloom - Manaforge Bnaar', 1, 1, 0, 0),
(@SGGUID+20, 'Netherbloom - Ruins of Enkaat', 1, 1, 0, 0),
(@SGGUID+21, 'Netherbloom - Entrance', 1, 1, 0, 0),
(@SGGUID+22, 'Netherbloom - Manaforge Ara West', 1, 1, 0, 0),
(@SGGUID+23, 'Netherbloom - Manaforge Ara East', 1, 1, 0, 0),
(@SGGUID+24, 'Netherbloom - Stormspire West', 1, 1, 0, 0),
(@SGGUID+25, 'Netherbloom - Forge Bases', 1, 1, 0, 0),
(@SGGUID+26, 'Netherbloom - Crystal Formation', 1, 1, 0, 0),
(@SGGUID+27, 'Netherbloom - Ruins of Farahlon North', 1, 1, 0, 0),
(@SGGUID+28, 'Netherbloom - Ruins of Farahlon South', 1, 1, 0, 0),
(@SGGUID+29, 'Netherbloom - Eco-Dome Midrealm', 1, 1, 0, 0),
(@SGGUID+30, 'Netherbloom - Manaforge Duro', 1, 1, 0, 0),
(@SGGUID+31, 'Netherbloom - Manaforge Duro North', 1, 1, 0, 0),
(@SGGUID+32, 'Netherbloom - Manaforge Duro West', 1, 1, 0, 0),
(@SGGUID+33, 'Netherbloom - The Scrap Field', 1, 1, 0, 0),
(@SGGUID+34, 'Netherbloom - Celestial Ridge East', 1, 1, 0, 0),
(@SGGUID+35, 'Netherbloom - Celestial Ridge West', 1, 1, 0, 0),
(@SGGUID+36, 'Netherbloom - Ethereum Staging Grounds', 1, 1, 0, 0),
(@SGGUID+37, 'Netherbloom - Manaforge Ultris East', 1, 1, 0, 0),
(@SGGUID+38, 'Netherbloom - Manaforge Ultris West', 1, 1, 0, 0),
(@SGGUID+39, 'Netherbloom - Manaforge Ultris South', 1, 1, 0, 0),
(@SGGUID+40, 'Netherbloom - Manaforge Ultris North', 1, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+13 AND @SGGUID+40;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- Netherbloom - Kirinvar
(@SGGUID+13, @GGUID+55, -1),
(@SGGUID+13, @GGUID+82, -1),
(@SGGUID+13, @GGUID+89, -1),
-- Netherbloom - Manaforge Coruu
(@SGGUID+14, @GGUID+20, -1),
(@SGGUID+14, @GGUID+22, -1),
(@SGGUID+14, @GGUID+36, -1),
(@SGGUID+14, @GGUID+66, -1),
(@SGGUID+14, @GGUID+87, -1),
-- Netherbloom - Cowbell
(@SGGUID+15, @GGUID+13, -1),
(@SGGUID+15, @GGUID+56, -1),
(@SGGUID+15, @GGUID+100, -1),
(@SGGUID+15, @GGUID+118, -1),
-- Netherbloom - Sunfury Hold
(@SGGUID+16, @GGUID+46, -1),
(@SGGUID+16, @GGUID+58, -1),
(@SGGUID+16, @GGUID+75, -1),
(@SGGUID+16, @GGUID+95, -1),
-- Netherbloom - Arklon Ruins
(@SGGUID+17, @GGUID+1, -1),
(@SGGUID+17, @GGUID+7, -1),
(@SGGUID+17, @GGUID+61, -1),
(@SGGUID+17, @GGUID+78, -1),
(@SGGUID+17, @GGUID+79, -1),
(@SGGUID+17, @GGUID+80, -1),
-- Area 52 East
(@SGGUID+18, @GGUID+3, -1),
(@SGGUID+18, @GGUID+29, -1),
(@SGGUID+18, @GGUID+90, -1),
(@SGGUID+18, @GGUID+99, -1),
(@SGGUID+18, @GGUID+101, -1),
(@SGGUID+18, @GGUID+120, -1),
-- Manaforge Bnaar
(@SGGUID+19, @GGUID+59, -1),
(@SGGUID+19, @GGUID+60, -1),
(@SGGUID+19, @GGUID+74, -1),
(@SGGUID+19, @GGUID+88, -1),
(@SGGUID+19, @GGUID+97, -1),
(@SGGUID+19, @GGUID+98, -1),
(@SGGUID+19, @GGUID+116, -1),
-- Ruins of Enkaat
(@SGGUID+20, @GGUID+51, -1),
(@SGGUID+20, @GGUID+53, -1),
(@SGGUID+20, @GGUID+81, -1),
(@SGGUID+20, @GGUID+91, -1),
(@SGGUID+20, @GGUID+102, -1),
-- Entrance
(@SGGUID+21, @GGUID+54, -1),
(@SGGUID+21, @GGUID+69, -1),
(@SGGUID+21, @GGUID+73, -1),
(@SGGUID+21, @GGUID+94, -1),
(@SGGUID+21, @GGUID+96, -1),
-- Manaforge Ara West
(@SGGUID+22, @GGUID+6, -1),
(@SGGUID+22, @GGUID+16, -1),
(@SGGUID+22, @GGUID+64, -1),
(@SGGUID+22, @GGUID+84, -1),
-- Manaforge Ara East
(@SGGUID+23, @GGUID+49, -1),
(@SGGUID+23, @GGUID+86, -1),
(@SGGUID+23, @GGUID+103, -1),
(@SGGUID+23, @GGUID+114, -1),
-- Stormspire West
(@SGGUID+24, @GGUID+28, -1),
(@SGGUID+24, @GGUID+45, -1),
(@SGGUID+24, @GGUID+111, -1),
(@SGGUID+24, @GGUID+112, -1),
-- Forge Bases
(@SGGUID+25, @GGUID+23, -1),
(@SGGUID+25, @GGUID+31, -1),
(@SGGUID+25, @GGUID+44, -1),
(@SGGUID+25, @GGUID+105, -1),
-- Crystal Formation
(@SGGUID+26, @GGUID+0, -1),
(@SGGUID+26, @GGUID+43, -1),
(@SGGUID+26, @GGUID+108, -1),
(@SGGUID+26, @GGUID+115, -1),
-- Ruins of Farahlon North
(@SGGUID+27, @GGUID+38, -1),
(@SGGUID+27, @GGUID+39, -1),
(@SGGUID+27, @GGUID+40, -1),
(@SGGUID+27, @GGUID+47, -1),
-- Ruins of Farahlon South
(@SGGUID+28, @GGUID+37, -1),
(@SGGUID+28, @GGUID+42, -1),
(@SGGUID+28, @GGUID+50, -1),
(@SGGUID+28, @GGUID+109, -1),
-- Eco-Dome Midrealm
(@SGGUID+29, @GGUID+34, -1),
(@SGGUID+29, @GGUID+41, -1),
(@SGGUID+29, @GGUID+76, -1),
(@SGGUID+29, @GGUID+77, -1),
-- Manaforge Duro
(@SGGUID+30, @GGUID+2, -1),
(@SGGUID+30, @GGUID+83, -1),
(@SGGUID+30, @GGUID+119, -1),
(@SGGUID+30, @GGUID+121, -1),
-- Manaforge Duro North
(@SGGUID+31, @GGUID+4, -1),
(@SGGUID+31, @GGUID+21, -1),
(@SGGUID+31, @GGUID+25, -1),
(@SGGUID+31, @GGUID+71, -1),
(@SGGUID+31, @GGUID+72, -1),
(@SGGUID+31, @GGUID+117, -1),
-- Manaforge Duro West
(@SGGUID+32, @GGUID+15, -1),
(@SGGUID+32, @GGUID+17, -1),
(@SGGUID+32, @GGUID+85, -1),
-- The Scrap Field
(@SGGUID+33, @GGUID+8, -1),
(@SGGUID+33, @GGUID+12, -1),
(@SGGUID+33, @GGUID+68, -1),
-- Celestial Ridge East
(@SGGUID+34, @GGUID+5, -1),
(@SGGUID+34, @GGUID+65, -1),
(@SGGUID+34, @GGUID+67, -1),
(@SGGUID+34, @GGUID+106, -1),
-- Celestial Ridge West
(@SGGUID+35, @GGUID+26, -1),
(@SGGUID+35, @GGUID+62, -1),
(@SGGUID+35, @GGUID+93, -1),
(@SGGUID+35, @GGUID+107, -1),
-- Ethereum Staging Grounds
(@SGGUID+36, @GGUID+9, -1),
(@SGGUID+36, @GGUID+14, -1),
(@SGGUID+36, @GGUID+24, -1),
(@SGGUID+36, @GGUID+33, -1),
-- Manaforge Ultris East
(@SGGUID+37, @GGUID+11, -1),
(@SGGUID+37, @GGUID+19, -1),
(@SGGUID+37, @GGUID+27, -1),
(@SGGUID+37, @GGUID+110, -1),
-- Manaforge Ultris West
(@SGGUID+38, @GGUID+18, -1),
(@SGGUID+38, @GGUID+32, -1),
(@SGGUID+38, @GGUID+63, -1),
(@SGGUID+38, @GGUID+113, -1),
-- Manaforge Ultris South
(@SGGUID+39, @GGUID+57, -1),
(@SGGUID+39, @GGUID+70, -1),
(@SGGUID+39, @GGUID+92, -1),
(@SGGUID+39, @GGUID+104, -1),
-- Manaforge Ultris North
(@SGGUID+40, @GGUID+10, -1),
(@SGGUID+40, @GGUID+30, -1),
(@SGGUID+40, @GGUID+35, -1),
(@SGGUID+40, @GGUID+52, -1);

SET @GGUID := 180200;

INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181280,530,1, -4600.23681640625, 1192.65869140625, 1.149042010307312011, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+1,181280,530,1, 1765.9810791015625, 5326.78466796875, 154.6799774169921875, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+2,181280,530,1, -4045.61328125, 1045.90673828125, 23.43315887451171875, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583,600,600),
(@GGUID+3,181280,530,1, -4171.55810546875, 339.726898193359375, 119.834686279296875, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+4,181280,530,1, -2910.42431640625, 1422.99169921875, 11.979583740234375, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+5,181280,530,1, -2786.460205078125, 3153.892578125, 7.074460983276367187, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562,600,600),
(@GGUID+6,181280,530,1, -3615.994873046875, 252.218963623046875, 44.4256134033203125, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+7,181280,530,1, -4424.11572265625, 1875.23486328125, 158.5358428955078125, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+8,181280,530,1, -3442.10546875, 291.049041748046875, 90.98535919189453125, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+9,181280,530,1, -3217.662841796875, 3014.831298828125, 136.7166595458984375, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+10,181280,530,1, -3780.174072265625, 1698.99755859375, 51.01482772827148437, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+11,181280,530,1, -3007.775146484375, 532.13995361328125, -5.32841014862060546, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046,600,600),
(@GGUID+12,181280,530,1, -3416.70263671875, 1206.533447265625, 61.89160919189453125, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583,600,600),
(@GGUID+13,181280,530,1, 784.76153564453125, 2081.112548828125, 270.48590087890625, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+14,181280,530,1, -4479.5625, 1239.8914794921875, 52.76292800903320312, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+15,181280,530,1, -3123.647705078125, 2118.041748046875, 81.790496826171875, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+16,181280,530,1, -3259.481689453125, 1174.7357177734375, 61.57033920288085937, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+17,181280,530,1, -3172.28955078125, 1305.1478271484375, 21.73029518127441406, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876,600,600),
(@GGUID+18,181280,530,1, -4602.2978515625, 1846.0281982421875, 156.16876220703125, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946,600,600),
(@GGUID+19,181280,530,1, 882.4954833984375, 2263.362060546875, 297.829254150390625, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+20,181280,530,1, -3315.59765625, 948.28753662109375, 33.76355361938476562, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+21,181280,530,1, -4126.15380859375, 2576.377197265625, 146.256500244140625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+22,181280,530,1, -3581.83935546875, 1142.7467041015625, 46.24874496459960937, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101,600,600),
(@GGUID+23,181280,530,1, -4504.45166015625, 1284.185791015625, 122.7878189086914062, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+24,181280,530,1, -4499.25, 1603.661376953125, 167.360992431640625, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+25,181280,530,1, -3223.04345703125, 1040.26806640625, 63.15298080444335937, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+26,181280,530,1, 802.9300537109375, 2539.74169921875, 295.20819091796875, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+27,181280,530,1, -4334.29638671875, 1840.0543212890625, 139.395965576171875, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+28,181280,530,1, -2811.870361328125, 1035.4307861328125, 4.934731006622314453, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+29,181280,530,1, -3030.64404296875, 2853.28564453125, 79.422149658203125, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787,600,600),
(@GGUID+30,181280,530,1, -3876.77685546875, 2728.761474609375, 141.7445068359375, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582,600,600),
(@GGUID+31,181280,530,1, -2778.63623046875, 832.2890625, 21.11012458801269531, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+32,181280,530,1, -3922.204345703125, 2484.78515625, 105.0054092407226562, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664,600,600),
(@GGUID+33,181280,530,1, -3252.588623046875, 1865.4146728515625, 121.5315475463867187, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+34,181280,530,1, -2746.997314453125, 595.05859375, -32.7377662658691406, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111,600,600),
(@GGUID+35,181280,530,1, -3587.975830078125, 2146.665283203125, 75.2674102783203125, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+36,181280,530,1, -4132.91650390625, 1940.3021240234375, 66.20096588134765625, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208,600,600),
(@GGUID+37,181280,530,1, -2516.791015625, 1337.295166015625, 75.435882568359375, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+38,181280,530,1, -2765.3994140625, 1613.3084716796875, 13.54451179504394531, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+39,181280,530,1, -4227.6806640625, 1596.513427734375, 115.0230178833007812, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+40,181280,530,1, -2389.111083984375, 1650.610107421875, -33.43414306640625, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+41,181280,530,1, -2502.23876953125, 1721.1068115234375, 30.28646469116210937, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207,600,600),
(@GGUID+42,181280,530,1, -3027.050048828125, 1066.705322265625, 12.32614040374755859, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775,600,600),
(@GGUID+43,181280,530,1, -3027.221923828125, 1176.30859375, 8.323737144470214843, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+44,181280,530,1, -2926.866943359375, 1287.22509765625, 8.511879920959472656, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646,600,600),
(@GGUID+45,181280,530,1, -4604.328125, 1686.5576171875, 175.26708984375, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+46,181280,530,1, -3141.19873046875, 1823.8092041015625, 143.1920928955078125, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+47,181280,530,1, -3758.3056640625, 1926.1727294921875, 98.58827972412109375, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+48,181280,530,1, -3103.480712890625, 1378.7762451171875, 11.48484516143798828, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+49,181280,530,1, -3527.2783203125, 850.218994140625, -0.05761399865150451, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+50,181280,530,1, -3933.849853515625, 2546.823486328125, 120.0405807495117187, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+51,181280,530,1, -3189.6103515625, 1482.81787109375, 56.06681060791015625, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189,600,600),
(@GGUID+52,181280,530,1, -3611.71044921875, 2651.1416015625, 74.59041595458984375, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+53,181280,530,1, -4658.3447265625, 1095.5045166015625, 0.052046000957489013, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+54,181280,530,1, -3340.974853515625, 2607.439453125, 59.87080764770507812, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166,600,600),
(@GGUID+55,181280,530,1, -3270.5634765625, 1318.521240234375, 69.139129638671875, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+56,181280,530,1, 1313.70751953125, 7184.943359375, 375.11175537109375, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+57,181280,530,1, 2954.8916015625, 6806.13232421875, 367.086822509765625, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+58,181280,530,1, -3720.865478515625, 546.431884765625, 48.11528396606445312, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.98325502872467041,600,600),
(@GGUID+59,181280,530,1, -4380.52099609375, 1399.38330078125, 143.5814361572265625, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+60,181280,530,1, -3619.56103515625, 485.440765380859375, 22.98206138610839843, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+61,181280,530,1, -4442.74072265625, 859.5186767578125, 5.956177234649658203, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+62,181280,530,1, -3247.691162109375, 2794.912353515625, 118.1303024291992187, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+63,181280,530,1, 1665.1636962890625, 7387.728515625, 370.489349365234375, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+64,181280,530,1, -4113.85302734375, 1890.021240234375, 75.56055450439453125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+65,181280,530,1, -4188.88720703125, 1314.5758056640625, 56.03765487670898437, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+66,181280,530,1, -4110.96044921875, 1393.6187744140625, 83.07137298583984375, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+67,181280,530,1, -3444.255126953125, 485.416656494140625, 90.9733428955078125, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+68,181280,530,1, -3841.83544921875, 1624.3514404296875, 83.4670562744140625, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+69,181280,530,1, -3387.4287109375, 578.86761474609375, 56.69684219360351562, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+70,181280,530,1, -3217.093017578125, 2042.23046875, 86.7233428955078125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173,600,600),
(@GGUID+71,181280,530,1, -3511.85693359375, 395.84417724609375, 31.78208160400390625, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+72,181280,530,1, -3115.4375, 2721.479248046875, 63.83409881591796875, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+73,181280,530,1, -3392.668212890625, 1052.5250244140625, 44.62392425537109375, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+74,181280,530,1, 2929.41748046875, 7099.6171875, 369.206787109375, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562,600,600),
(@GGUID+75,181280,530,1, -3423.040771484375, 1675.7591552734375, 106.5212936401367187, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046,600,600),
(@GGUID+76,181280,530,1, -3245.464111328125, 498.71136474609375, 91.15386962890625, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+77,181280,530,1, -3346.6025390625, 1898.1002197265625, 90.981109619140625, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+78,181280,530,1, -3513.99755859375, 252.8444061279296875, 46.2292633056640625, 0.925023794174194335, 0, 0, 0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+79,181280,530,1, -3691.329833984375, 255.7272186279296875, 90.98899078369140625, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+80,181280,530,1, -4073.47705078125, 463.0001220703125, 30.41454124450683593, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+81,181280,530,1, -3621.647705078125, 876.05706787109375, 36.05394363403320312, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+82,181280,530,1, -2563.935546875, 1168.9617919921875, 76.7551727294921875, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+83,181280,530,1, -2680.030517578125, 1486.9359130859375, 24.089202880859375, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023,600,600),
(@GGUID+84,181280,530,1, -4543.08251953125, 2227.56298828125, 21.67206954956054687, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+85,181280,530,1, -3033.972412109375, 576.36590576171875, -5.01637887954711914, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+86,181280,530,1, -4201.77392578125, 638.2052001953125, 23.5442047119140625, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+87,181280,530,1, -4420.55615234375, 1752.8492431640625, 157.602569580078125, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+88,181280,530,1, -3907.48779296875, 499.893218994140625, 91.2511444091796875, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+89,181280,530,1, -3216.133056640625, 2509.900634765625, 61.12456130981445312, 5.288348197937011718, 0, 0, -0.4771585464477539, 0.878817260265350341,600,600),
(@GGUID+90,181280,530,1, -3444.102294921875, 3015.94287109375, 173.530029296875, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+91,181280,530,1, -3453.2900390625, 2382.107666015625, 62.93177032470703125, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+92,181280,530,1, -3838.575927734375, 2678.231689453125, 102.839141845703125, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+93,181280,530,1, -3068.447021484375, 660.193359375, -11.6506242752075195, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+94,181280,530,1, -3945.271240234375, 1620.7489013671875, 83.34917449951171875, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+95,181280,530,1, -3066.51513671875, 3138.583251953125, 64.2794036865234375, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+96,181280,530,1, -4225.5166015625, 1813.69677734375, 127.3789825439453125, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163,600,600),
(@GGUID+97,181280,530,1, -4184.23193359375, 1863.2508544921875, 106.57501220703125, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+98,181280,530,1, 2207.862548828125, 5393.08251953125, 148.704925537109375, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+99,181280,530,1, -4094.6259765625, 825.443359375, 5.358614921569824218, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+100,181280,530,1, -4009.462646484375, 813.7139892578125, 3.281025886535644531, -2.61799383163452148, 0, 0, 0.965925812721252441, -0.25881904363632202,600,600),
(@GGUID+101,181280,530,1, -2619.1376953125, 1351.603759765625, 85.52315521240234375, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106,600,600),
(@GGUID+102,181280,530,1, -4246.9892578125, 1461.033935546875, 134.6291961669921875, -0.40142488479614257, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+103,181280,530,1, -2741.460205078125, 1339.1146240234375, 88.51401519775390625, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+104,181280,530,1, -3608.108642578125, 1010.74847412109375, 51.1680450439453125, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+105,181280,530,1, -3263.423828125, 2125.2822265625, 84.20284271240234375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+106,181280,530,1, -3198.94091796875, 2370.373779296875, 62.65187454223632812, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+107,181280,530,1, -3682.6171875, 488.861328125, 90.9407806396484375, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+108,181280,530,1, -3698.619384765625, 2589.319580078125, 93.3829498291015625, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+109,181280,530,1, -3270.69873046875, 1644.8455810546875, 76.465057373046875, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+110,181280,530,1, -3431.234375, 668.20440673828125, 5.010840892791748046, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646,600,600),
(@GGUID+111,181280,530,1, -2674.84716796875, 1782.9681396484375, 45.22975540161132812, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600);

DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID+41 AND @SGGUID+57;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+41, 'Nightmare Vine - Legion Hold', 1, 1, 0, 0),
(@SGGUID+42, 'Nightmare Vine - Shadowmoon Village', 1, 1, 0, 0),
(@SGGUID+43, 'Nightmare Vine - Deathforge', 1, 1, 0, 0),
(@SGGUID+44, 'Nightmare Vine - Illidari Point', 1, 1, 0, 0),
(@SGGUID+45, 'Nightmare Vine - Eclipse Point', 1, 1, 0, 0),
(@SGGUID+46, 'Nightmare Vine - Eclipse South Hills', 1, 1, 0, 0),
(@SGGUID+47, 'Nightmare Vine - Netherwing Pass', 1, 1, 0, 0),
(@SGGUID+48, 'Nightmare Vine - Path of Conquest', 1, 1, 0, 0),
(@SGGUID+49, 'Nightmare Vine - Netherwing Fields', 1, 1, 0, 0),
(@SGGUID+50, 'Nightmare Vine - Wardens Cage', 1, 1, 0, 0),
(@SGGUID+51, 'Nightmare Vine - Hand of Guldan', 1, 1, 0, 0),
(@SGGUID+52, 'Nightmare Vine - Coilskar Point', 1, 1, 0, 0),
(@SGGUID+53, 'Nightmare Vine - Coilskar Cistern', 1, 1, 0, 0),
(@SGGUID+54, 'Nightmare Vine - Altar of Shatar', 1, 1, 0, 0),
(@SGGUID+55, 'Nightmare Vine - Ruins of Baari', 1, 1, 0, 0),
(@SGGUID+56, 'Nightmare Vine - Black Temple North', 1, 1, 0, 0),
(@SGGUID+57, 'Nightmare Vine - Black Temple South', 1, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+41 AND @SGGUID+57;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- Nightmare Vine - Legion Hold
(@SGGUID+41, @GGUID+5, -1),
(@SGGUID+41, @GGUID+9, -1),
(@SGGUID+41, @GGUID+29, -1),
(@SGGUID+41, @GGUID+62, -1),
(@SGGUID+41, @GGUID+72, -1),
(@SGGUID+41, @GGUID+90, -1),
(@SGGUID+41, @GGUID+95, -1),
-- Nightmare Vine - Shadowmoon Village
(@SGGUID+42, @GGUID+15, -1),
(@SGGUID+42, @GGUID+54, -1),
(@SGGUID+42, @GGUID+70, -1),
(@SGGUID+42, @GGUID+89, -1),
(@SGGUID+42, @GGUID+91, -1),
(@SGGUID+42, @GGUID+105, -1),
(@SGGUID+42, @GGUID+106, -1),
-- Nightmare Vine - Deathforge
(@SGGUID+43, @GGUID+10, -1),
(@SGGUID+43, @GGUID+35, -1),
(@SGGUID+43, @GGUID+47, -1),
(@SGGUID+43, @GGUID+68, -1),
(@SGGUID+43, @GGUID+94, -1),
-- Nightmare Vine - Illidari Point
(@SGGUID+44, @GGUID+21, -1),
(@SGGUID+44, @GGUID+30, -1),
(@SGGUID+44, @GGUID+32, -1),
(@SGGUID+44, @GGUID+50, -1),
(@SGGUID+44, @GGUID+52, -1),
(@SGGUID+44, @GGUID+92, -1),
(@SGGUID+44, @GGUID+108, -1),
-- Nightmare Vine - Eclipse Point
(@SGGUID+45, @GGUID+7, -1),
(@SGGUID+45, @GGUID+27, -1),
(@SGGUID+45, @GGUID+36, -1),
(@SGGUID+45, @GGUID+64, -1),
(@SGGUID+45, @GGUID+87, -1),
(@SGGUID+45, @GGUID+96, -1),
(@SGGUID+45, @GGUID+97, -1),
-- Nightmare Vine - Eclipse South Hills
(@SGGUID+46, @GGUID+18, -1),
(@SGGUID+46, @GGUID+24, -1),
(@SGGUID+46, @GGUID+39, -1),
(@SGGUID+46, @GGUID+45, -1),
(@SGGUID+46, @GGUID+84, -1),
-- Nightmare Vine - Netherwing Pass
(@SGGUID+47, @GGUID+0, -1),
(@SGGUID+47, @GGUID+14, -1),
(@SGGUID+47, @GGUID+23, -1),
(@SGGUID+47, @GGUID+53, -1),
(@SGGUID+47, @GGUID+61, -1),
-- Nightmare Vine - Path of Conquest
(@SGGUID+48, @GGUID+59, -1),
(@SGGUID+48, @GGUID+65, -1),
(@SGGUID+48, @GGUID+66, -1),
(@SGGUID+48, @GGUID+102, -1),
-- Nightmare Vine - Netherwing Fields
(@SGGUID+49, @GGUID+2, -1),
(@SGGUID+49, @GGUID+3, -1),
(@SGGUID+49, @GGUID+80, -1),
(@SGGUID+49, @GGUID+86, -1),
(@SGGUID+49, @GGUID+99, -1),
(@SGGUID+49, @GGUID+100, -1),
-- Nightmare Vine - Wardens Cage
(@SGGUID+50, @GGUID+22, -1),
(@SGGUID+50, @GGUID+49, -1),
(@SGGUID+50, @GGUID+81, -1),
(@SGGUID+50, @GGUID+104, -1),
(@SGGUID+50, @GGUID+110, -1),
-- Nightmare Vine - Hand of Guldan
(@SGGUID+51, @GGUID+33, -1),
(@SGGUID+51, @GGUID+46, -1),
(@SGGUID+51, @GGUID+48, -1),
(@SGGUID+51, @GGUID+51, -1),
(@SGGUID+51, @GGUID+75, -1),
(@SGGUID+51, @GGUID+77, -1),
(@SGGUID+51, @GGUID+109, -1),
-- Nightmare Vine - Coilskar Point
(@SGGUID+52, @GGUID+38, -1),
(@SGGUID+52, @GGUID+40, -1),
(@SGGUID+52, @GGUID+41, -1),
(@SGGUID+52, @GGUID+83, -1),
(@SGGUID+52, @GGUID+111, -1),
-- Nightmare Vine - Coilskar Cistern
(@SGGUID+53, @GGUID+4, -1),
(@SGGUID+53, @GGUID+37, -1),
(@SGGUID+53, @GGUID+44, -1),
(@SGGUID+53, @GGUID+82, -1),
(@SGGUID+53, @GGUID+101, -1),
(@SGGUID+53, @GGUID+103, -1),
-- Nightmare Vine - Altar of Shatar
(@SGGUID+54, @GGUID+11, -1),
(@SGGUID+54, @GGUID+28, -1),
(@SGGUID+54, @GGUID+31, -1),
(@SGGUID+54, @GGUID+34, -1),
(@SGGUID+54, @GGUID+42, -1),
(@SGGUID+54, @GGUID+43, -1),
(@SGGUID+54, @GGUID+85, -1),
(@SGGUID+54, @GGUID+93, -1),
-- Nightmare Vine - Ruins of Baari
(@SGGUID+55, @GGUID+12, -1),
(@SGGUID+55, @GGUID+16, -1),
(@SGGUID+55, @GGUID+17, -1),
(@SGGUID+55, @GGUID+20, -1),
(@SGGUID+55, @GGUID+25, -1),
(@SGGUID+55, @GGUID+55, -1),
(@SGGUID+55, @GGUID+73, -1),
-- Nightmare Vine - Black Temple North
(@SGGUID+56, @GGUID+8, -1),
(@SGGUID+56, @GGUID+67, -1),
(@SGGUID+56, @GGUID+69, -1),
(@SGGUID+56, @GGUID+71, -1),
(@SGGUID+56, @GGUID+76, -1),
(@SGGUID+56, @GGUID+78, -1),
-- Nightmare Vine - Black Temple South
(@SGGUID+57, @GGUID+6, -1),
(@SGGUID+57, @GGUID+58, -1),
(@SGGUID+57, @GGUID+60, -1),
(@SGGUID+57, @GGUID+79, -1),
(@SGGUID+57, @GGUID+88, -1),
(@SGGUID+57, @GGUID+107, -1);

SET @GGUID := 180400;

INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181277,530,1, -1689.107177734375, 4649.49755859375, 4.810403823852539062, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+1,181277,530,1, -1327.362548828125, 5086.9833984375, -4.58639478683471679, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+2,181277,530,1, -3936.013916015625, 1870.261962890625, 90.85459136962890625, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+3,181277,530,1, -3959.74609375, 1778.840087890625, 98.1734771728515625, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+4,181277,530,1, -2055.49267578125, 3635.55029296875, -68.0492324829101562, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759,600,600),
(@GGUID+5,181277,530,1, -3068.655517578125, 3262.4384765625, 6.002420902252197265, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+6,181277,530,1, -2190.60400390625, 3189.916015625, -23.320871353149414, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958,600,600),
(@GGUID+7,181277,530,1, -2096.712158203125, 4815.5888671875, 3.905006885528564453, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+8,181277,530,1, -2819.485595703125, 3367.864990234375, -27.4354305267333984, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267,600,600),
(@GGUID+9,181277,530,1, -3167.67041015625, 2211.265625, 66.80841064453125, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+10,181277,530,1, -2143.00830078125, 4670.45458984375, -8.88263702392578125, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+11,181277,530,1, -2048.1884765625, 5079.17822265625, 22.62347602844238281, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+12,181277,530,1, -3085.537109375, 2290.237548828125, 62.53627395629882812, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+13,181277,530,1, -3241.6611328125, 3975.98779296875, 1.261175990104675292, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+14,181277,530,1, -2575.108154296875, 5363.10791015625, 3.562357902526855468, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+15,181277,530,1, -2925.61767578125, 3145.3671875, 29.79551887512207031, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+16,181277,530,1, -2083.36181640625, 3231.089111328125, -49.0592231750488281, 4.206246376037597656, 0, 0, -0.86162853240966796, 0.50753939151763916,600,600),
(@GGUID+17,181277,530,1, -2246.35498046875, 4996.9619140625, -2.07144403457641601, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+18,181277,530,1, -3624.046875, 6005.533203125, -13.9018115997314453, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486,600,600),
(@GGUID+19,181277,530,1, -3089.159912109375, 5884.17431640625, 8.321278572082519531, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+20,181277,530,1, -3391.779541015625, 5712.52197265625, 3.600519895553588867, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+21,181277,530,1, -2804.9404296875, 3099.28076171875, 33.06602859497070312, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+22,181277,530,1, -1847.68798828125, 3777.11669921875, 15.81427192687988281, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376,600,600),
(@GGUID+23,181277,530,1, -4057.0634765625, 1941.4537353515625, 81.07680511474609375, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333,600,600),
(@GGUID+24,181277,530,1, -3145.459228515625, 2170.951904296875, 71.66904449462890625, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+25,181277,530,1, -2581.790771484375, 5249.63720703125, 8.527666091918945312, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863,600,600),
(@GGUID+26,181277,530,1, -3077.473876953125, 2228.34375, 64.86795806884765625, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046,600,600),
(@GGUID+27,181277,530,1, -3120.9375, 2090.8125, 84.78278350830078125, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+28,181277,530,1, -2217.588134765625, 4095.92138671875, -1.99839401245117187, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279,600,600),
(@GGUID+29,181277,530,1, -1982.6710205078125, 4169.3154296875, 3.502042055130004882, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+30,181277,530,1, -2249.194091796875, 4525.0400390625, 1.54866194725036621, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+31,181277,530,1, -2558.788330078125, 5077.42236328125, 6.960722923278808593, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+32,181277,530,1, -4198.6708984375, 1837.3917236328125, 116.4248199462890625, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687,600,600),
(@GGUID+33,181277,530,1, -3502.851318359375, 6114.08984375, -4.35433816909790039, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166,600,600),
(@GGUID+34,181277,530,1, -3793.484375, 6063.8583984375, -3.05358791351318359, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+35,181277,530,1, -4067.905517578125, 1794.820068359375, 96.704376220703125, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+36,181277,530,1, -2298.02587890625, 4835.66650390625, -0.93407601118087768, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+37,181277,530,1, -3097.204345703125, 4035.608642578125, 1.930086016654968261, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+38,181277,530,1, -2024.2457275390625, 4728.2421875, -0.88831198215484619, 3.24634718894958496, 0, 0, -0.99862861633300781, 0.052353221923112869,600,600),
(@GGUID+39,181277,530,1, -2275.008056640625, 3366.1826171875, -18.7061710357666015, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+41,181277,530,1, -2448.489501953125, 3734.256103515625, 0.5651170015335083, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+42,181277,530,1, -1869.628662109375, 4750.74609375, 1.603631019592285156, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+43,181277,530,1, -2731.313720703125, 3816.552978515625, -10.589731216430664, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+45,181277,530,1, -2432.1455078125, 3471.91748046875, -14.8969659805297851, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+46,181277,530,1, -2381.59765625, 4075.220458984375, -7.00714492797851562, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+47,181277,530,1, -3841.478271484375, 4197.24853515625, 0.819670021533966064, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+48,181277,530,1, -2266.361328125, 4353.78662109375, 4.04408121109008789, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179,600,600),
(@GGUID+49,181277,530,1, -2604.842529296875, 3846.82470703125, -5.71030998229980468, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+50,181277,530,1, -1951.197509765625, 4311.134765625, 2.793669939041137695, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+51,181277,530,1, -2070.643310546875, 3349.476806640625, -60.3801536560058593, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+52,181277,530,1, -2165.201904296875, 4331.44775390625, 2.564616918563842773, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+53,181277,530,1, -2879.043701171875, 3617.481689453125, -15.9379444122314453, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+54,181277,530,1, -1879.1607666015625, 4494.66015625, 8.807568550109863281, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+55,181277,530,1, -2633.189453125, 3749.280517578125, 0.987650990486145019, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+56,181277,530,1, -2468.693603515625, 4052.208251953125, 3.293288946151733398, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+57,181277,530,1, -2029.6129150390625, 4112.99658203125, 1.411365032196044921, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+58,181277,530,1, -1955.4193115234375, 4449.49365234375, 10.38240623474121093, 4.869470596313476562, 0, 0, -0.64944744110107421, 0.760406434535980224,600,600),
(@GGUID+59,181277,530,1, -3749.302001953125, 5742.72119140625, 2.339785099029541015, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+60,181277,530,1, -1640.3616943359375, 4267.02978515625, 56.16063690185546875, 4.206246376037597656, 0, 0, -0.86162853240966796, 0.50753939151763916,600,600),
(@GGUID+61,181277,530,1, -2484.1884765625, 3645.701416015625, -0.00081499997759237, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+62,181277,530,1, -2706.64794921875, 3485.649169921875, -1.61143600940704345, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+63,181277,530,1, -2473.28466796875, 5254.1748046875, 0.121804997324943542, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+64,181277,530,1, -1839.6339111328125, 4887.15576171875, 1.101843953132629394, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+65,181277,530,1, -2772.311279296875, 3644.15283203125, 0.147275000810623168, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+66,181277,530,1, -3508.049560546875, 5731.94775390625, 0.13741399347782135, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+67,181277,530,1, -3277.223876953125, 5938.31591796875, -6.55824613571166992, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+68,181277,530,1, -2564.7900390625, 3715.197021484375, 2.553905010223388671, 5.131268978118896484, 0, 0, -0.54463863372802734, 0.838670849800109863,600,600),
(@GGUID+69,181277,530,1, -2997.640869140625, 5723.806640625, 2.922724008560180664, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+70,181277,530,1, -3668.607177734375, 5617.25634765625, 2.314964056015014648, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+71,181277,530,1, -3875.8515625, 4290.666015625, 1.480893969535827636, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+72,181277,530,1, -2483.993408203125, 5432.1845703125, 0.068030998110771179, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257,600,600),
(@GGUID+73,181277,530,1, -3405.001953125, 3986.9150390625, 60.44444656372070312, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458,600,600),
(@GGUID+74,181277,530,1, -2507.4541015625, 4869.1005859375, 41.9052276611328125, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+75,181277,530,1, -1501.8155517578125, 4716.45556640625, -4.37548112869262695, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+76,181277,530,1, -2289.1650390625, 4152.171875, -6.01207780838012695, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+77,181277,530,1, -1990.6226806640625, 3932.499267578125, 1.789839982986450195, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+78,181277,530,1, -2056.610595703125, 4040.419189453125, 2.760406017303466796, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+79,181277,530,1, -2538.2314453125, 3486.585205078125, -4.0410780906677246, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+80,181277,530,1, -3811.956298828125, 5887.3974609375, -16.7231655120849609, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+81,181277,530,1, -3807.951416015625, 6127.40966796875, -14.8091106414794921, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+82,181277,530,1, -3351.947998046875, 6074.68408203125, 0.159936994314193725, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+83,181277,530,1, -3013.112548828125, 3224.34765625, 18.58373451232910156, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+84,181277,530,1, -3188.041259765625, 5982.24072265625, 0.821717023849487304, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+85,181277,530,1, -2933.913330078125, 3343.404541015625, 0.258114010095596313, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+86,181277,530,1, -3406.580078125, 6187.25634765625, 2.679071903228759765, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+87,181277,530,1, -2053.958251953125, 4525.74853515625, 4.375751018524169921, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+88,181277,530,1, -2315.9892578125, 3927.2578125, -0.48145800828933715, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+89,181277,530,1, -2761.77197265625, 3731.919189453125, 0.678023993968963623, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+90,181277,530,1, -2329.8310546875, 5318.0087890625, -5.11203384399414062, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+91,181277,530,1, -2468.364990234375, 5331.08837890625, 0.753497004508972167, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175,600,600),
(@GGUID+92,181277,530,1, -4010.204833984375, 4403.76025390625, -36.8497810363769531, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+94,181277,530,1, -2701.426513671875, 5413.6708984375, 7.291773796081542968, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+95,181277,530,1, -3893.97607421875, 5416.015625, -28.5639858245849609, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+96,181277,530,1, -3816.912841796875, 5507.99658203125, -7.79341697692871093, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+97,181277,530,1, -3690.7587890625, 6127.4033203125, 1.450510978698730468, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+98,181277,530,1, -3486.456298828125, 5962.88818359375, -28.0071163177490234, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285,600,600),
(@GGUID+100,181277,530,1, -2459.2119140625, 3861.185791015625, 7.43769693374633789, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+101,181277,530,1, -2816.167236328125, 3701.5634765625, -1.74249696731567382, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562,600,600),
(@GGUID+102,181277,530,1, -4055.30810546875, 1722.4921875, 95.99920654296875, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+103,181277,530,1, -2111.868896484375, 3525.010986328125, -52.1814422607421875, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+104,181277,530,1, -1968.337646484375, 3720.661376953125, -34.3360023498535156, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+105,181277,530,1, -2557.227783203125, 3399.332763671875, 1.802888989448547363, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208,600,600),
(@GGUID+106,181277,530,1, -2337.343017578125, 5089.18994140625, 0.56213998794555664, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468,600,600),
(@GGUID+107,181277,530,1, -2848.18359375, 3867.50341796875, 2.22036600112915039, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+108,181277,530,1, -3605.5341796875, 6145.05419921875, -0.35735398530960083, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+109,181277,530,1, -3204.173095703125, 4085.032470703125, 3.43673110008239746, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+110,181277,530,1, -2918.327880859375, 2992.780517578125, 62.541015625, -2.93215298652648925, 0, 0, 0.994521915912628173, -0.10452850908041,600,600),
(@GGUID+111,181277,530,1, -3640.4580078125, 5756.39453125, 1.618558049201965332, 0.139626353979110717, 0, 0, 0.069756470620632171, 0.997564077377319335,600,600),
(@GGUID+112,181277,530,1, -2405.8837890625, 4994.06884765625, 30.23747825622558593, 2.984513044357299804, 0, 0, 0.996917307376861572, 0.078459084033966064,600,600),
(@GGUID+114,181277,530,1, -3576.532470703125, 5676.45068359375, 0.400483995676040649, -2.19911503791809082, 0, 0, 0.89100658893585205, -0.45399039983749389,600,600),
(@GGUID+115,181277,530,1, -1273.7149658203125, 5198.76123046875, 48.98511505126953125, -1.83259570598602294, 0, 0, 0.79335331916809082, -0.60876142978668212,600,600),
(@GGUID+116,181277,530,1, -3286.375244140625, 4084.24951171875, 3.927572011947631835, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818,600,600),
(@GGUID+118,181277,530,1, -3428.059326171875, 5836.48486328125, -6.33839893341064453, -2.67035365104675292, 0, 0, 0.972369909286499023, -0.23344539105892181,600,600),
(@GGUID+120,181277,530,1, -4110.74853515625, 1756.6805419921875, 104.7146072387695312, 2.076941728591918945, 0, 0, 0.861629128456115722, 0.507538378238677978,600,600),
(@GGUID+121,181277,530,1, -2239.1044921875, 4005.901611328125, -24.3985614776611328, 0.174532920122146606, 0, 0, 0.087155736982822418, 0.996194720268249511,600,600),
(@GGUID+122,181277,530,1, -2981.263916015625, 3289.248046875, 1.834393978118896484, -0.61086541414260864, 0, 0, 0.300705879926681518, -0.9537169337272644,600,600),
(@GGUID+123,181277,530,1, -2170.0595703125, 3335.841796875, -35.6992835998535156, -2.18166041374206542, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+124,181277,530,1, -3003.715087890625, 3780.693603515625, 1.658095002174377441, -1.34390127658843994, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+125,181277,530,1, -3611.8095703125, 4015.15625, 74.6686248779296875, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+126,181277,530,1, -3850.607177734375, 5701.2724609375, -30.3556118011474609, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+127,181277,530,1, -3044.77294921875, 4122.96728515625, 0.802528977394104003, 2.234017610549926757, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+128,181277,530,1, -3267.405517578125, 2222.977783203125, 67.32762908935546875, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+129,181277,530,1, -3047.744873046875, 2218.626220703125, 66.732025146484375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+130,181277,530,1, -2231.662353515625, 4441.376953125, 2.048065900802612304, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687,600,600);

DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID+58 AND @SGGUID+60;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+58, 'Terocone - SMV - Entrance', 1, 1, 0, 0),
(@SGGUID+59, 'Terocone - SMV - Skethlon Base Camp', 1, 2, 0, 0), -- yes 2
(@SGGUID+60, 'Terocone - SMV - Skethlon Wreckage', 1, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+58 AND @SGGUID+60;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- Terocone - SMV - Entrance
(@SGGUID+58, @GGUID+5, -1),
(@SGGUID+58, @GGUID+15, -1),
(@SGGUID+58, @GGUID+21, -1),
(@SGGUID+58, @GGUID+83, -1),
(@SGGUID+58, @GGUID+110, -1),
(@SGGUID+58, @GGUID+122, -1),
-- Terocone - SMV - Skethlon Base Camp
(@SGGUID+59, @GGUID+2, -1),
(@SGGUID+59, @GGUID+3, -1),
(@SGGUID+59, @GGUID+23, -1),
(@SGGUID+59, @GGUID+32, -1),
(@SGGUID+59, @GGUID+35, -1),
(@SGGUID+59, @GGUID+102, -1),
(@SGGUID+59, @GGUID+120, -1),
-- Terocone - SMV - Skethlon Wreckage
(@SGGUID+60, @GGUID+9, -1),
(@SGGUID+60, @GGUID+12, -1),
(@SGGUID+60, @GGUID+24, -1),
(@SGGUID+60, @GGUID+26, -1),
(@SGGUID+60, @GGUID+27, -1),
(@SGGUID+60, @GGUID+128, -1),
(@SGGUID+60, @GGUID+129, -1);

DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID+61 AND @SGGUID+85;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+61, 'Terocone - Terokkar - Veil Shalas', 1, 1, 0, 0),
(@SGGUID+62, 'Terocone - Terokkar - Netherweb Ridge', 1, 1, 0, 0),
(@SGGUID+63, 'Terocone - Terokkar - Allerian West', 1, 1, 0, 0),
(@SGGUID+64, 'Terocone - Terokkar - Bonechewer East', 1, 1, 0, 0),
(@SGGUID+65, 'Terocone - Terokkar - Bonechewer West', 1, 1, 0, 0),
(@SGGUID+66, 'Terocone - Terokkar - Stonebreaker Camp', 1, 1, 0, 0),
(@SGGUID+67, 'Terocone - Terokkar - Raastok Glade South', 1, 1, 0, 0),
(@SGGUID+68, 'Terocone - Terokkar - Raastok Glade North ', 1, 1, 0, 0),
(@SGGUID+69, 'Terocone - Terokkar - Firewing Point', 1, 1, 0, 0),
(@SGGUID+70, 'Terocone - Terokkar - River NE', 1, 1, 0, 0),
(@SGGUID+71, 'Terocone - Terokkar - Tuurem East', 1, 1, 0, 0),
(@SGGUID+72, 'Terocone - Terokkar - Tuurem West', 1, 1, 0, 0),
(@SGGUID+73, 'Terocone - Terokkar - Tuurem SW', 1, 1, 0, 0),
(@SGGUID+74, 'Terocone - Terokkar - Veil Reskk', 1, 1, 0, 0),
(@SGGUID+75, 'Terocone - Terokkar - Cenarion Thicket', 1, 1, 0, 0),
(@SGGUID+76, 'Terocone - Terokkar - Thicket South', 1, 1, 0, 0),
(@SGGUID+77, 'Terocone - Terokkar - Grangolvar Village', 1, 1, 0, 0),
(@SGGUID+78, 'Terocone - Terokkar - Grangolvar Village North', 1, 1, 0, 0),
(@SGGUID+79, 'Terocone - Terokkar - Veil Skith West', 1, 1, 0, 0),
(@SGGUID+80, 'Terocone - Terokkar - Veil Skith East', 1, 1, 0, 0),
(@SGGUID+81, 'Terocone - Terokkar - Wastes Periphery', 1, 1, 0, 0),
(@SGGUID+82, 'Terocone - Terokkar - Veil Lithic', 1, 1, 0, 0),
(@SGGUID+83, 'Terocone - Terokkar - Bleeding Hollow Ruins North', 1, 1, 0, 0),
(@SGGUID+84, 'Terocone - Terokkar - Bleeding Hollow Ruins South East', 1, 1, 0, 0),
(@SGGUID+85, 'Terocone - Terokkar - Bleeding Hollow Ruins South West', 1, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID+61 AND @SGGUID+85;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- Terocone - Terokkar - Veil Shalas
(@SGGUID+61, @GGUID+13, -1),
(@SGGUID+61, @GGUID+73, -1),
(@SGGUID+61, @GGUID+125, -1),
-- Terocone - Terokkar - Netherweb Ridge
(@SGGUID+62, @GGUID+47, -1),
(@SGGUID+62, @GGUID+71, -1),
(@SGGUID+62, @GGUID+92, -1),
-- Terocone - Terokkar - Allerian West
(@SGGUID+63, @GGUID+37, -1),
(@SGGUID+63, @GGUID+109, -1),
(@SGGUID+63, @GGUID+116, -1),
(@SGGUID+63, @GGUID+127, -1),
-- Terocone - Terokkar - Bonechewer East
(@SGGUID+64, @GGUID+8, -1),
(@SGGUID+64, @GGUID+85, -1),
(@SGGUID+64, @GGUID+62, -1),
(@SGGUID+64, @GGUID+105, -1),
(@SGGUID+64, @GGUID+79, -1),
(@SGGUID+64, @GGUID+45, -1),
-- Terocone - Terokkar - Bonechewer West
(@SGGUID+65, @GGUID+53, -1),
(@SGGUID+65, @GGUID+65, -1),
(@SGGUID+65, @GGUID+101, -1),
(@SGGUID+65, @GGUID+124, -1),
-- Terocone - Terokkar - Stonebreaker Camp
(@SGGUID+66, @GGUID+61, -1),
(@SGGUID+66, @GGUID+41, -1),
(@SGGUID+66, @GGUID+100, -1),
(@SGGUID+66, @GGUID+68, -1),
-- Terocone - Terokkar - Raastok Glade South
(@SGGUID+67, @GGUID+49, -1),
(@SGGUID+67, @GGUID+55, -1),
(@SGGUID+67, @GGUID+43, -1),
(@SGGUID+67, @GGUID+89, -1),
(@SGGUID+67, @GGUID+107, -1),
-- Terocone - Terokkar - Raastok Glade North
(@SGGUID+68, @GGUID+88, -1),
(@SGGUID+68, @GGUID+121, -1),
(@SGGUID+68, @GGUID+28, -1),
(@SGGUID+68, @GGUID+76, -1),
(@SGGUID+68, @GGUID+46, -1),
(@SGGUID+68, @GGUID+56, -1),
-- Terocone - Terokkar - Firewing Point
(@SGGUID+69, @GGUID+51, -1),
(@SGGUID+69, @GGUID+16, -1),
(@SGGUID+69, @GGUID+6, -1),
(@SGGUID+69, @GGUID+39, -1),
(@SGGUID+69, @GGUID+123, -1),
-- Terocone - Terokkar - River NE
(@SGGUID+70, @GGUID+4, -1),
(@SGGUID+70, @GGUID+103, -1),
(@SGGUID+70, @GGUID+104, -1),
(@SGGUID+70, @GGUID+22, -1),
-- Terocone - Terokkar - Tuurem East
(@SGGUID+71, @GGUID+77, -1),
(@SGGUID+71, @GGUID+78, -1),
(@SGGUID+71, @GGUID+57, -1),
(@SGGUID+71, @GGUID+29, -1),
-- Terocone - Terokkar - Tuurem West
(@SGGUID+72, @GGUID+50, -1),
(@SGGUID+72, @GGUID+58, -1),
(@SGGUID+72, @GGUID+54, -1),
-- Terocone - Terokkar - Tuurem SW
(@SGGUID+73, @GGUID+52, -1),
(@SGGUID+73, @GGUID+48, -1),
(@SGGUID+73, @GGUID+130, -1),
(@SGGUID+73, @GGUID+30, -1),
-- Terocone - Terokkar - Veil Reskk
(@SGGUID+74, @GGUID+60, -1),
(@SGGUID+74, @GGUID+75, -1),
(@SGGUID+74, @GGUID+1, -1),
(@SGGUID+74, @GGUID+115, -1),
-- Terocone - Terokkar - Cenarion Thicket
(@SGGUID+75, @GGUID+0, -1),
(@SGGUID+75, @GGUID+42, -1),
(@SGGUID+75, @GGUID+64, -1),
-- Terocone - Terokkar - Thicket South
(@SGGUID+76, @GGUID+87, -1),
(@SGGUID+76, @GGUID+10, -1),
(@SGGUID+76, @GGUID+38, -1),
(@SGGUID+76, @GGUID+7, -1),
(@SGGUID+76, @GGUID+11, -1),
-- Terocone - Terokkar - Grangolvar Village
(@SGGUID+77, @GGUID+74, -1),
(@SGGUID+77, @GGUID+112, -1),
(@SGGUID+77, @GGUID+31, -1),
-- Terocone - Terokkar - Grangolvar Village North
(@SGGUID+78, @GGUID+36, -1),
(@SGGUID+78, @GGUID+17, -1),
(@SGGUID+78, @GGUID+106, -1),
-- Terocone - Terokkar - Veil Skith West
(@SGGUID+79, @GGUID+91, -1),
(@SGGUID+79, @GGUID+14, -1),
(@SGGUID+79, @GGUID+72, -1),
(@SGGUID+79, @GGUID+94, -1),
-- Terocone - Terokkar - Veil Skith East
(@SGGUID+80, @GGUID+90, -1),
(@SGGUID+80, @GGUID+63, -1),
(@SGGUID+80, @GGUID+25, -1),
-- Terocone - Terokkar - Wastes Periphery
(@SGGUID+81, @GGUID+20, -1),
(@SGGUID+81, @GGUID+66, -1),
(@SGGUID+81, @GGUID+114, -1),
(@SGGUID+81, @GGUID+70, -1),
(@SGGUID+81, @GGUID+96, -1),
(@SGGUID+81, @GGUID+95, -1),
-- Terocone - Terokkar - Veil Lithic
(@SGGUID+82, @GGUID+111, -1),
(@SGGUID+82, @GGUID+59, -1),
(@SGGUID+82, @GGUID+126, -1),
(@SGGUID+82, @GGUID+80, -1),
-- Terocone - Terokkar - Bleeding Hollow Ruins North
(@SGGUID+83, @GGUID+69, -1),
(@SGGUID+83, @GGUID+19, -1),
(@SGGUID+83, @GGUID+84, -1),
(@SGGUID+83, @GGUID+67, -1),
(@SGGUID+83, @GGUID+82, -1),
-- Terocone - Terokkar - Bleeding Hollow Ruins South East
(@SGGUID+84, @GGUID+34, -1),
(@SGGUID+84, @GGUID+18, -1),
(@SGGUID+84, @GGUID+98, -1),
(@SGGUID+84, @GGUID+118, -1),
-- Terocone - Terokkar - Bleeding Hollow Ruins South West
(@SGGUID+85, @GGUID+86, -1),
(@SGGUID+85, @GGUID+33, -1),
(@SGGUID+85, @GGUID+108, -1),
(@SGGUID+85, @GGUID+97, -1),
(@SGGUID+85, @GGUID+81, -1);

-- golden sansam
SET @GGUID := 180600;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,176583,530,1, -1059.3931884765625, 2257.01904296875, 24.722808837890625, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582,600,600),
(@GGUID+1,176583,530,1, -274.867340087890625, 3167.74267578125, -69.42120361328125, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+2,176583,530,1, 404.909393310546875, 8061.548828125, 24.66592216491699218, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+3,176583,530,1, -952.00390625, 5942.46630859375, 21.269683837890625, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+4,176583,530,1, -312.227325439453125, 2391.7822265625, 45.60123825073242187, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+5,176583,530,1, -494.505859375, 3600.009521484375, 29.03590965270996093, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+6,176583,530,1, 3415.593505859375, 3015.634033203125, 142.9625396728515625, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+7,176583,530,1, -904.35626220703125, 2544.480712890625, 14.39169025421142578, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+8,176583,530,1, -1139.1361083984375, 5592.83740234375, 56.9751739501953125, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+9,176583,530,1, 425.17730712890625, 2092.872314453125, 93.7387237548828125, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+10,176583,530,1, 1217.71533203125, 7822.90966796875, 28.50108909606933593, 4.869470596313476562, 0, 0, -0.64944744110107421, 0.760406434535980224,600,600),
(@GGUID+11,176583,530,1, -1275.31298828125, 2610.9658203125, 18.57960319519042968, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+12,176583,530,1, 4928.52880859375, 2865.306396484375, 88.2608795166015625, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+13,176583,530,1, 0.128581002354621887, 3178.884765625, 9.91173553466796875, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+14,176583,530,1, 55.6649322509765625, 3232.545166015625, 26.43159103393554687, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+15,176583,530,1, -944.58233642578125, 1912.261474609375, 69.35711669921875, 3.001946926116943359, 0, 0, 0.997563362121582031, 0.069766148924827575,600,600),
(@GGUID+16,176583,530,1, -901.68511962890625, 1910.62548828125, 67.34003448486328125, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+17,176583,530,1, -537.85296630859375, 5950.171875, 23.16185379028320312, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+18,176583,530,1, 754.89453125, 7157.7197265625, 23.28849983215332031, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+19,176583,530,1, -54.2272148132324218, 6096.9375, 23.38382911682128906, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+20,176583,530,1, 458.517303466796875, 5173.646484375, 21.89313697814941406, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+21,176583,530,1, 99.8289947509765625, 6329.8759765625, 22.26572227478027343, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+22,176583,530,1, -339.739898681640625, 6112.61962890625, 22.97513961791992187, 3.24634718894958496, 0, 0, -0.99862861633300781, 0.052353221923112869,600,600),
(@GGUID+23,176583,530,1, 471.0499267578125, 5612.3193359375, 22.78168487548828125, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+24,176583,530,1, 3389.780517578125, 2834.032958984375, 145.4916534423828125, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938,600,600),
(@GGUID+25,176583,530,1, -832.9522705078125, 2021.164306640625, 39.1471710205078125, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+26,176583,530,1, 4194, 2851.455810546875, 154.4846038818359375, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+27,176583,530,1, 979.95733642578125, 8274.0771484375, 24.05779838562011718, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+28,176583,530,1, 495.9190673828125, 2962.951416015625, 30.57270622253417968, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+29,176583,530,1, -974.625, 1875.91015625, 94.80350494384765625, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+30,176583,530,1, 1260.1729736328125, 8333.5869140625, 20.11061859130859375, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+31,176583,530,1, 3989.166259765625, 2877.9873046875, 125.2204132080078125, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+32,176583,530,1, 4075.075439453125, 3166.373046875, 165.8257598876953125, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+33,176583,530,1, 190.4198150634765625, 6330.50537109375, 22.64133071899414062, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+34,176583,530,1, 364.353515625, 7556.5693359375, 22.513458251953125, 1.064649581909179687, 0, 0, 0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+35,176583,530,1, 139.3658905029296875, 6792.93896484375, 22.45094108581542968, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958,600,600),
(@GGUID+36,176583,530,1, 5019.41357421875, 2914.678466796875, 94.08614349365234375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+37,176583,530,1, -1375.6082763671875, 3377.38720703125, 44.10058212280273437, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556,600,600),
(@GGUID+38,176583,530,1, -184.082138061523437, 2810.53564453125, 25.16637229919433593, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+39,176583,530,1, 4178.64404296875, 3176.076904296875, 177.53094482421875, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+40,176583,530,1, -280.138031005859375, 3451.8642578125, -23.77813720703125, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+42,176583,530,1, -177.555343627929687, 3472.09326171875, 40.97971343994140625, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+43,176583,530,1, -398.855133056640625, 3007.92333984375, -56.6374588012695312, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+44,176583,530,1, 48.34809112548828125, 4569.17529296875, 61.62213897705078125, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+45,176583,530,1, -1426.2650146484375, 3204.253173828125, 21.17731666564941406, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+46,176583,530,1, 5131.08056640625, 2865.392822265625, 70.42629241943359375, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+47,176583,530,1, 46.65679168701171875, 5972.86376953125, 22.65648269653320312, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+48,176583,530,1, -1556.5145263671875, 3644.33642578125, 35.63109207153320312, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+49,176583,530,1, 345.928497314453125, 6610.1240234375, 23.46378135681152343, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958,600,600),
(@GGUID+50,176583,530,1, -1046.0806884765625, 3282.817626953125, 69.16988372802734375, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+51,176583,530,1, 901.21466064453125, 7053.568359375, 22.0289154052734375, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+52,176583,530,1, 489.172637939453125, 2812.772216796875, 205.3341827392578125, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556,600,600),
(@GGUID+53,176583,530,1, 3325.208984375, 2952.0234375, 141.260162353515625, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+54,176583,530,1, -646.64898681640625, 4024.408935546875, 29.18979835510253906, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+55,176583,530,1, -1248.7330322265625, 3206.15673828125, 54.03660202026367187, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+56,176583,530,1, 1229.19970703125, 8022.408203125, 30.13380241394042968, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+57,176583,530,1, -174.423171997070312, 4946.228515625, 57.73979949951171875, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+58,176583,530,1, -1457.75439453125, 3376.69091796875, 23.96116256713867187, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+59,176583,530,1, 90.16742706298828125, 6441.18798828125, 22.25096321105957031, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+60,176583,530,1, -1326.37890625, 2797.417724609375, -27.8192214965820312, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+61,176583,530,1, 3534.6728515625, 2826.760498046875, 146.77490234375, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+62,176583,530,1, -736.90625, 5502.7919921875, 21.91933441162109375, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+63,176583,530,1, -834.50958251953125, 5629.20068359375, 22.44703292846679687, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046,600,600),
(@GGUID+64,176583,530,1, 383.67431640625, 2512.9853515625, 149.908782958984375, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+65,176583,530,1, -111.394096374511718, 8001.0615234375, 21.10219955444335937, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+66,176583,530,1, -1026.5013427734375, 5512.2197265625, 22.65644645690917968, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+67,176583,530,1, 740.89031982421875, 7294.44287109375, 22.13215827941894531, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+68,176583,530,1, -229.066513061523437, 5093.78955078125, 82.34661102294921875, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291,600,600),
(@GGUID+69,176583,530,1, -218.166290283203125, 2999.150390625, -60.9029693603515625, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+70,176583,530,1, 819.27947998046875, 5559.1484375, 24.10979843139648437, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871,600,600),
(@GGUID+71,176583,530,1, -729.31793212890625, 1475.052490234375, 15.00252437591552734, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+72,176583,530,1, -347.020233154296875, 2525.9716796875, 43.3935546875, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+73,176583,530,1, 1275.7259521484375, 8238.24609375, 22.33492469787597656, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+74,176583,530,1, 640.159423828125, 5127.0146484375, 23.07220268249511718, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687,600,600),
(@GGUID+75,176583,530,1, -315.25299072265625, 3634.013671875, 31.66527366638183593, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755,600,600),
(@GGUID+76,176583,530,1, -159.383255004882812, 6025.27392578125, 22.217620849609375, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+77,176583,530,1, 36.33940887451171875, 4766.0927734375, 57.38988113403320312, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+78,176583,530,1, 1065.1871337890625, 8451.9111328125, 23.52592849731445312, 3.001946926116943359, 0, 0, 0.997563362121582031, 0.069766148924827575,600,600),
(@GGUID+79,176583,530,1, -1184.8643798828125, 2254.081787109375, 45.49840164184570312, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+80,176583,530,1, 4379.95458984375, 2814.62890625, 107.388763427734375, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803,600,600),
(@GGUID+81,176583,530,1, 85.693359375, 8099.0322265625, 23.30922508239746093, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+82,176583,530,1, -696.0126953125, 2337.14892578125, 38.48378372192382812, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+83,176583,530,1, -174.538787841796875, 2504.3564453125, 42.42461013793945312, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+84,176583,530,1, 194.5923919677734375, 6451.1259765625, 22.57678031921386718, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+86,176583,530,1, 973.35333251953125, 7585.9697265625, 23.5498199462890625, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+87,176583,530,1, -226.90533447265625, 3023.118896484375, -63.6683769226074218, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+88,176583,530,1, 4088.6025390625, 3271.075439453125, 162.711029052734375, 5.131268978118896484, 0, 0, -0.54463863372802734, 0.838670849800109863,600,600),
(@GGUID+89,176583,530,1, -331.277130126953125, 1645.986328125, 57.45323944091796875, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+90,176583,530,1, 26.58485221862792968, 7947.142578125, 22.24880218505859375, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+91,176583,530,1, 121.81494140625, 1697.527099609375, 37.96434402465820312, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+92,176583,530,1, 22.86458396911621093, 8272.3603515625, 22.91208648681640625, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+93,176583,530,1, -321.24371337890625, 3021.013916015625, -66.2201690673828125, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208,600,600),
(@GGUID+94,176583,530,1, 1048.580322265625, 8168.8759765625, 23.60677528381347656, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+95,176583,530,1, -882.400390625, 2116.296142578125, 19.40527534484863281, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+96,176583,530,1, 426.173980712890625, 5470.796875, 21.49736213684082031, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+97,176583,530,1, 476.26910400390625, 7789.900390625, 22.31978607177734375, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+98,176583,530,1, -373.447265625, 2691.355224609375, 38.18894577026367187, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+99,176583,530,1, 881.34356689453125, 7312.0947265625, 22.64633750915527343, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+100,176583,530,1, 1322.823974609375, 7731.92041015625, 27.665283203125, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+101,176583,530,1, 666.53302001953125, 7703.48779296875, 19.81377410888671875, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+102,176583,530,1, 546.7882080078125, 7973.2568359375, 22.34470558166503906, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+103,176583,530,1, -987.84942626953125, 5660.08837890625, 23.4804534912109375, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+104,176583,530,1, 4015.4453125, 3041.3134765625, 139.502471923828125, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+105,176583,530,1, 5007.55517578125, 3028.379150390625, 93.77532958984375, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+106,176583,530,1, -40.9510650634765625, 5715.76904296875, 21.83849334716796875, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+107,176583,530,1, 3950.4775390625, 3289.84326171875, 124.0861129760742187, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+108,176583,530,1, -667.7501220703125, 3220.27001953125, -0.167494997382164, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+109,176583,530,1, -452.076934814453125, 3484.9150390625, 43.0703277587890625, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+110,176583,530,1, 992.9259033203125, 7753.54248046875, 23.29601097106933593, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+111,176583,530,1, 0.807237029075622558, 2171.06396484375, 116.4857711791992187, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+112,176583,530,1, -1045.317138671875, 2122.499267578125, 51.88437271118164062, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803,600,600),
(@GGUID+113,176583,530,1, 1071.3665771484375, 7571.68603515625, 22.09166908264160156, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375,600,600),
(@GGUID+114,176583,530,1, 196.596466064453125, 9016.169921875, 19.87639427185058593, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+115,176583,530,1, -1153.83447265625, 2006.1163330078125, 69.486968994140625, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+116,176583,530,1, -1518.878662109375, 3468.944580078125, 27.06863784790039062, 5.567600727081298828, 0, 0, -0.35020732879638671, 0.936672210693359375,600,600),
(@GGUID+117,176583,530,1, -433.285369873046875, 3074.78173828125, -53.7815933227539062, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389,600,600),
(@GGUID+118,176583,530,1, -313.693511962890625, 2390.8193359375, 45.5923919677734375, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+119,176583,530,1, -1045.420654296875, 3293.704345703125, 71.7579498291015625, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722,600,600),
(@GGUID+120,176583,530,1, -116.961860656738281, 1626.1219482421875, 54.8809356689453125, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+121,176583,530,1, -202.242080688476562, 3103.52392578125, -56.4618263244628906, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+122,176583,530,1, -17.6691627502441406, 5843.1083984375, 23.26250457763671875, 0.593411922454833984, 0, 0, 0.292371690273284912, 0.956304788589477539,600,600),
(@GGUID+123,176583,530,1, -908.30401611328125, 3339.0458984375, 66.55188751220703125, -0.36651927232742309, 0, 0, 0.182235583662986755, -0.98325490951538085,600,600),
(@GGUID+124,176583,530,1, -1087.16259765625, 5739.82421875, 57.47412109375, -1.88495564460754394, 0, 0, 0.809017002582550048, -0.58778518438339233,600,600),
(@GGUID+125,176583,530,1, 944.8387451171875, 8601.193359375, 22.88031959533691406, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+126,176583,530,1, -385.361236572265625, 3111.732421875, -85.7655258178710937, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+127,176583,530,1, -1318.8814697265625, 2869.762939453125, -18.6121082305908203, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+128,176583,530,1, -1090.0948486328125, 5651.94189453125, 61.42722702026367187, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600);

-- mountain silversage
SET @GGUID := 180800;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,176586,530,1, 334.630279541015625, 2515.019775390625, 161.6396026611328125, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+1,176586,530,1, -1157.315185546875, 4140.90185546875, 86.1197052001953125, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+2,176586,530,1, -1312.1285400390625, 4102.38525390625, 120.7269134521484375, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+3,176586,530,1, -936.08831787109375, 2064.53759765625, 82.46353912353515625, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303,600,600),
(@GGUID+4,176586,530,1, 346.322418212890625, 2758.76416015625, 158.9691009521484375, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+5,176586,530,1, -62.7025833129882812, 1712.986083984375, 86.24089813232421875, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+6,176586,530,1, 631.23028564453125, 2778.506103515625, 229.1005859375, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+7,176586,530,1, -1020.836669921875, 1910.8311767578125, 105.6492080688476562, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+8,176586,530,1, 202.7827911376953125, 4692.70166015625, 99.6540679931640625, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+9,176586,530,1, -1024.75244140625, 2280.973876953125, 28.87978172302246093, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+10,176586,530,1, -1190.57958984375, 2038.7467041015625, 101.0602264404296875, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+11,176586,530,1, 277.282745361328125, 3854.944580078125, 95.91605377197265625, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+12,176586,530,1, 343.43695068359375, 4040.23095703125, 117.4330520629882812, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+13,176586,530,1, -63.0102005004882812, 1711.8687744140625, 86.0883331298828125, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+14,176586,530,1, -835.87823486328125, 4296.72021484375, 80.47899627685546875, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+15,176586,530,1, -955.98828125, 3732.727783203125, 109.390716552734375, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+16,176586,530,1, -911.48797607421875, 3645.62939453125, 114.3758926391601562, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664,600,600),
(@GGUID+17,176586,530,1, -690.874267578125, 3979.022705078125, 62.8608551025390625, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904,600,600),
(@GGUID+18,176586,530,1, -788.765869140625, 3728.178955078125, 118.6003189086914062, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+19,176586,530,1, -850.48907470703125, 3313.615478515625, 75.72513580322265625, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+20,176586,530,1, -1006.5985107421875, 3936.294189453125, 127.5568466186523437, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+21,176586,530,1, 546.5382080078125, 2846.872802734375, 210.40185546875, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106,600,600),
(@GGUID+22,176586,530,1, -663.7470703125, 3816.28125, 51.07683944702148437, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+23,176586,530,1, -794.998291015625, 4003.3017578125, 81.00037384033203125, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208,600,600),
(@GGUID+24,176586,530,1, -1508.685546875, 3622.747802734375, 55.1983795166015625, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+25,176586,530,1, -720.54833984375, 1700.0845947265625, 101.0812225341796875, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066,600,600),
(@GGUID+26,176586,530,1, 499.74749755859375, 3346.76953125, 109.889617919921875, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652,600,600),
(@GGUID+27,176586,530,1, 416.081390380859375, 3600.057373046875, 79.39678192138671875, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+28,176586,530,1, -632.87640380859375, 4713.35107421875, 81.0671844482421875, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+29,176586,530,1, -1083.1292724609375, 1556.4244384765625, 76.86501312255859375, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+30,176586,530,1, -849.661376953125, 1633.3582763671875, 87.562103271484375, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+31,176586,530,1, -1028.5191650390625, 4101.283203125, 94.4088134765625, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+32,176586,530,1, -681.73370361328125, 3885.025634765625, 67.37705230712890625, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+33,176586,530,1, -32.8364791870117187, 4439.54833984375, 114.3061676025390625, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+34,176586,530,1, 81.99680328369140625, 3429.710205078125, 88.24205780029296875, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+35,176586,530,1, 286.7188720703125, 3237.984375, 85.62139129638671875, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+36,176586,530,1, -1194.2371826171875, 1536.3475341796875, 73.44202423095703125, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775,600,600),
(@GGUID+37,176586,530,1, 525.0625, 2435.257080078125, 196.90032958984375, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023,600,600),
(@GGUID+38,176586,530,1, -814.31378173828125, 1845.911865234375, 84.1594085693359375, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796,600,600),
(@GGUID+39,176586,530,1, -714.7947998046875, 1730.3292236328125, 107.1550064086914062, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+40,176586,530,1, 326.522369384765625, 2221.569091796875, 116.3413162231445312, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+41,176586,530,1, 13.34776496887207031, 3787.0390625, 120.6567764282226562, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871,600,600),
(@GGUID+42,176586,530,1, 391.540679931640625, 3784.23779296875, 205.8744354248046875, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+43,176586,530,1, -734.37176513671875, 3551.08642578125, 105.3139572143554687, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+44,176586,530,1, -601.5994873046875, 3665.06201171875, 68.91201019287109375, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+45,176586,530,1, 24.15234375, 2089.869140625, 122.5132522583007812, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+46,176586,530,1, -1149.0504150390625, 4075.783935546875, 86.76215362548828125, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+47,176586,530,1, 363.741424560546875, 2109.5546875, 118.1312408447265625, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+48,176586,530,1, -1251.6400146484375, 3354.37158203125, 132.3720245361328125, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+49,176586,530,1, -391.58062744140625, 1914.0738525390625, 112.8878631591796875, 1.221730470657348632, 0, 0, 0.57357645034790039, 0.819152057170867919,600,600),
(@GGUID+50,176586,530,1, 158.5106964111328125, 3640.357666015625, 89.3116302490234375, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+51,176586,530,1, -869.8604736328125, 4431.6630859375, 102.7162933349609375, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+52,176586,530,1, -383.097442626953125, 1596.509521484375, 65.76674652099609375, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375,600,600),
(@GGUID+53,176586,530,1, 242.7430572509765625, 4191.375, 108.0818023681640625, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+54,176586,530,1, 649.3553466796875, 2089.571533203125, 189.177978515625, -1.18682324886322021, 0, 0, -0.55919265747070312, 0.829037725925445556,600,600),
(@GGUID+55,176586,530,1, 540.63702392578125, 2659.04052734375, 256.075164794921875, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+56,176586,530,1, 567.0928955078125, 2512.0205078125, 216.3976593017578125, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600);

-- blindweed
SET @GGUID := 180900;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,183046,530,1, 516.52716064453125, 8410.1083984375, 21.548248291015625, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876,600,600),
(@GGUID+1,183046,530,1, 804.5830078125, 8626.9287109375, 23.16368484497070312, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+2,183046,530,1, 114.1620025634765625, 5579.595703125, 22.61792182922363281, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+3,183046,530,1, -123.941841125488281, 8639.6845703125, 24.81963539123535156, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+4,183046,530,1, -991.30535888671875, 5124.138671875, 23.27213287353515625, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+5,183046,530,1, 916.09136962890625, 7196.75634765625, 22.75107192993164062, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+6,183046,530,1, 757.83441162109375, 7411.56591796875, 24.25646781921386718, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556,600,600),
(@GGUID+7,183046,530,1, 118.2269973754882812, 7228.89013671875, 22.96633338928222656, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+8,183046,530,1, -261.470703125, 6332.12451171875, 24.72118377685546875, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652,600,600),
(@GGUID+9,183046,530,1, 354.419921875, 8589.826171875, 23.91300773620605468, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389,600,600),
(@GGUID+10,183046,530,1, -440.050018310546875, 5860.9951171875, 22.72543144226074218, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+11,183046,530,1, 113.3076171875, 6507.5751953125, 23.29627227783203125, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+12,183046,530,1, 249.38037109375, 5711.11328125, 23.70977020263671875, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+13,183046,530,1, -63.1420364379882812, 5804.4638671875, 21.608001708984375, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279,600,600),
(@GGUID+14,183046,530,1, 459.28765869140625, 7440.99462890625, 24.17229652404785156, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+15,183046,530,1, 596.2413330078125, 8674.421875, 22.96530914306640625, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+16,183046,530,1, -42.5505638122558593, 8825.2939453125, 22.94526481628417968, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+17,183046,530,1, -43.9296875, 8580.5283203125, 23.18890762329101562, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163,600,600),
(@GGUID+18,183046,530,1, 218.4752655029296875, 8772.73828125, 23.45801353454589843, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+19,183046,530,1, -842.69879150390625, 5968.72998046875, 22.76998519897460937, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207,600,600),
(@GGUID+20,183046,530,1, -173.418411254882812, 8920.58203125, 23.71727180480957031, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+21,183046,530,1, 418.667877197265625, 5834.18896484375, 23.31867408752441406, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+22,183046,530,1, 601.34735107421875, 6321.09375, 23.58871841430664062, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+23,183046,530,1, -381.52691650390625, 8212.5341796875, 24.95810127258300781, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+24,183046,530,1, -512.3338623046875, 6197.67138671875, 22.26173210144042968, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+25,183046,530,1, 160.2213592529296875, 8077.13525390625, 22.88630104064941406, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+26,183046,530,1, 654.9500732421875, 5775.6689453125, 22.5824432373046875, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+27,183046,530,1, 59.71354293823242187, 8889.6494140625, 23.7206878662109375, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+28,183046,530,1, -320.6632080078125, 6771.46630859375, 25.75997161865234375, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+29,183046,530,1, -253.394851684570312, 6649.61181640625, 20.7413787841796875, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+30,183046,530,1, -1017.51300048828125, 5606.1689453125, 23.1497955322265625, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486,600,600),
(@GGUID+31,183046,530,1, -36.6613502502441406, 7358.7333984375, 23.11462783813476562, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+32,183046,530,1, -11.7740888595581054, 6735.94384765625, 22.74656105041503906, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+33,183046,530,1, -162.536026000976562, 8791.1640625, 24.60641288757324218, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+34,183046,530,1, -305.6632080078125, 8458.6953125, 23.56711387634277343, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+35,183046,530,1, -597.87066650390625, 5533.49462890625, 23.04549598693847656, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+36,183046,530,1, -48.8114166259765625, 7511.3125, 22.38759994506835937, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468,600,600),
(@GGUID+37,183046,530,1, -307.31878662109375, 7909.79150390625, 21.29434013366699218, 5.288348197937011718, 0, 0, -0.4771585464477539, 0.878817260265350341,600,600),
(@GGUID+38,183046,530,1, 168.32476806640625, 7354.19775390625, 23.81949043273925781, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722,600,600),
(@GGUID+39,183046,530,1, -118.717018127441406, 8160.7275390625, 23.2099151611328125, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+40,183046,530,1, 377.635406494140625, 8868.521484375, 22.68204879760742187, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+41,183046,530,1, -105.949867248535156, 8909.2001953125, 20.57558822631835937, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+42,183046,530,1, 1045.4549560546875, 8017.04931640625, 23.31528091430664062, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938,600,600),
(@GGUID+43,183046,530,1, 1154.3638916015625, 7718.49462890625, 25.89087295532226562, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+44,183046,530,1, -499.167205810546875, 6327.853515625, 21.84025192260742187, 4.136432647705078125, 0, 0, -0.87881660461425781, 0.477159708738327026,600,600),
(@GGUID+45,183046,530,1, 759.36468505859375, 6372.89892578125, 21.16085433959960937, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+46,183046,530,1, 56.2060546875, 5838.7392578125, 22.68503761291503906, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+47,183046,530,1, -30.4102649688720703, 5955.9365234375, 24.13216400146484375, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+48,183046,530,1, 909.6668701171875, 7739.564453125, 22.76311874389648437, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166,600,600),
(@GGUID+49,183046,530,1, -58.3383255004882812, 7842.48193359375, 24.91103553771972656, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+50,183046,530,1, 809.5263671875, 7993.18505859375, 23.19783592224121093, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023,600,600),
(@GGUID+51,183046,530,1, -490.684478759765625, 5325.19189453125, 23.59734535217285156, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+52,183046,530,1, 484.918182373046875, 8130.46875, 21.91169548034667968, -3.05432605743408203, 0, 0, 0.999048233032226562, -0.04361942410469055,600,600),
(@GGUID+53,183046,530,1, 618.1192626953125, 7522.06005859375, 22.37494468688964843, 1.378810048103332519, 0, 0, 0.636078178882598876, 0.771624624729156494,600,600),
(@GGUID+54,183046,530,1, -60.9344635009765625, 5419.52783203125, 23.81077003479003906, -1.50098299980163574, 0, 0, 0.681998312473297119, -0.731353759765625,600,600),
(@GGUID+55,183046,530,1, 848.22265625, 7037.78515625, 22.70704269409179687, -0.43633255362510681, 0, 0, 0.216439723968505859, -0.97629600763320922,600,600),
(@GGUID+56,183046,530,1, 890.77716064453125, 8375.9501953125, 23.36104774475097656, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+57,183046,530,1, 538.99072265625, 6621.42041015625, 24.03618049621582031, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+58,183046,530,1, -773.40301513671875, 5541.00244140625, 23.16878128051757812, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600);

-- liferoot
SET @GGUID := 181000;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,2041,530,1, 3511.020751953125, 2874.342041015625, 141.9890594482421875, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+1,2041,530,1, 3559.17626953125, 2933.131103515625, 141.97064208984375, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+2,2041,530,1, 4289.3935546875, 2964.345458984375, 123.5027236938476562, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+3,2041,530,1, 4333.38037109375, 2999.681884765625, 123.6123733520507812, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+4,2041,530,1, 4474.5888671875, 3032.776123046875, 123.8029403686523437, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+5,2041,530,1, 4444.06689453125, 2918.318603515625, 123.5486526489257812, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+6,2041,530,1, 3457.852294921875, 2843.4599609375, 141.8370513916015625, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+7,2041,530,1, 3500.8916015625, 2960.67626953125, 142.48712158203125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+8,2041,530,1, 3455.556884765625, 2898.902099609375, 142.039154052734375, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600);

-- hellfire spineleaf
SET @GGUID := 181100;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181372,530,1, -871.4619140625, 2307.032958984375, -7.35787487030029296, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+1,181372,530,1, -836.1373291015625, 2386.140380859375, 5.045075893402099609, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+2,181372,530,1, -893.02362060546875, 2385.77880859375, -3.76989603042602539, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+3,181372,530,1, -846.91998291015625, 2438.724853515625, 8.726840019226074218, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+4,181372,530,1, -805.8046875, 2461.9931640625, 26.72580909729003906, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+5,181372,530,1, -912.8690185546875, 2440.898681640625, 1.337568998336791992, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+6,181372,530,1, -959.9432373046875, 2437.3310546875, 3.40940093994140625, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+7,181372,530,1, -1118.244140625, 2399.22314453125, 25.30172348022460937, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257,600,600),
(@GGUID+8,181372,530,1, -1147.927734375, 2396.6650390625, 30.54867935180664062, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+9,181372,530,1, -1016.728271484375, 2243.095947265625, 16.53837394714355468, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+10,181372,530,1, -1138.2489013671875, 2195.537353515625, 42.83773422241210937, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+11,181372,530,1, -333.182769775390625, 2233.21142578125, 63.54898452758789062, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+12,181372,530,1, -290.92156982421875, 2251.041259765625, 63.16225051879882812, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+13,181372,530,1, -1185.4871826171875, 2133.80615234375, 67.1431732177734375, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173,600,600),
(@GGUID+14,181372,530,1, -709.4482421875, 1823.5928955078125, 75.23741912841796875, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+15,181372,530,1, -612.28985595703125, 1920.91064453125, 85.86244964599609375, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+17,181372,530,1, -371.117401123046875, 2187.909912109375, 71.19646453857421875, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631,600,600),
(@GGUID+18,181372,530,1, -359.604644775390625, 2306.948486328125, 50.60813140869140625, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+19,181372,530,1, -574.73016357421875, 1956.6885986328125, 83.5060272216796875, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+21,181372,530,1, -403.14947509765625, 2274.995361328125, 53.347900390625, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+22,181372,530,1, -466.6514892578125, 2367.13134765625, 38.6199493408203125, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+23,181372,530,1, -340.354339599609375, 2410.23583984375, 42.90453720092773437, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+24,181372,530,1, -339.542022705078125, 2408.048583984375, 43.07239532470703125, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+25,181372,530,1, -694.2236328125, 2052.533935546875, 43.03039932250976562, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+26,181372,530,1, -708.1788330078125, 2150.91748046875, 27.05652809143066406, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+28,181372,530,1, -697.41815185546875, 2203.668212890625, 22.86996650695800781, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582,600,600),
(@GGUID+29,181372,530,1, -533.99542236328125, 2161.449462890625, 80.56928253173828125, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904,600,600),
(@GGUID+30,181372,530,1, -321.827117919921875, 2464.794189453125, 40.44308853149414062, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+31,181372,530,1, -708.40020751953125, 2273.5849609375, 10.79257011413574218, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+32,181372,530,1, -642.172119140625, 2314.280029296875, 26.16653060913085937, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697,600,600),
(@GGUID+33,181372,530,1, -376.9642333984375, 2461.871826171875, 40.47638320922851562, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+34,181372,530,1, -688.000244140625, 2320.1953125, 38.53867721557617187, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+35,181372,530,1, -538.08282470703125, 2260.49853515625, 44.39711761474609375, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+36,181372,530,1, -712.5029296875, 2309.921875, 20.46482658386230468, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+37,181372,530,1, -686.62744140625, 2387.9462890625, 42.86916732788085937, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+38,181372,530,1, -750.41741943359375, 2253.2236328125, 12.14508533477783203, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+39,181372,530,1, -962.28125, 2531.901611328125, 5.534515857696533203, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+40,181372,530,1, -832.95941162109375, 2338.507080078125, -8.14002132415771484, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582,600,600),
(@GGUID+41,181372,530,1, -808.8045654296875, 2354.36328125, 8.283197402954101562, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+42,181372,530,1, -832.31097412109375, 2297.70751953125, -11.3064556121826171, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279,600,600),
(@GGUID+43,181372,530,1, -421.7987060546875, 2427.960205078125, 39.62500381469726562, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341,600,600),
(@GGUID+44,181372,530,1, -393.45721435546875, 2475.546875, 41.14463424682617187, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+45,181372,530,1, -421.058624267578125, 2454.2548828125, 39.69313430786132812, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+46,181372,530,1, -366.163726806640625, 2518.26513671875, 43.98521041870117187, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724,600,600),
(@GGUID+47,181372,530,1, -899.54608154296875, 2456.4111328125, -2.99817299842834472, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+48,181372,530,1, -1226.6343994140625, 2462.655517578125, 59.73295974731445312, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+49,181372,530,1, -884.14215087890625, 2502.230224609375, 11.29920673370361328, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+50,181372,530,1, -810.67987060546875, 2530.697265625, 39.34445953369140625, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687,600,600),
(@GGUID+51,181372,530,1, -854.42095947265625, 2549.562255859375, 30.6187744140625, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+52,181372,530,1, -915.5859375, 2544.718017578125, 9.356454849243164062, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+53,181372,530,1, -1253.7860107421875, 2509.73583984375, 41.18355941772460937, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+54,181372,530,1, -1069.0714111328125, 2378.37158203125, 18.73752403259277343, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+55,181372,530,1, -1017.44921875, 2582.708984375, 1.117174029350280761, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+56,181372,530,1, -943.619384765625, 2215.848876953125, 8.958065986633300781, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+57,181372,530,1, -856.392822265625, 2223.103759765625, 6.795496940612792968, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+58,181372,530,1, -896.66033935546875, 2612.96875, 31.1295166015625, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+59,181372,530,1, -885.49945068359375, 2601.1689453125, 32.88984298706054687, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+60,181372,530,1, -1428.426513671875, 2626.528564453125, -36.3503303527832031, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+61,181372,530,1, -882.9517822265625, 2108.70703125, 20.87372779846191406, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+62,181372,530,1, -859.56988525390625, 2056.494873046875, 32.35688018798828125, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+63,181372,530,1, -937.53643798828125, 2103.052001953125, 25.01092720031738281, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+64,181372,530,1, -976.4130859375, 2141.754150390625, 24.79090309143066406, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375,600,600),
(@GGUID+65,181372,530,1, -1045.881591796875, 1971.62548828125, 73.00794219970703125, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+66,181372,530,1, -1023.07672119140625, 1955.7235107421875, 77.986053466796875, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458,600,600),
(@GGUID+67,181372,530,1, -968.97784423828125, 1871.0477294921875, 94.94257354736328125, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+68,181372,530,1, -898.5831298828125, 1868.4388427734375, 82.47602081298828125, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+69,181372,530,1, -844.0926513671875, 1935.8990478515625, 62.72581100463867187, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+70,181372,530,1, -1188.369384765625, 2632.0087890625, 15.31718826293945312, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+71,181372,530,1, -838.20404052734375, 1921.5006103515625, 55.99903488159179687, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+72,181372,530,1, -499.234588623046875, 2116.295654296875, 76.08050537109375, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+73,181372,530,1, -435.648834228515625, 2159.987548828125, 84.25957489013671875, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818,600,600),
(@GGUID+74,181372,530,1, -834.21844482421875, 1954.7723388671875, 47.42523193359375, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873,600,600),
(@GGUID+75,181372,530,1, -1230.269775390625, 2159.498046875, 76.19597625732421875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525,600,600),
(@GGUID+76,181372,530,1, -1261.4310302734375, 2208.3125, 71.1799774169921875, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+77,181372,530,1, -1033.62646484375, 2281.661376953125, 30.44676780700683593, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+78,181372,530,1, -999.81683349609375, 2282.3896484375, 8.205944061279296875, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+79,181372,530,1, -811.89794921875, 2247.84423828125, 3.936038970947265625, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+80,181372,530,1, -755.32940673828125, 2300.524658203125, 3.537821054458618164, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+81,181372,530,1, -777.28741455078125, 2333.388916015625, 12.56954097747802734, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+82,181372,530,1, -570.94024658203125, 2370.553955078125, 41.33637237548828125, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+83,181372,530,1, -529.33758544921875, 2320.74951171875, 40.2432708740234375, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+84,181372,530,1, -363.623931884765625, 2539.017578125, 46.57135772705078125, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+85,181372,530,1, -300.445465087890625, 2503.8974609375, 27.74854469299316406, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+86,181372,530,1, -817.78643798828125, 1849.6978759765625, 83.1298065185546875, 1.518436193466186523, 0, 0, 0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+87,181372,530,1, -747.4730224609375, 2194.802001953125, 14.99405574798583984, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+88,181372,530,1, -699.77630615234375, 2254.819091796875, 17.44823837280273437, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+89,181372,530,1, -495.89459228515625, 1917.531005859375, 92.07568359375, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+90,181372,530,1, -471.593963623046875, 1957.7435302734375, 91.3245086669921875, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+91,181372,530,1, -597.54364013671875, 1926.73828125, 94.18068695068359375, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+92,181372,530,1, -1068.6361083984375, 2264.123779296875, 24.84616661071777343, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798,600,600),
(@GGUID+93,181372,530,1, -870.96527099609375, 1860.7864990234375, 80.2625732421875, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+94,181372,530,1, -1212.894775390625, 2398.280517578125, 46.9992828369140625, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873,600,600),
(@GGUID+95,181372,530,1, -973.13433837890625, 2370.403076171875, 1.493533015251159667, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+96,181372,530,1, -606.60595703125, 2302.73388671875, 31.05476570129394531, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+97,181372,530,1, -872.62353515625, 2035.207275390625, 41.95279312133789062, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+98,181372,530,1, -445.897735595703125, 2223.65185546875, 60.18621826171875, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+99,181372,530,1, -990.619384765625, 2178.052978515625, 15.59610462188720703, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+100,181372,530,1, -948.23199462890625, 2313.77392578125, -1.21154499053955078, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600);

-- felweed
SET @GGUID := 182000;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181270,530,1, 1959.175537109375, 5316.3046875, 154.076812744140625, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+1,181270,530,1, 181.557647705078125, 1751.5535888671875, 35.49597549438476562, 2.949595451354980468, 0, 0, 0.995395660400390625, 0.095851235091686248,600,600),
(@GGUID+2,181270,530,1, -723.8367919921875, 8749.4267578125, 185.7073822021484375, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+3,181270,530,1, 101.6119232177734375, 3462.379638671875, 67.9810943603515625, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+4,181270,530,1, 2679.2822265625, 5546.4052734375, -3.66657590866088867, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+5,181270,530,1, 282.051513671875, 3413.696533203125, 71.69803619384765625, 2.129300594329833984, 0, 0, 0.874619483947753906, 0.484810054302215576,600,600),
(@GGUID+6,181270,530,1, 987.5321044921875, 1813.6351318359375, 124.2253036499023437, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+7,181270,530,1, -437.54730224609375, 2647.197509765625, 56.94921875, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+8,181270,530,1, -3212.802001953125, 5611.21044921875, -2.59548091888427734, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+9,181270,530,1, -570.5186767578125, 4882.93798828125, 39.07356643676757812, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+10,181270,530,1, -2515.026611328125, 1212.50390625, 60.96171951293945312, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291,600,600),
(@GGUID+11,181270,530,1, -4154.78955078125, 728.48028564453125, 4.90126800537109375, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+12,181270,530,1, -280.78277587890625, 3358.78173828125, -48.7614288330078125, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+13,181270,530,1, 47.80305862426757812, 3524.208251953125, 63.21024703979492187, 1.535889506340026855, 0, 0, 0.694658279418945312, 0.719339847564697265,600,600),
(@GGUID+14,181270,530,1, 2664.90576171875, 6093.337890625, 8.114414215087890625, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+15,181270,530,1, -839.7713623046875, 7681.6787109375, 41.10124588012695312, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+16,181270,530,1, -2239.554931640625, 8482.0693359375, -21.944833755493164, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+17,181270,530,1, 2593.0078125, 6150.9970703125, 19.16164588928222656, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+18,181270,530,1, -690.29949951171875, 4832.0927734375, 48.86642074584960937, 5.288348197937011718, 0, 0, -0.4771585464477539, 0.878817260265350341,600,600),
(@GGUID+19,181270,530,1, -1965.994384765625, 6979.3056640625, -88.5663223266601562, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+20,181270,530,1, -349.854278564453125, 2358.084716796875, 45.40595245361328125, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+21,181270,530,1, -3009.63037109375, 2744.533935546875, 69.23740386962890625, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+22,181270,530,1, -15.5515947341918945, 1950.879150390625, 71.09818267822265625, 3.735006093978881835, 0, 0, -0.95630455017089843, 0.292372345924377441,600,600),
(@GGUID+23,181270,530,1, -1933.89453125, 6791.9599609375, -74.6816177368164062, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+24,181270,530,1, 3459.879150390625, 2804.979248046875, 147.393157958984375, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+25,181270,530,1, -708.8555908203125, 3653.264404296875, 29.00376701354980468, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+26,181270,530,1, -3472.748046875, 2540.530029296875, 60.6737823486328125, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+27,181270,530,1, -1890.382568359375, 6603.7041015625, 3.975979089736938476, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+28,181270,530,1, -2778.94775390625, 5048.30712890625, -8.98250102996826171, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+29,181270,530,1, -1943.382568359375, 3805.732177734375, 0.606813013553619384, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+30,181270,530,1, -3406.877685546875, 4461.8115234375, -9.34154415130615234, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285,600,600),
(@GGUID+31,181270,530,1, -556.953125, 3752.587158203125, 28.99510765075683593, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+32,181270,530,1, -1156.8177490234375, 8326.9775390625, 22.23151779174804687, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+33,181270,530,1, 1756.5953369140625, 6513.93212890625, 2.422319889068603515, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+34,181270,530,1, -1489.0718994140625, 4509.07666015625, 37.37413787841796875, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+35,181270,530,1, -3281.60888671875, 2549.078369140625, 60.52278518676757812, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+36,181270,530,1, -2597.128662109375, 6478.2265625, 20.56040191650390625, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+37,181270,530,1, 518.18792724609375, 3146.171142578125, 18.01983642578125, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+38,181270,530,1, -1122.7479248046875, 2222.3291015625, 34.1435546875, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+39,181270,530,1, 335.498931884765625, 2377.4677734375, 89.975311279296875, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347,600,600),
(@GGUID+40,181270,530,1, -2252.10546875, 3673.166748046875, -12.971384048461914, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+41,181270,530,1, 314.207366943359375, 3071.59912109375, 25.89366531372070312, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464,600,600),
(@GGUID+42,181270,530,1, 3187.915283203125, 5048.7001953125, 263.9351806640625, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775,600,600),
(@GGUID+43,181270,530,1, -3442.836669921875, 388.800567626953125, 90.9759979248046875, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+44,181270,530,1, -1012.6370849609375, 4022.24267578125, 80.22281646728515625, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791,600,600),
(@GGUID+45,181270,530,1, -795.618896484375, 7969.1240234375, 68.464111328125, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+46,181270,530,1, -3328.69091796875, 1710.8446044921875, 89.46273040771484375, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759,600,600),
(@GGUID+47,181270,530,1, 3627.135009765625, 5728.54736328125, 1.454272985458374023, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+48,181270,530,1, 1875.67041015625, 6396.69921875, -10.3388652801513671, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+49,181270,530,1, 178.8012237548828125, 2946.298095703125, 23.64269256591796875, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+50,181270,530,1, -2053.870361328125, 8885.8408203125, 30.76617431640625, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+51,181270,530,1, -876.4453125, 4231.7060546875, 39.64957427978515625, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+52,181270,530,1, -2013.2476806640625, 4888.39892578125, 14.04287147521972656, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+53,181270,530,1, -3036.37841796875, 607.9852294921875, -4.34231376647949218, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+54,181270,530,1, 2119.89111328125, 6478.92138671875, 3.621978044509887695, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+55,181270,530,1, 1629.1929931640625, 4773.9931640625, 140.1651611328125, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419,600,600),
(@GGUID+56,181270,530,1, -2299.892333984375, 8627.8095703125, -12.9960899353027343, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+57,181270,530,1, -1382.11328125, 2903.061767578125, -25.8723316192626953, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+58,181270,530,1, 1545.0504150390625, 6964.0537109375, 158.0933380126953125, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+59,181270,530,1, -1693.5347900390625, 4724.1015625, 3.366554021835327148, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+60,181270,530,1, -412.80133056640625, 4322.5146484375, 60.9041900634765625, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+61,181270,530,1, -304.160858154296875, 1747.3079833984375, 63.69697952270507812, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+62,181270,530,1, -985.67755126953125, 2643.654052734375, 10.18059062957763671, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+63,181270,530,1, -2990.066162109375, 2005.4097900390625, 96.23300933837890625, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697,600,600),
(@GGUID+64,181270,530,1, 3422.6767578125, 5202.0517578125, -1.56631898880004882, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787,600,600),
(@GGUID+65,181270,530,1, -2780.47119140625, 3454.06396484375, -30.8132095336914062, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+66,181270,530,1, 1551.9735107421875, 6363.30615234375, 2.83389902114868164, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+67,181270,530,1, -613.0294189453125, 1747.9107666015625, 66.3236846923828125, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+68,181270,530,1, -987.4981689453125, 8453.4736328125, 41.07874679565429687, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419,600,600),
(@GGUID+69,181270,530,1, 2417.667724609375, 6412.6201171875, -10.3388795852661132, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+70,181270,530,1, -1791.2552490234375, 4451.8115234375, 2.092962026596069335, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+71,181270,530,1, -2955.642578125, 4686.5390625, -21.3723907470703125, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562,600,600),
(@GGUID+72,181270,530,1, -3536.53173828125, 2197.482666015625, 79.1514892578125, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+73,181270,530,1, 4975.2685546875, 3052.544921875, 101.20758056640625, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+74,181270,530,1, -961.42535400390625, 8965.251953125, 98.46796417236328125, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+75,181270,530,1, 470.41839599609375, 2769.3203125, 195.26715087890625, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873,600,600),
(@GGUID+76,181270,530,1, -3181.946533203125, 4047.315185546875, 0.724443972110748291, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+77,181270,530,1, 1655.1514892578125, 5079.79736328125, 173.8550872802734375, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+78,181270,530,1, 2639.272216796875, 6548.23388671875, 3.469940900802612304, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+79,181270,530,1, 1796.2508544921875, 4918.38818359375, 171.468597412109375, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+80,181270,530,1, -1168.6695556640625, 8153.876953125, 2.643136978149414062, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+81,181270,530,1, -492.379241943359375, 4723.05419921875, 28.0931243896484375, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+82,181270,530,1, -2748.104248046875, 7727.20849609375, -21.3221797943115234, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+83,181270,530,1, -2485.167236328125, 6130.9462890625, 92.01157379150390625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+84,181270,530,1, -2197.044189453125, 4544.29638671875, -7.65093612670898437, 1.064649581909179687, 0, 0, 0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+85,181270,530,1, -3845.1015625, 2521.055419921875, 83.97948455810546875, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347,600,600),
(@GGUID+86,181270,530,1, -2975.431884765625, 3149.452392578125, 39.07894515991210937, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+87,181270,530,1, -4497.42041015625, 2063.371337890625, 71.49720001220703125, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+88,181270,530,1, -2858.0283203125, 572.957275390625, -10.6725406646728515, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+89,181270,530,1, 24.35731315612792968, 1648.8590087890625, 48.16522216796875, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+90,181270,530,1, 463.518707275390625, 3001.655029296875, 21.41588973999023437, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+91,181270,530,1, -2593.11328125, 7807.306640625, -42.7584075927734375, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419,600,600),
(@GGUID+92,181270,530,1, -1669.1387939453125, 8474.87109375, -19.6820945739746093, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+93,181270,530,1, 1663.9053955078125, 5547.5009765625, 265.251373291015625, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+94,181270,530,1, -884.97540283203125, 3414.15478515625, 85.91704559326171875, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+95,181270,530,1, -2737.294189453125, 7951.94287109375, -41.125152587890625, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+96,181270,530,1, 3680.993896484375, 5475.74072265625, -19.8758583068847656, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+97,181270,530,1, 234.017578125, 2033.1690673828125, 24.21383285522460937, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+98,181270,530,1, -1646.019287109375, 4373.22607421875, 26.35825157165527343, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101,600,600),
(@GGUID+99,181270,530,1, -1169.564208984375, 8606.29296875, 39.43650436401367187, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+100,181270,530,1, -3282.525390625, 5416.73193359375, -17.1129608154296875, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106,600,600),
(@GGUID+101,181270,530,1, 2585.365478515625, 6261.14306640625, 11.94855976104736328, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+102,181270,530,1, -3473.289306640625, 5897.6884765625, -30.1234683990478515, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+103,181270,530,1, 2813.987548828125, 6317.06298828125, 12.25333023071289062, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958,600,600),
(@GGUID+104,181270,530,1, -3332.79736328125, 2829.645751953125, 132.7361297607421875, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+105,181270,530,1, -222.5107421875, 2917.18994140625, -56.0718612670898437, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562,600,600),
(@GGUID+106,181270,530,1, 3561.4482421875, 5180.40283203125, -5.18557405471801757, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+107,181270,530,1, -3352.791015625, 2956.482666015625, 169.87896728515625, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+108,181270,530,1, -2243.8291015625, 5045.900390625, -7.71486282348632812, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+109,181270,530,1, -4044.069580078125, 2514.87060546875, 133.8511505126953125, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+110,181270,530,1, 693.5281982421875, 1788.7296142578125, 119.979248046875, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+111,181270,530,1, -1091.892333984375, 8819.0517578125, 102.7584991455078125, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+112,181270,530,1, -3246.625, 2188.4755859375, 72.4007568359375, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+113,181270,530,1, -3754.430908203125, 4456.4072265625, -7.69472694396972656, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958,600,600),
(@GGUID+114,181270,530,1, 385.133575439453125, 2180.983642578125, 118.3580703735351562, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+115,181270,530,1, 449.901031494140625, 2141.553955078125, 117.4507827758789062, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+116,181270,530,1, -2565.380126953125, 3303.530517578125, -6.2140817642211914, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125,600,600),
(@GGUID+117,181270,530,1, 2267.950439453125, 6378.94384765625, -9.99528789520263671, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+118,181270,530,1, 3163.693603515625, 5393.58544921875, 145.5628204345703125, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+119,181270,530,1, 2645.213623046875, 5910.8349609375, -6.70987176895141601, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468,600,600),
(@GGUID+120,181270,530,1, 2291.837158203125, 5606.37353515625, 270.7681884765625, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+121,181270,530,1, -866.2265625, 8244.2490234375, 30.20259666442871093, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803,600,600),
(@GGUID+122,181270,530,1, 2018.4366455078125, 6336.8671875, -3.76905989646911621, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556,600,600),
(@GGUID+123,181270,530,1, 3973.690673828125, 3246.616455078125, 131.142730712890625, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+124,181270,530,1, 2792.837890625, 5292.7197265625, 262.106048583984375, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+125,181270,530,1, -718.670166015625, 8876.1767578125, 186.5939788818359375, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+126,181270,530,1, 2.424751043319702148, 3245.54833984375, 18.57792282104492187, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+127,181270,530,1, -879.46484375, 3145.910888671875, 16.16082382202148437, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+128,181270,530,1, -2560.967041015625, 6270.7978515625, 16.59729385375976562, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+129,181270,530,1, -486.3038330078125, 2060.8662109375, 83.78569793701171875, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208,600,600),
(@GGUID+130,181270,530,1, -417.726470947265625, 2080.677734375, 91.45380401611328125, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+131,181270,530,1, -778.9266357421875, 3206.587158203125, 13.64073657989501953, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+132,181270,530,1, -3343.44091796875, 2364.9033203125, 63.73624038696289062, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+133,181270,530,1, -2584.749267578125, 1082.1043701171875, 57.76280975341796875, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875,600,600),
(@GGUID+134,181270,530,1, 2859.968017578125, 5425.53466796875, 149.1719970703125, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+135,181270,530,1, 2379.1875, 5345.98974609375, 260.90478515625, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+136,181270,530,1, -2358.638671875, 7195.85693359375, -148.361007690429687, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+137,181270,530,1, 71.45014190673828125, 4017.896240234375, 73.69306182861328125, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+138,181270,530,1, 4358.25439453125, 2908.413330078125, 149.4796142578125, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+139,181270,530,1, -2726.661376953125, 1124.7760009765625, 53.994384765625, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+140,181270,530,1, 4098.45166015625, 2810.759521484375, 136.594085693359375, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+141,181270,530,1, -779.208984375, 3842.186279296875, 109.3927230834960937, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+142,181270,530,1, 4490.3330078125, 2939.572509765625, 133.5216827392578125, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+143,181270,530,1, -237.220169067382812, 3850.483642578125, 82.21915435791015625, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+144,181270,530,1, -2334.0361328125, 3882.369873046875, 4.007988929748535156, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+145,181270,530,1, -1447.1385498046875, 8787.318359375, 29.10570907592773437, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267,600,600),
(@GGUID+146,181270,530,1, -924.55047607421875, 3247.47265625, 40.10371780395507812, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+147,181270,530,1, -883.68096923828125, 1934.2764892578125, 67.23612213134765625, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+148,181270,530,1, -1902.6260986328125, 7157.9990234375, -93.2197494506835937, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+149,181270,530,1, -2777.161865234375, 8551.1923828125, -35.7072029113769531, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958,600,600),
(@GGUID+150,181270,530,1, -2344.021240234375, 6990.22119140625, -8.98702716827392578, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+151,181270,530,1, -2841.3076171875, 5326.83935546875, -8.22265052795410156, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+152,181270,530,1, 3197.818603515625, 5707.29443359375, -1.37523794174194335, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291,600,600),
(@GGUID+153,181270,530,1, -2080.8515625, 7246.724609375, -44.4892196655273437, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+154,181270,530,1, -989.554931640625, 2048.30029296875, 67.04486083984375, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+155,181270,530,1, 3250.06689453125, 5518.77587890625, 144.0245513916015625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+156,181270,530,1, -1522.73095703125, 8999.9345703125, 53.5568084716796875, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+157,181270,530,1, -3016.96630859375, 6543.48681640625, 98.20247650146484375, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+158,181270,530,1, 3620.805908203125, 2871.930908203125, 154.897552490234375, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+159,181270,530,1, -2181.880126953125, 3837.200439453125, 3.58793807029724121, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+160,181270,530,1, -1985.427978515625, 7853.6259765625, -36.0079154968261718, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+161,181270,530,1, -2630.5078125, 5339.6005859375, 8.015984535217285156, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+162,181270,530,1, -2785.291748046875, 1263.8194580078125, 74.978851318359375, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+163,181270,530,1, -3460.603271484375, 2219.2890625, 71.37694549560546875, 5.84685373306274414, 0, 0, -0.21643924713134765, 0.976296067237854003,600,600),
(@GGUID+164,181270,530,1, 4025.717529296875, 3161.218017578125, 148.6748504638671875, 1.85004889965057373, 0, 0, 0.798635482788085937, 0.60181504487991333,600,600),
(@GGUID+165,181270,530,1, -1666.4923095703125, 6458.82666015625, 31.28053092956542968, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+166,181270,530,1, 3479.640380859375, 5651.6748046875, -5.51408195495605468, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+167,181270,530,1, -2983.006591796875, 5182.337890625, -20.9643898010253906, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+168,181270,530,1, 418.7919921875, 2484.550048828125, 147.0299530029296875, 3.001946926116943359, 0, 0, 0.997563362121582031, 0.069766148924827575,600,600),
(@GGUID+169,181270,530,1, -53.9215507507324218, 4644.77197265625, 39.16524124145507812, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+170,181270,530,1, -2503.5087890625, 4157.88427734375, 1.296424031257629394, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+171,181270,530,1, -3582.3212890625, 5402.1259765625, -16.4535179138183593, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+172,181270,530,1, -2196.596435546875, 6903.95947265625, -5.44303083419799804, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+173,181270,530,1, -2203.651611328125, 7579.23193359375, -22.3946743011474609, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+174,181270,530,1, 22.9423828125, 4507.650390625, 66.9119720458984375, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+175,181270,530,1, -2526.1953125, 5216.36572265625, 3.543680906295776367, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376,600,600),
(@GGUID+176,181270,530,1, -942.853515625, 2276.759521484375, 3.092933893203735351, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697,600,600),
(@GGUID+177,181270,530,1, 4330.90625, 3025.989501953125, 128.835174560546875, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+178,181270,530,1, 1813.4769287109375, 5613.39208984375, 262.872039794921875, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873,600,600),
(@GGUID+179,181270,530,1, -904.8145751953125, 2366.698486328125, -5.53097820281982421, 5.84685373306274414, 0, 0, -0.21643924713134765, 0.976296067237854003,600,600),
(@GGUID+180,181270,530,1, 137.6005859375, 4638.2099609375, 67.84474945068359375, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722,600,600),
(@GGUID+181,181270,530,1, -1832.325927734375, 8853.400390625, 29.18469619750976562, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+182,181270,530,1, 5045.09619140625, 2955.326171875, 90.19199371337890625, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+183,181270,530,1, 4195.73583984375, 3219.100830078125, 176.838836669921875, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+184,181270,530,1, -1172.956787109375, 2096.99365234375, 69.6974945068359375, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+185,181270,530,1, -2867.061767578125, 8052.43505859375, -27.949350357055664, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+186,181270,530,1, 148.291778564453125, 4840.6103515625, 79.2071380615234375, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023,600,600),
(@GGUID+187,181270,530,1, -2408.149658203125, 1793.30908203125, 2.706779956817626953, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+188,181270,530,1, -2464.444580078125, 1625.0091552734375, -19.4589118957519531, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576,600,600),
(@GGUID+189,181270,530,1, 4123.822265625, 3238.7783203125, 183.5236358642578125, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173,600,600),
(@GGUID+190,181270,530,1, 3652.259521484375, 5585.91552734375, -15.1289739608764648, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+191,181270,530,1, -28.0925025939941406, 3895.123291015625, 85.95383453369140625, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+192,181270,530,1, 3989.478271484375, 3345.485595703125, 120.831146240234375, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+193,181270,530,1, -1651.099365234375, 7064.0859375, 4.757121086120605468, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+194,181270,530,1, -486.2208251953125, 4842.068359375, 30.30616188049316406, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+195,181270,530,1, -2212.07861328125, 4756.77978515625, 0.745199978351593017, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755,600,600),
(@GGUID+196,181270,530,1, -3081.8984375, 1863.2706298828125, 140.5672149658203125, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.98325502872467041,600,600),
(@GGUID+197,181270,530,1, -2860.635986328125, 8134.19091796875, -37.5211105346679687, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+198,181270,530,1, -284.93841552734375, 3542.62109375, 0.05837000161409378, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486,600,600),
(@GGUID+199,181270,530,1, -1742.2044677734375, 6723.84619140625, -16.7038860321044921, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+200,181270,530,1, -2878.94970703125, 6353.845703125, 87.65465545654296875, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+201,181270,530,1, -3232.3359375, 2417.91357421875, 62.6110992431640625, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+202,181270,530,1, -2142.38134765625, 4635.9541015625, -8.805938720703125, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+203,181270,530,1, -2045.2022705078125, 4654.8359375, -5.04274177551269531, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+204,181270,530,1, -4512.46630859375, 1789.6236572265625, 171.5443878173828125, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+205,181270,530,1, -1507.7281494140625, 6832.26171875, 4.095118999481201171, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+206,181270,530,1, -2584.222900390625, 8654.5283203125, -24.6708297729492187, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+207,181270,530,1, -358.189605712890625, 4286.703125, 75.89471435546875, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+208,181270,530,1, -463.74066162109375, 2913.233154296875, 25.99996376037597656, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+209,181270,530,1, 3389.32373046875, 5478.20263671875, 144.5883331298828125, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046,600,600),
(@GGUID+210,181270,530,1, -1890.076171875, 4557.4052734375, 9.94687652587890625, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+211,181270,530,1, -3152.41162109375, 1922.4283447265625, 123.0524520874023437, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873,600,600),
(@GGUID+212,181270,530,1, -2626.729736328125, 8060.91943359375, -46.9631843566894531, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+213,181270,530,1, -3101.451416015625, 1517.77734375, 33.61541366577148437, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+214,181270,530,1, -3774.47998046875, 1826.111572265625, 90.42478179931640625, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+215,181270,530,1, -2774.85009765625, 3842.681396484375, -8.47475719451904296, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+216,181270,530,1, -918.33984375, 7891.29541015625, 34.795562744140625, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+217,181270,530,1, -717.19317626953125, 3376.673828125, 50.20883941650390625, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+218,181270,530,1, -3519.424560546875, 2421.677001953125, 75.08148956298828125, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419,600,600),
(@GGUID+219,181270,530,1, -1119.086669921875, 2921.8359375, -1.92210197448730468, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208,600,600),
(@GGUID+220,181270,530,1, -3412.677490234375, 811.71441650390625, -30.9066810607910156, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+221,181270,530,1, -128.207794189453125, 4496.3759765625, 48.10807037353515625, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+222,181270,530,1, -1305.851806640625, 8377.9423828125, 3.100720882415771484, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+223,181270,530,1, 4096.17529296875, 3327.12109375, 156.5975799560546875, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+224,181270,530,1, -2426.718017578125, 3414.125732421875, -20.9231853485107421, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958,600,600),
(@GGUID+225,181270,530,1, -1437.8646240234375, 4679.67041015625, 19.05379104614257812, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+226,181270,530,1, -3985.346435546875, 920.04840087890625, 13.15874004364013671, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166,600,600),
(@GGUID+227,181270,530,1, -610.158203125, 4341.05029296875, 55.23437881469726562, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+228,181270,530,1, -810.5679931640625, 8467.80859375, 36.16676712036132812, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+229,181270,530,1, -698.14825439453125, 4331.71484375, 55.07080459594726562, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+230,181270,530,1, 2065.790771484375, 4852.46044921875, 148.65386962890625, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+231,181270,530,1, 3113.8193359375, 5580.14794921875, 147.16094970703125, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+232,181270,530,1, -318.212890625, 4438.2158203125, 56.00876617431640625, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.98325502872467041,600,600),
(@GGUID+233,181270,530,1, -1207.388916015625, 8813.5712890625, 40.713287353515625, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+234,181270,530,1, 5174.58056640625, 2919.709228515625, 66.5461273193359375, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+235,181270,530,1, -1583.39453125, 4645.5625, 7.895083904266357421, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+236,181270,530,1, -2236.843994140625, 6619.56689453125, -1.21142494678497314, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+237,181270,530,1, 2979.755615234375, 5070.7783203125, 266.170257568359375, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+238,181270,530,1, 2939.95458984375, 5634.15283203125, 147.5662384033203125, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+239,181270,530,1, -2489.48779296875, 6293.97998046875, 32.86483383178710937, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562,600,600),
(@GGUID+240,181270,530,1, -1661.3697509765625, 9021.4658203125, 64.4974212646484375, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+241,181270,530,1, -1938.23291015625, 4144.90185546875, 3.226237058639526367, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697,600,600),
(@GGUID+242,181270,530,1, -3838.013427734375, 573.85589599609375, 72.06610870361328125, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+243,181270,530,1, -2817.438720703125, 3024.831298828125, 22.88495254516601562, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106,600,600),
(@GGUID+244,181270,530,1, 3283.772705078125, 5129.90966796875, 251.131134033203125, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+245,181270,530,1, -1514.148193359375, 7028.251953125, 9.256732940673828125, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347,600,600),
(@GGUID+246,181270,530,1, -3463.303955078125, 4301.19775390625, -13.3529682159423828, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+247,181270,530,1, -1210.064208984375, 8956.0361328125, 56.26682281494140625, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+248,181270,530,1, -616.34027099609375, 3880.592041015625, 29.37146377563476562, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+249,181270,530,1, -3199.981689453125, 2364.591064453125, 62.5583648681640625, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+250,181270,530,1, 2746.3095703125, 6397.4873046875, 2.081137895584106445, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+251,181270,530,1, -1633.193603515625, 7397.666015625, 1.396775007247924804, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+252,181270,530,1, -2092.259521484375, 3689.342529296875, -48.0474166870117187, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556,600,600),
(@GGUID+253,181270,530,1, -2415.964111328125, 8142.6337890625, -40.3078041076660156, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+254,181270,530,1, -2457.5634765625, 8050.6162109375, -45.1500740051269531, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687,600,600),
(@GGUID+255,181270,530,1, -1683.9195556640625, 7563.931640625, -2.64572310447692871, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+256,181270,530,1, -3149.9296875, 3045.950927734375, 102.595703125, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+257,181270,530,1, 288.375579833984375, 2452.00732421875, 93.2488861083984375, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+258,181270,530,1, -3020.115966796875, 4395.36572265625, -13.0141124725341796, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+259,181270,530,1, -2735.99169921875, 705.62628173828125, -17.7810173034667968, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+260,181270,530,1, 3713.228271484375, 5180.90185546875, 4.362649917602539062, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+261,181270,530,1, -1481.3150634765625, 6340.96337890625, 36.19689178466796875, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+262,181270,530,1, 2282.55419921875, 6333.18603515625, -0.08590199798345565, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+263,181270,530,1, -1884.2564697265625, 7806.99560546875, -95.17120361328125, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+264,181270,530,1, 2619.494140625, 5160.423828125, 264.159332275390625, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818,600,600),
(@GGUID+265,181270,530,1, -1227.163818359375, 4092.825439453125, 68.62851715087890625, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+266,181270,530,1, -1156.8125, 4211.673828125, 17.92272377014160156, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+267,181270,530,1, -1656.642333984375, 9182.8330078125, 92.513916015625, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+268,181270,530,1, -1701.54541015625, 6325.5703125, 52.12971878051757812, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+269,181270,530,1, 2397.697021484375, 5766.9609375, 272.32257080078125, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+270,181270,530,1, -3086.4072265625, 2957.285888671875, 91.07639312744140625, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+271,181270,530,1, 537.11602783203125, 2828.452392578125, 214.1414642333984375, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+272,181270,530,1, -2172.490478515625, 4422.37255859375, 1.436987996101379394, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+273,181270,530,1, 1799.4375, 6314.2236328125, 1.390928983688354492, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+274,181270,530,1, -1471.5074462890625, 8186.57470703125, -14.1626253128051757, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+275,181270,530,1, -3711.733642578125, 902.48028564453125, 64.7131805419921875, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+276,181270,530,1, -743.117431640625, 4403.10693359375, 78.97830963134765625, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+277,181270,530,1, 3467.800537109375, 5784.00634765625, 4.558095932006835937, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+278,181270,530,1, -1180.3746337890625, 3325.052734375, 103.4666824340820312, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525,600,600),
(@GGUID+279,181270,530,1, -1914.1458740234375, 7368.51416015625, -19.1673908233642578, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+280,181270,530,1, -839.7110595703125, 4355.72802734375, 59.34316635131835937, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+281,181270,530,1, -2810.955810546875, 3619.201171875, -19.9222545623779296, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+282,181270,530,1, 1593.1890869140625, 5462.17822265625, 265.814117431640625, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+283,181270,530,1, -3308.3056640625, 1053.4322509765625, 51.336456298828125, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+284,181270,530,1, -2561.598876953125, 3597.896240234375, 5.97321176528930664, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+285,181270,530,1, 3103.456298828125, 5869.22900390625, -5.46244287490844726, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+286,181270,530,1, 1757.865478515625, 5405.56787109375, 154.0793609619140625, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+287,181270,530,1, -3048.406494140625, 1657.6881103515625, 66.65238189697265625, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+288,181270,530,1, -676.75225830078125, 8267.8935546875, 52.18053436279296875, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+289,181270,530,1, 1843.439697265625, 4820.275390625, 148.1183319091796875, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+290,181270,530,1, -2412.022705078125, 7903.83935546875, -43.8316650390625, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+291,181270,530,1, 1833.177490234375, 6078.36767578125, 137.8988037109375, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+292,181270,530,1, -1646.325927734375, 6884.30322265625, -12.6111841201782226, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+293,181270,530,1, 2420.123046875, 6522.09765625, 3.4699249267578125, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+294,181270,530,1, -3680.85107421875, 2106.63232421875, 75.71305084228515625, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873,600,600),
(@GGUID+295,181270,530,1, -2211.213134765625, 7922.509765625, -17.5025959014892578, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+296,181270,530,1, 2183.64599609375, 6546.85205078125, -0.16528199613094329, 4.136432647705078125, 0, 0, -0.87881660461425781, 0.477159708738327026,600,600),
(@GGUID+297,181270,530,1, -729.7384033203125, 8571.3095703125, 47.20669937133789062, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+298,181270,530,1, -2185.989501953125, 3301.812255859375, -30.2596435546875, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+299,181270,530,1, -2053.14404296875, 3902.3984375, 0.661324024200439453, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+300,181270,530,1, 2352.539794921875, 6306.9921875, 14.87240791320800781, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+301,181270,530,1, 11.67122364044189453, 4854.41357421875, 61.17548370361328125, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+302,181270,530,1, -3847.2900390625, 1719.4176025390625, 97.6811676025390625, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+303,181270,530,1, -2187.439697265625, 3516.36572265625, -38.8392219543457031, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+304,181270,530,1, -948.76226806640625, 3015.299560546875, 13.85963058471679687, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125,600,600),
(@GGUID+305,181270,530,1, 114.6197891235351562, 4676.2744140625, 65.30330657958984375, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+306,181270,530,1, -2929.729736328125, 7374.33447265625, 11.87618637084960937, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+307,181270,530,1, -2440.0322265625, 7517.55322265625, -5.28535795211791992, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+308,181270,530,1, -4031.432373046875, 2658.716064453125, 126.1114120483398437, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+309,181270,530,1, -2419.243896484375, 7411.9453125, -169.55792236328125, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+310,181270,530,1, -1152.67041015625, 8498.3486328125, 29.70065689086914062, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+311,181270,530,1, -2066.9873046875, 7976.744140625, -15.4159736633300781, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+312,181270,530,1, -2084.984619140625, 4474.55126953125, 4.083080768585205078, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+313,181270,530,1, -1036.2633056640625, 8233.3876953125, 12.19756507873535156, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+314,181270,530,1, -1269.37353515625, 1378.7708740234375, 9.757666587829589843, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+315,181270,530,1, -1174.851318359375, 1437.4461669921875, 32.72005462646484375, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876,600,600),
(@GGUID+316,181270,530,1, 1473.0147705078125, 6514.89599609375, -10.338846206665039, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+317,181270,530,1, -889.8623046875, 1491.1126708984375, 34.03264236450195312, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+318,181270,530,1, -2445.685791015625, 8570.5400390625, -28.9182605743408203, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+319,181270,530,1, -3659.04345703125, 2484.955322265625, 77.529998779296875, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207,600,600),
(@GGUID+320,181270,530,1, 455.197540283203125, 3382.353271484375, 70.577117919921875, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+321,181270,530,1, -4162.3505859375, 1418.114990234375, 114.0054168701171875, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583,600,600),
(@GGUID+322,181270,530,1, -2563.599609375, 7950.0537109375, -53.5916290283203125, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257,600,600),
(@GGUID+323,181270,530,1, 3378.893798828125, 2997.12451171875, 142.048370361328125, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111,600,600),
(@GGUID+324,181270,530,1, -88.1924362182617187, 1816.717041015625, 65.72290802001953125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+325,181270,530,1, 476.126190185546875, 3712.150146484375, 187.1722412109375, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+326,181270,530,1, -4500.56982421875, 1328.13134765625, 125.1427536010742187, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+327,181270,530,1, -3105.188720703125, 5825.33251953125, 5.744594097137451171, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347,600,600),
(@GGUID+328,181270,530,1, -1051.0484619140625, 7814.9052734375, 25.81816291809082031, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+329,181270,530,1, 3259.889892578125, 5832.8349609375, 0.016111999750137329, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+330,181270,530,1, -4488.65869140625, 2280.329833984375, 30.61569976806640625, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+331,181270,530,1, -1714.0806884765625, 8171.01416015625, -20.8378562927246093, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+332,181270,530,1, -3377.30908203125, 5789.1875, -0.31719300150871276, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+333,181270,530,1, -883.296142578125, 6949.90966796875, 35.12230682373046875, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375,600,600),
(@GGUID+334,181270,530,1, -838.4842529296875, 2926.849853515625, 9.448872566223144531, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+335,181270,530,1, -1195.4718017578125, 6624.71630859375, 65.3417816162109375, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111,600,600),
(@GGUID+336,181270,530,1, 1933.8568115234375, 6682.67919921875, 147.0612335205078125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+337,181270,530,1, -2739.2646484375, 6585.96337890625, 28.07497787475585937, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+338,181270,530,1, -1321.23828125, 7921.95556640625, -95.0569229125976562, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+339,181270,530,1, -2580.926025390625, 1385.0054931640625, 82.3007049560546875, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+340,181270,530,1, 288.7310791015625, 3421.043212890625, 69.55759429931640625, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066,600,600),
(@GGUID+341,181270,530,1, 272.808013916015625, 3544.084716796875, 71.65317535400390625, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+342,181270,530,1, 3014.432861328125, 6086.330078125, 1.043280005455017089, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+343,181270,530,1, -2040.171875, 7117.103515625, 1.43781900405883789, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958,600,600),
(@GGUID+344,181270,530,1, -2189.061279296875, 7059.83935546875, -10.4919052124023437, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+345,181270,530,1, -2312.240966796875, 6170.93505859375, 54.45442962646484375, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599,600,600),
(@GGUID+346,181270,530,1, -1381.1102294921875, 7517.947265625, 7.389833927154541015, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+347,181270,530,1, -1123.939697265625, 7403.236328125, 31.91210365295410156, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+348,181270,530,1, -3810.0078125, 690.53125, 6.071292877197265625, 3.543023586273193359, 0, 0, -0.97992420196533203, 0.199370384216308593,600,600),
(@GGUID+349,181270,530,1, -2384.630126953125, 3774.02685546875, 3.287480115890502929, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+350,181270,530,1, -1541.6322021484375, 7649.88818359375, -8.57402706146240234, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+351,181270,530,1, -445.041351318359375, 4480.09912109375, 44.55773162841796875, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+352,181270,530,1, 3981.401123046875, 2998.38720703125, 135.531402587890625, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+353,181270,530,1, -804.08856201171875, 8845.0361328125, 183.1544952392578125, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207,600,600),
(@GGUID+354,181270,530,1, 2709.057373046875, 6231.38720703125, -10.3366975784301757, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+355,181270,530,1, -2247.671142578125, 4914.931640625, -2.77060508728027343, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+356,181270,530,1, 2692.53662109375, 6628.13720703125, 25.17115020751953125, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+357,181270,530,1, 2829.6884765625, 6232.4375, 7.273525238037109375, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347,600,600),
(@GGUID+358,181270,530,1, -3737.64453125, 5333.75341796875, -12.769749641418457, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+359,181270,530,1, 2086.341064453125, 5600.2880859375, 265.023284912109375, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+360,181270,530,1, 2445.991943359375, 6708.15185546875, 3.469944953918457031, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+361,181270,530,1, -606.60772705078125, 1994.0703125, 78.46999359130859375, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+362,181270,530,1, 1640.85400390625, 6407.453125, -10.3501091003417968, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+363,181270,530,1, -846.28778076171875, 1537.6180419921875, 48.38726425170898437, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+364,181270,530,1, -3466.753173828125, 2920.71484375, 181.913787841796875, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+365,181270,530,1, -3672.6259765625, 5243.396484375, -22.5797252655029296, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+366,181270,530,1, -101.024742126464843, 4860.89990234375, 52.4423675537109375, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+367,181270,530,1, -3563.87451171875, 2603.255126953125, 73.8004150390625, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775,600,600),
(@GGUID+368,181270,530,1, 3061.26220703125, 5985.0283203125, -10.338871955871582, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697,600,600),
(@GGUID+369,181270,530,1, -3489.210205078125, 1815.1651611328125, 99.45098876953125, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+370,181270,530,1, -2092.533447265625, 8256.7001953125, -14.8731584548950195, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+371,181270,530,1, 414.238067626953125, 3460.483642578125, 63.39395523071289062, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+372,181270,530,1, 1997.486328125, 6455.72119140625, 2.076714038848876953, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+373,181270,530,1, -3792.98388671875, 2348.1484375, 105.580322265625, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+374,181270,530,1, -2736.981689453125, 1744.7386474609375, 30.10370635986328125, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+375,181270,530,1, 2565.846923828125, 6386.677734375, -10.3388690948486328, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803,600,600),
(@GGUID+376,181270,530,1, -3700.787841796875, 4611.26806640625, -18.0496387481689453, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+377,181270,530,1, -3694.48876953125, 1790.615234375, 68.27022552490234375, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+378,181270,530,1, -2085.51416015625, 4950.4912109375, 14.41122245788574218, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+379,181270,530,1, -3677.8876953125, 2245.22705078125, 77.3903350830078125, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+380,181270,530,1, -400.9932861328125, 4070.997314453125, 92.85688018798828125, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179,600,600),
(@GGUID+381,181270,530,1, -2386.301513671875, 5245.17333984375, 0.230047002434730529, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+382,181270,530,1, -1342.23046875, 8629.0439453125, 25.42260551452636718, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+383,181270,530,1, -1816.468505859375, 6841.40869140625, -35.5304450988769531, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+384,181270,530,1, -3756.649658203125, 1203.1588134765625, 84.32651519775390625, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023,600,600),
(@GGUID+385,181270,530,1, 311.88714599609375, 2122.975830078125, 54.77453231811523437, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+386,181270,530,1, 140.772918701171875, 4169.7177734375, 65.37216949462890625, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+387,181270,530,1, 3194.314208984375, 5853.25634765625, -6.35878705978393554, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+388,181270,530,1, -743.474609375, 1615.9539794921875, 56.05407333374023437, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+389,181270,530,1, -1914.6531982421875, 7080.73681640625, -90.2854537963867187, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+390,181270,530,1, -505.805023193359375, 1845.021484375, 69.68210601806640625, 5.131268978118896484, 0, 0, -0.54463863372802734, 0.838670849800109863,600,600),
(@GGUID+391,181270,530,1, 1983.783203125, 6659.5029296875, 144.737579345703125, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646,600,600),
(@GGUID+392,181270,530,1, -1812.9305419921875, 9122.966796875, 62.168212890625, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+393,181270,530,1, 3374.52392578125, 5396.24609375, 148.6193084716796875, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+394,181270,530,1, -1967.8228759765625, 9021.447265625, 47.54419708251953125, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+395,181270,530,1, -1022.84588623046875, 7403.5703125, 36.87358856201171875, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+396,181270,530,1, -2081.717529296875, 6339.07861328125, 45.7886810302734375, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+397,181270,530,1, -3290.083251953125, 3062.45751953125, 141.4886016845703125, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+398,181270,530,1, -2600.289794921875, 7013.64306640625, -3.35767292976379394, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+399,181270,530,1, -2307.729248046875, 8055.94873046875, -38.2810745239257812, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+400,181270,530,1, -2546.53515625, 6154.24462890625, 59.98059844970703125, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+401,181270,530,1, -2816.8046875, 8412.59765625, -32.4659004211425781, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+402,181270,530,1, -2375.568603515625, 8460.3466796875, -34.0727005004882812, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+403,181270,530,1, -815.3680419921875, 3018.22607421875, -7.41952180862426757, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+404,181270,530,1, -4526.98974609375, 1032.8697509765625, 8.664153099060058593, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+405,181270,530,1, -58.2168502807617187, 4312.8720703125, 81.66324615478515625, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419,600,600),
(@GGUID+406,181270,530,1, 3337.992919921875, 4901.35791015625, 268.987579345703125, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+407,181270,530,1, -151.61773681640625, 4647.76220703125, 22.86013221740722656, 3.735006093978881835, 0, 0, -0.95630455017089843, 0.292372345924377441,600,600),
(@GGUID+408,181270,530,1, -396.498382568359375, 4975.62646484375, 41.59057998657226562, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+409,181270,530,1, -2807.456298828125, 8179.93212890625, -43.2893028259277343, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+410,181270,530,1, -4617.63525390625, 1905.1676025390625, 122.352447509765625, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+411,181270,530,1, 259.729888916015625, 3740.484375, 179.2785186767578125, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+412,181270,530,1, -1132.0504150390625, 7931.046875, 15.5424041748046875, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+413,181270,530,1, 2771.80419921875, 6077.14306640625, -8.17688465118408203, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+414,181270,530,1, -2237.185791015625, 6125.4072265625, 75.15126800537109375, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+415,181270,530,1, 420.737640380859375, 3588.454345703125, 75.9507598876953125, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+416,181270,530,1, -4585.2099609375, 1634.459228515625, 175.7913360595703125, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+417,181270,530,1, 3313.5029296875, 5749.40869140625, -10.338850975036621, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+418,181270,530,1, -2704.05078125, 6299.41943359375, 33.07784271240234375, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+419,181270,530,1, -2185.718017578125, 7454.94775390625, -34.5430259704589843, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763,600,600),
(@GGUID+420,181270,530,1, -814.09161376953125, 2381.46923828125, 10.60805416107177734, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+421,181270,530,1, -2338.718017578125, 4043.939208984375, -23.592142105102539, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+422,181270,530,1, -2045.337646484375, 6455.6484375, 21.93729209899902343, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+423,181270,530,1, -1295.8453369140625, 6787.8037109375, 36.20853424072265625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+424,181270,530,1, -3595.408935546875, 4375.95751953125, -12.772918701171875, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+425,181270,530,1, -1684.3056640625, 8838.17578125, 35.51424407958984375, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+426,181270,530,1, 2168.96875, 6143.333984375, 144.911285400390625, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+427,181270,530,1, -3636.76611328125, 6048.11572265625, -3.82924103736877441, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592,600,600),
(@GGUID+428,181270,530,1, -2955.235107421875, 5488.23876953125, -8.52785396575927734, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+429,181270,530,1, 1835.855712890625, 5338.76611328125, 148.2180328369140625, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+430,181270,530,1, -2576.232421875, 3763.173583984375, 3.15081191062927246, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755,600,600),
(@GGUID+431,181270,530,1, 2165.864013671875, 5406.30029296875, 145.955291748046875, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+432,181270,530,1, -2953.02978515625, 4951.25244140625, -21.6864814758300781, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+433,181270,530,1, -2308.927001953125, 8267.021484375, -36.190521240234375, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+434,181270,530,1, 1681.961181640625, 5146.220703125, 265.129913330078125, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+435,181270,530,1, -3318.196533203125, 688.04644775390625, 1.492928028106689453, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+436,181270,530,1, -4117.26123046875, 959.3328857421875, 24.56998634338378906, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+437,181270,530,1, -3135.517822265625, 4620.4736328125, -22.6591682434082031, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556,600,600),
(@GGUID+438,181270,530,1, -2323.60693359375, 4350.5869140625, -2.15665888786315917, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+439,181270,530,1, -3223.250732421875, 5288.84765625, -19.2394676208496093, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+440,181270,530,1, -2551.967041015625, 7631.28759765625, -12.6845464706420898, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+441,181270,530,1, 1945.18212890625, 5390.796875, 154.245025634765625, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+442,181270,530,1, -532.18890380859375, 2014.2567138671875, 83.7079925537109375, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+443,181270,530,1, 2218.592529296875, 5485.6962890625, 153.6693115234375, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267,600,600),
(@GGUID+444,181270,530,1, 543.614501953125, 2075.8994140625, 132.8368682861328125, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724,600,600),
(@GGUID+445,181270,530,1, 134.0439453125, 2384.338134765625, 51.88419723510742187, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+446,181270,530,1, -1980.396240234375, 4374.07373046875, 3.16241002082824707, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+447,181270,530,1, 292.65625, 2058.935302734375, 39.82808303833007812, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066,600,600),
(@GGUID+448,181270,530,1, -3397.341064453125, 5364.3232421875, -17.2474479675292968, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687,600,600),
(@GGUID+449,181270,530,1, -2833.810791015625, 4755.42431640625, -2.92705392837524414, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+450,181270,530,1, -3819.718017578125, 4723.13916015625, -24.8700218200683593, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+451,181270,530,1, -2914.339599609375, 4501.68505859375, -15.2011365890502929, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+452,181270,530,1, 176.197967529296875, 2280.041259765625, 44.604888916015625, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+453,181270,530,1, 404.623046875, 2334.27001953125, 105.7604522705078125, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+454,181270,530,1, -354.946197509765625, 1814.818603515625, 76.58591461181640625, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+455,181270,530,1, -122.266387939453125, 1352.4620361328125, -1.61562800407409667, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+456,181270,530,1, -3312.06103515625, 4539.671875, -20.855224609375, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+457,181270,530,1, 412.285491943359375, 2658.16748046875, 166.78173828125, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+458,181270,530,1, -3526.2138671875, 4578.75439453125, -20.0312938690185546, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+459,181270,530,1, -4358.859375, 1554.0635986328125, 160.3284149169921875, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576,600,600),
(@GGUID+460,181270,530,1, -1957.740478515625, 8054.0322265625, -17.4510841369628906, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+461,181270,530,1, 156.8121795654296875, 2111.630615234375, 63.19572830200195312, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+462,181270,530,1, -3142.839111328125, 4459.7919921875, -22.6639747619628906, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+463,181270,530,1, -3753.76904296875, 5079.869140625, -18.372873306274414, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+464,181270,530,1, -3696.2978515625, 4783.24755859375, -21.0617332458496093, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+465,181270,530,1, -1169.1707763671875, 1998.1864013671875, 73.44884490966796875, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+466,181270,530,1, -1428.14111328125, 8333.05859375, -8.80997085571289062, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175,600,600),
(@GGUID+467,181270,530,1, -1023.9979248046875, 1481.62158203125, 33.67384719848632812, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+468,181270,530,1, -3287.7890625, 4291.20654296875, -18.9892902374267578, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+469,181270,530,1, -4229.48974609375, 4624.57763671875, -77.6566009521484375, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+470,181270,530,1, 1947.1910400390625, 5926.32177734375, 137.266693115234375, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687,600,600),
(@GGUID+471,181270,530,1, -1349.7984619140625, 7652.8662109375, -1.48805797100067138, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+472,181270,530,1, -684.2598876953125, 3113.881103515625, -2.03857207298278808, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722,600,600),
(@GGUID+473,181270,530,1, -389.292877197265625, 2375.256591796875, 42.168853759765625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+474,181270,530,1, -289.008941650390625, 2641.91357421875, -6.38428783416748046, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+475,181270,530,1, -781.82952880859375, 7238.76416015625, 38.21284866333007812, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875,600,600),
(@GGUID+476,181270,530,1, -487.512603759765625, 2126.368896484375, 77.24584197998046875, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+477,181270,530,1, -766.66058349609375, 7514.6865234375, 60.78740692138671875, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+478,181270,530,1, -2721.49365234375, 6864.8701171875, -5.37737607955932617, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+479,181270,530,1, 340.821075439453125, 3968.36376953125, 121.0513916015625, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+480,181270,530,1, -3800.968017578125, 4864.1279296875, -22.1156558990478515, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+481,181270,530,1, -755.80523681640625, 8114.70654296875, 50.61733245849609375, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+482,181270,530,1, -188.862579345703125, 2449.890869140625, 23.41019821166992187, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+483,181270,530,1, -2443.936279296875, 7106.2802734375, -13.5674409866333007, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+484,181270,530,1, -944.7110595703125, 2486.303955078125, 4.549438953399658203, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+485,181270,530,1, -3779.80029296875, 5976.71875, -0.64665901660919189, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+486,181270,530,1, -1090.7603759765625, 8950.931640625, 103.0801162719726562, 3.24634718894958496, 0, 0, -0.99862861633300781, 0.052353221923112869,600,600),
(@GGUID+487,181270,530,1, -2432.4453125, 7759.0712890625, -28.2511672973632812, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+488,181270,530,1, -552.89605712890625, 3019.224365234375, 9.418131828308105468, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+489,181270,530,1, -2545.193115234375, 6654.9599609375, -1.06386804580688476, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+490,181270,530,1, -284.757049560546875, 2085.54541015625, 98.35869598388671875, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+491,181270,530,1, -761.58648681640625, 4033.170654296875, 32.8311920166015625, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+492,181270,530,1, -4016.471435546875, 724.76239013671875, 3.412259101867675781, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+493,181270,530,1, -1916.0399169921875, 3963.28564453125, -3.00833797454833984, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+494,181270,530,1, -2838.6865234375, 7068.80126953125, -12.5686550140380859, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+495,181270,530,1, -455.30035400390625, 4582.68505859375, 45.16461944580078125, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+496,181270,530,1, -2381.31591796875, 5383.73681640625, 1.202047944068908691, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163,600,600),
(@GGUID+497,181270,530,1, -2959.697998046875, 3362.05908203125, -0.87964600324630737, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+498,181270,530,1, 3517.3955078125, 3064.281005859375, 139.7615966796875, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+499,181270,530,1, 2318.319580078125, 6683.54931640625, 17.57287216186523437, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+500,181270,530,1, 3287.52490234375, 5275.89599609375, 148.8725128173828125, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+501,181270,530,1, -3827.532470703125, 2224.334228515625, 93.42003631591796875, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+502,181270,530,1, -2343.003173828125, 3554.46240234375, -10.6955060958862304, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207,600,600),
(@GGUID+503,181270,530,1, -852.80450439453125, 8081.78662109375, 29.89460182189941406, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+504,181270,530,1, -955.34906005859375, 7680.80322265625, 36.98370742797851562, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722,600,600),
(@GGUID+505,181270,530,1, 2454.503662109375, 5519.8740234375, 265.9539794921875, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808,600,600),
(@GGUID+506,181270,530,1, 1979.7469482421875, 5153.408203125, 265.384124755859375, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+507,181270,530,1, -4108.01513671875, 1647.3148193359375, 96.07926177978515625, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+508,181270,530,1, 2162.954345703125, 5710.05224609375, 264.76922607421875, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+509,181270,530,1, -1416.924560546875, 6587.908203125, 36.73986434936523437, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+510,181270,530,1, 1764.728759765625, 4651.11572265625, 148.380157470703125, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+511,181270,530,1, 2077.862060546875, 6398.1240234375, -10.3378190994262695, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+512,181270,530,1, -1644.82470703125, 9092.439453125, 82.95095062255859375, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+513,181270,530,1, -451.197174072265625, 2516.58984375, 48.650299072265625, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+514,181270,530,1, 1917.3795166015625, 4814.7607421875, 143.3626251220703125, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341,600,600),
(@GGUID+515,181270,530,1, 4081.47705078125, 3256.650146484375, 161.3695526123046875, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+516,181270,530,1, 1784.3367919921875, 6763.90283203125, 139.756927490234375, 3.124123096466064453, 0, 0, 0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+517,181270,530,1, 4986.45556640625, 2826.478515625, 80.521820068359375, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+518,181270,530,1, -1242.673828125, 5381.30712890625, 23.37143898010253906, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+519,181270,530,1, -513.6435546875, 1648.296875, 38.53660964965820312, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126,600,600),
(@GGUID+520,181270,530,1, 240.490447998046875, 2313.9091796875, 49.5682373046875, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+521,181270,530,1, -3912.23046875, 2640.846923828125, 103.8457565307617187, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+522,181270,530,1, -759.1546630859375, 7420.41845703125, 51.94536972045898437, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173,600,600),
(@GGUID+523,181270,530,1, 2117.293212890625, 6020.97314453125, 139.5840301513671875, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+524,181270,530,1, 3547.264404296875, 5318.4521484375, -12.0028285980224609, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208,600,600),
(@GGUID+525,181270,530,1, 145.1555938720703125, 3117.31201171875, 20.71344947814941406, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+526,181270,530,1, 3463.8291015625, 4968.0712890625, 264.84832763671875, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+527,181270,530,1, -323.39404296875, 2872.386962890625, -49.1471748352050781, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+528,181270,530,1, -2245.436767578125, 6346.39013671875, 38.67567825317382812, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675,600,600),
(@GGUID+529,181270,530,1, 2275.685302734375, 5429.64892578125, 145.6841888427734375, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+530,181270,530,1, -786.81097412109375, 1962.6925048828125, 45.672027587890625, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175,600,600),
(@GGUID+531,181270,530,1, 2581.517822265625, 5320.6796875, 268.45062255859375, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+532,181270,530,1, 1630.357177734375, 4939.27099609375, 171.5090789794921875, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+533,181270,530,1, -2184.65625, 8688.423828125, -2.34415388107299804, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+534,181270,530,1, -1511.0177001953125, 8651.3173828125, 7.259802818298339843, 3.735006093978881835, 0, 0, -0.95630455017089843, 0.292372345924377441,600,600),
(@GGUID+535,181270,530,1, 2925.583251953125, 6189.79150390625, 10.3415994644165039, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458,600,600),
(@GGUID+536,181270,530,1, 103.6022415161132812, 3601.907470703125, 70.3490753173828125, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+537,181270,530,1, 2684.7265625, 5758.43310546875, -17.4578266143798828, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+538,181270,530,1, -3521.17236328125, 2048.11572265625, 68.64421844482421875, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759,600,600),
(@GGUID+539,181270,530,1, -4197.888671875, 511.09320068359375, 28.49306297302246093, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+540,181270,530,1, -682.7413330078125, 1886.545166015625, 63.08446121215820312, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+541,181270,530,1, -1426.304443359375, 3440.64453125, 42.4929046630859375, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+542,181270,530,1, -417.352447509765625, 4749.765625, 19.68959808349609375, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+543,181270,530,1, -4174.0703125, 449.59027099609375, 30.83442115783691406, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+544,181270,530,1, -3672.43359375, 1953.3160400390625, 74.6833953857421875, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+545,181270,530,1, -3415.58251953125, 1917.361572265625, 87.93422698974609375, 3.43830275535583496, 0, 0, -0.98901557922363281, 0.147811368107795715,600,600),
(@GGUID+546,181270,530,1, -972.59051513671875, 1973.40234375, 69.095550537109375, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+547,181270,530,1, -2107.082275390625, 8728.2646484375, 11.30937767028808593, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046,600,600),
(@GGUID+548,181270,530,1, -637.3193359375, 2195.736083984375, 43.42107009887695312, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+549,181270,530,1, -918.56671142578125, 2820.385986328125, 7.352261066436767578, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+550,181270,530,1, -3391.99951171875, 2123.135986328125, 78.62332916259765625, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+551,181270,530,1, -44.3247604370117187, 2986.11767578125, 14.14938545227050781, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+552,181270,530,1, -578.482666015625, 3983.759521484375, 29.38689613342285156, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+553,181270,530,1, -3650.00341796875, 799.17095947265625, 5.618618011474609375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+554,181270,530,1, -3286.50537109375, 568.06231689453125, 72.06725311279296875, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+555,181270,530,1, -2754.90625, 920.9151611328125, 1.9027940034866333, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+556,181270,530,1, -3687.376708984375, 389.835296630859375, 90.97525787353515625, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+557,181270,530,1, -1245.2291259765625, 3041.62109375, 22.76544952392578125, 4.869470596313476562, 0, 0, -0.64944744110107421, 0.760406434535980224,600,600),
(@GGUID+558,181270,530,1, 3742.88720703125, 5388.45654296875, -4.4909071922302246, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+559,181270,530,1, -781.7900390625, 2182.76025390625, 12.35695171356201171, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+560,181270,530,1, -1531.4979248046875, 5029.38671875, -12.050114631652832, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+561,181270,530,1, -683.21990966796875, 7823.0234375, 58.39704132080078125, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687,600,600),
(@GGUID+562,181270,530,1, -3939.100830078125, 1190.041015625, 45.0333251953125, -2.44346094131469726, 0, 0, 0.939692616462707519, -0.34202012419700622,600,600),
(@GGUID+563,181270,530,1, -185.43212890625, 3954.977783203125, 100.3453826904296875, 2.600540637969970703, 0, 0, 0.963630437850952148, 0.267238348722457885,600,600),
(@GGUID+564,181270,530,1, -1997.9149169921875, 6212.2021484375, 80.8459320068359375, -1.83259570598602294, 0, 0, 0.79335331916809082, -0.60876142978668212,600,600),
(@GGUID+565,181270,530,1, -340.60845947265625, 1489.919677734375, 31.44022560119628906, -1.43116986751556396, 0, 0, 0.656058967113494873, -0.75470966100692749,600,600),
(@GGUID+566,181270,530,1, -117.659942626953125, 3078.810302734375, 1.210304021835327148, 0.78539818525314331, 0, 0, 0.382683455944061279, 0.923879504203796386,600,600),
(@GGUID+567,181270,530,1, -1133.374755859375, 7553.33349609375, 22.97080421447753906, -3.10668611526489257, 0, 0, 0.999847710132598876, -0.01745235174894332,600,600),
(@GGUID+568,181270,530,1, 2052.53076171875, 5454.1650390625, 144.8794403076171875, 0.977384388446807861, 0, 0, 0.469471573829650878, 0.882947564125061035,600,600),
(@GGUID+569,181270,530,1, -2846.245849609375, 3325.895751953125, -16.2231693267822265, 2.809980154037475585, 0, 0, 0.986285626888275146, 0.165047571063041687,600,600),
(@GGUID+570,181270,530,1, -2964.170166015625, 3607.740966796875, -8.60416889190673828, 1.099557399749755859, 0, 0, 0.522498548030853271, 0.852640151977539062,600,600),
(@GGUID+571,181270,530,1, -2412.872802734375, 6427.5263671875, 12.75710391998291015, -0.99483758211135864, 0, 0, 0.477158725261688232, -0.87881714105606079,600,600),
(@GGUID+572,181270,530,1, -1942.44970703125, 9183.3408203125, 74.6189422607421875, -2.23402142524719238, 0, 0, 0.898794054985046386, -0.43837112188339233,600,600),
(@GGUID+573,181270,530,1, -741.59637451171875, 7612.92041015625, 55.35891342163085937, -0.13962635397911071, 0, 0, 0.069756470620632171, -0.99756407737731933,600,600),
(@GGUID+574,181270,530,1, -3246.138916015625, 2954.204345703125, 129.0107574462890625, -1.22173047065734863, 0, 0, 0.57357645034790039, -0.81915205717086791,600,600),
(@GGUID+575,181270,530,1, -2503.169189453125, 3931.193603515625, 7.778614997863769531, -0.08726675063371658, 0, 0, 0.043619528412818908, -0.99904823303222656,600,600),
(@GGUID+576,181270,530,1, -1214.40283203125, 2349.685791015625, 50.083953857421875, 2.565634012222290039, 0, 0, 0.958819746971130371, 0.28401532769203186,600,600),
(@GGUID+577,181270,530,1, -3120.451904296875, 2268.99658203125, 63.96258544921875, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+578,181270,530,1, -445.86676025390625, 3314.198486328125, 10.79656314849853515, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046,600,600),
(@GGUID+579,181270,530,1, -1034.5816650390625, 7498.1083984375, 30.75478744506835937, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798,600,600),
(@GGUID+580,181270,530,1, 233.26080322265625, 2244.240478515625, 46.99775314331054687, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787,600,600),
(@GGUID+581,181270,530,1, -4136.158203125, 1933.421875, 66.28272247314453125, 4.869470596313476562, 0, 0, -0.64944744110107421, 0.760406434535980224,600,600),
(@GGUID+582,181270,530,1, -1625.6177978515625, 6640.578125, -6.10122299194335937, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+583,181270,530,1, 153.82672119140625, 3025.482666015625, -1.22251403331756591, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+584,181270,530,1, -2996.466064453125, 206.00390625, 2.610266923904418945, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163,600,600),
(@GGUID+585,181270,530,1, -1696.6236572265625, 7288.7177734375, 2.316412925720214843, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+586,181270,530,1, 237.33599853515625, 2156.396728515625, 39.71912765502929687, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+587,181270,530,1, -2099.87841796875, 3833.32373046875, -0.2883949875831604, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+588,181270,530,1, -648.21551513671875, 2049.62158203125, 57.41870880126953125, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+589,181270,530,1, -1867.84228515625, 7535.15087890625, -6.25200700759887695, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583,600,600),
(@GGUID+590,181270,530,1, -3024.682373046875, 2143.69091796875, 84.599334716796875, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+591,181270,530,1, -1991.59033203125, 7590.59375, -90.863983154296875, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+592,181270,530,1, -3031.70458984375, 370.66796875, 2.62670302391052246, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+593,181270,530,1, -4016.473876953125, 1809.7418212890625, 88.942626953125, 3.071766614913940429, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+594,181270,530,1, -3809.5546875, 4224.90673828125, 4.343678951263427734, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+595,181270,530,1, -3954.322998046875, 4345.5615234375, -14.8237133026123046, -0.43633157014846801, 0, 0, -0.21643924713134765, 0.976296067237854003,600,600),
(@GGUID+596,181270,530,1, -2840.866943359375, 7565.08349609375, -2.97388505935668945, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+597,181270,530,1, -1354.9986572265625, 8139.29345703125, -93.0523452758789062, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818,600,600),
(@GGUID+598,181270,530,1, -3476.710205078125, 2536.389892578125, 61.2118682861328125, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+599,181270,530,1, -77.3458099365234375, 2078.210205078125, 101.9807662963867187, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600);

SET @GGUID := 182800; -- zangarmarsh
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,183044,530,1, -179.949005126953125, 7112.646484375, 22.28516578674316406, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+1,183044,530,1, 286.998046875, 8107.798828125, 24.24966621398925781, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+2,183044,530,1, 405.388458251953125, 5125.23046875, 22.39678764343261718, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+3,183044,530,1, 883.30328369140625, 8183.33154296875, 23.24622154235839843, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+4,183044,530,1, 748.8350830078125, 6226.45849609375, 24.46532630920410156, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927,600,600),
(@GGUID+5,183044,530,1, -896.41973876953125, 5202.291015625, 22.27983474731445312, 0, 0, 0, 0, 1,600,600),
(@GGUID+6,183044,530,1, 1226.7310791015625, 7725.375, 31.33030891418457031, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+7,183044,530,1, -159.488067626953125, 7313.517578125, 23.2769317626953125, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583,600,600),
(@GGUID+8,183044,530,1, -770.652587890625, 5239.57568359375, 19.29179000854492187, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+9,183044,530,1, -178.820526123046875, 6845.7685546875, 22.68976211547851562, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+10,183044,530,1, 772.77008056640625, 6651.39453125, 21.44024085998535156, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303,600,600),
(@GGUID+11,183044,530,1, 315.69293212890625, 9048.1455078125, 18.35918617248535156, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389,600,600),
(@GGUID+12,183044,530,1, 827.32293701171875, 6854.74462890625, 22.44108200073242187, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+13,183044,530,1, -153.523880004882812, 6277.63525390625, 23.48538780212402343, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389,600,600),
(@GGUID+14,183044,530,1, -26.6319446563720703, 7236.81103515625, 23.52497291564941406, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631,600,600),
(@GGUID+15,183044,530,1, -87.3155364990234375, 8390.228515625, 22.33684730529785156, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+16,183044,530,1, 314.362152099609375, 5246.31494140625, 20.88447380065917968, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+17,183044,530,1, 82.90061187744140625, 6623.56396484375, 21.14245223999023437, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808,600,600),
(@GGUID+18,183044,530,1, 175.22705078125, 7111.7919921875, 36.74448394775390625, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+19,183044,530,1, 1116.4613037109375, 8148.806640625, 23.28413772583007812, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+20,183044,530,1, 480.15972900390625, 5552.35986328125, 21.56052398681640625, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+21,183044,530,1, 873.8558349609375, 8296.171875, 22.22274971008300781, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+22,183044,530,1, 19.52701759338378906, 6258.6474609375, 23.59134483337402343, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+23,183044,530,1, -644.69769287109375, 6069.52734375, 22.78651237487792968, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+24,183044,530,1, 1225.1783447265625, 8602.294921875, 23.556671142578125, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+25,183044,530,1, 119.7470703125, 6697.33837890625, 22.58593177795410156, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+26,183044,530,1, -320.012054443359375, 6397.09033203125, 22.51784706115722656, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+27,183044,530,1, 450.319671630859375, 8706.1123046875, 23.57815361022949218, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+28,183044,530,1, -391.044281005859375, 6378.396484375, 23.86374855041503906, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+29,183044,530,1, 239.8180389404296875, 5586.14501953125, 22.75769615173339843, 2.949595451354980468, 0, 0, 0.995395660400390625, 0.095851235091686248,600,600),
(@GGUID+30,183044,530,1, 1114.6265869140625, 8606.8955078125, 23.082061767578125, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+31,183044,530,1, 904.38934326171875, 5632.70263671875, 16.75923538208007812, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+32,183044,530,1, 233.6806640625, 5173.14599609375, 25.06488227844238281, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+33,183044,530,1, 792.18511962890625, 8510.3427734375, 23.00982093811035156, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+34,183044,530,1, 406.717071533203125, 7120.25244140625, 23.81385231018066406, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+35,183044,530,1, -633.7510986328125, 5704.89404296875, 24.31065940856933593, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+36,183044,530,1, 471.671234130859375, 7652.166015625, 22.88730239868164062, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+37,183044,530,1, 605.201904296875, 5425.54248046875, -14.3271131515502929, 2.129300594329833984, 0, 0, 0.874619483947753906, 0.484810054302215576,600,600),
(@GGUID+38,183044,530,1, 1347.786376953125, 8452.7294921875, 17.37621688842773437, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+39,183044,530,1, 353.403656005859375, 8589.9443359375, 23.84276199340820312, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285,600,600),
(@GGUID+40,183044,530,1, 778.1865234375, 5450.81494140625, -3.71134805679321289, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+41,183044,530,1, 39.07009506225585937, 8471.3564453125, 22.61007308959960937, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+42,183044,530,1, 551.87640380859375, 5753.58740234375, 23.368499755859375, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958,600,600),
(@GGUID+43,183044,530,1, -163.734375, 8507.85546875, 23.12787818908691406, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+44,183044,530,1, 636.70538330078125, 5212.5, 0.613725006580352783, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+45,183044,530,1, 829.26983642578125, 7234.90625, 20.30528831481933593, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+46,183044,530,1, 652.93328857421875, 5617.22998046875, 24.20604515075683593, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+47,183044,530,1, -102.516166687011718, 6474.07568359375, 21.04691505432128906, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+48,183044,530,1, 1157.88916015625, 7895.40283203125, 25.60052680969238281, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+49,183044,530,1, 578.71734619140625, 8839.2890625, 29.83396339416503906, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333,600,600),
(@GGUID+50,183044,530,1, 1721.4918212890625, 8632.1171875, 7.254967212677001953, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+51,183044,530,1, -73.543731689453125, 6938.39697265625, 22.00775337219238281, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+52,183044,530,1, -501.10015869140625, 6051.89599609375, 23.31988716125488281, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+53,183044,530,1, -347.3134765625, 5899.17431640625, 22.9788818359375, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+54,183044,530,1, 779.16644287109375, 6627.87451171875, 20.486328125, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046,600,600),
(@GGUID+55,183044,530,1, 327.1474609375, 5491.48486328125, 22.08715057373046875, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664,600,600),
(@GGUID+56,183044,530,1, 1007.70977783203125, 7645.80224609375, 22.82469749450683593, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+57,183044,530,1, 32.08376693725585937, 8311.1337890625, 24.16455650329589843, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+58,183044,530,1, -343.155914306640625, 6237.79541015625, 22.45117378234863281, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+59,183044,530,1, 1611.5, 8584.3408203125, -29.4140491485595703, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+60,183044,530,1, 1696.3853759765625, 8502.1142578125, -3.74660110473632812, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+61,183044,530,1, 259.75732421875, 6702.2646484375, 21.79661178588867187, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+62,183044,530,1, 616.45257568359375, 8503.7041015625, 21.95891761779785156, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+63,183044,530,1, 664.8104248046875, 8093.55224609375, 27.76727485656738281, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599,600,600),
(@GGUID+64,183044,530,1, 945.831298828125, 8686.7744140625, 15.77300453186035156, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+65,183044,530,1, 638.2987060546875, 7975.3056640625, 23.448455810546875, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+66,183044,530,1, -146.783096313476562, 5957.63916015625, 23.03878211975097656, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+67,183044,530,1, 390.80816650390625, 5687.1005859375, 22.55392646789550781, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+68,183044,530,1, 655.04925537109375, 5877.04248046875, 23.50455665588378906, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+69,183044,530,1, 1807.1207275390625, 8446.2666015625, -9.45245838165283203, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+70,183044,530,1, -641.0916748046875, 5427.95947265625, 23.44024848937988281, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798,600,600),
(@GGUID+71,183044,530,1, 934.88409423828125, 8057.3369140625, 22.99703216552734375, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+72,183044,530,1, 152.12890625, 8227.6806640625, 24.26984596252441406, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+73,183044,530,1, -181.127059936523437, 7423.564453125, 22.59796524047851562, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+74,183044,530,1, -6.87912321090698242, 7731.845703125, 23.29259490966796875, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583,600,600),
(@GGUID+75,183044,530,1, 715.56134033203125, 7594.10791015625, 23.67585372924804687, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+76,183044,530,1, -42.7888450622558593, 8989.6025390625, 21.7612762451171875, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916,600,600),
(@GGUID+77,183044,530,1, -405.844635009765625, 8532.7470703125, 23.39385414123535156, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+78,183044,530,1, 251.6085052490234375, 8918.8173828125, 25.13114738464355468, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+79,183044,530,1, -208.099929809570312, 5755.48486328125, 24.77112197875976562, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+80,183044,530,1, 876.34844970703125, 5182.4599609375, 23.44521713256835937, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+81,183044,530,1, 761.27581787109375, 7713.40966796875, 22.82207679748535156, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+82,183044,530,1, 1228.2979736328125, 8493.86328125, 23.22565841674804687, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+83,183044,530,1, 717.32354736328125, 6488.0166015625, 22.07889175415039062, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+84,183044,530,1, 194.827911376953125, 7491.2431640625, 23.576141357421875, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+85,183044,530,1, 48.4970703125, 6051.6865234375, 23.04585838317871093, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166,600,600),
(@GGUID+86,183044,530,1, -174.22613525390625, 8367.763671875, 21.87916183471679687, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+87,183044,530,1, -462.814788818359375, 6420.1015625, 22.75519371032714843, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+88,183044,530,1, -559.95635986328125, 5839.7880859375, 22.247711181640625, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+89,183044,530,1, 1641.3944091796875, 8471.791015625, -15.3602180480957031, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126,600,600),
(@GGUID+90,183044,530,1, 143.6881561279296875, 8267.7666015625, 24.04077911376953125, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+91,183044,530,1, 403.2286376953125, 6421.5283203125, 23.00039100646972656, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+92,183044,530,1, -153.086151123046875, 7600.671875, 23.17699432373046875, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+93,183044,530,1, 851.32550048828125, 7843.06884765625, 23.11839103698730468, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+94,183044,530,1, -14.6456165313720703, 6330.68017578125, 22.53814315795898437, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938,600,600),
(@GGUID+95,183044,530,1, 783.680908203125, 6801.17333984375, 21.75626564025878906, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796,600,600),
(@GGUID+96,183044,530,1, 263.2510986328125, 7060.33447265625, 37.295074462890625, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+97,183044,530,1, -79.1945571899414062, 7128.4384765625, 18.69435691833496093, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+98,183044,530,1, -179.033203125, 7764.462890625, 21.94881248474121093, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+99,183044,530,1, 721.317626953125, 5051.67822265625, 8.102271080017089843, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+100,183044,530,1, -435.526702880859375, 6268.25634765625, 20.5111083984375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+101,183044,530,1, 1145.759033203125, 8534.0048828125, 22.70406532287597656, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+102,183044,530,1, 497.92767333984375, 6595.0751953125, 24.26428413391113281, -0.01745349541306495, 0, 0, 0.008726636879146099, -0.99996191263198852,600,600),
(@GGUID+103,183044,530,1, 511.42041015625, 6221.30322265625, 22.06831932067871093, 0.610865175724029541, 0, 0, 0.300705790519714355, 0.953716933727264404,600,600),
(@GGUID+104,183044,530,1, 24.14952278137207031, 6383.33984375, 22.84832191467285156, -0.50614529848098754, 0, 0, 0.250379920005798339, -0.9681476354598999,600,600),
(@GGUID+105,183044,530,1, -860.99591064453125, 5558.443359375, 23.14876556396484375, -3.07177948951721191, 0, 0, 0.999390840530395507, -0.03489946201443672,600,600),
(@GGUID+106,183044,530,1, 230.343963623046875, 8590.21875, 24.07622146606445312, 1.466076612472534179, 0, 0, 0.669130623340606689, 0.743144810199737548,600,600),
(@GGUID+107,183044,530,1, 748.576416015625, 7815.98779296875, 22.04313468933105468, 0.087266460061073303, 0, 0, 0.043619386851787567, 0.999048233032226562,600,600),
(@GGUID+108,183044,530,1, -254.169052124023437, 8525.8447265625, 22.84898757934570312, 2.844886541366577148, 0, 0, 0.989015877246856689, 0.147809475660324096,600,600),
(@GGUID+109,183044,530,1, 121.8895416259765625, 6880.5400390625, 23.94608306884765625, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+110,183044,530,1, -276.00628662109375, 8218.3935546875, 22.70681571960449218, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+111,183044,530,1, 446.89703369140625, 5397.55859375, 2.905229091644287109, 3.43830275535583496, 0, 0, -0.98901557922363281, 0.147811368107795715,600,600),
(@GGUID+112,183044,530,1, -949.63214111328125, 5780.4091796875, 23.4732818603515625, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+113,183044,530,1, 510.057403564453125, 5267.46337890625, -6.22911691665649414, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+114,183044,530,1, -1110.9427490234375, 5683.81494140625, 57.63970947265625, -0.45378503203392028, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+115,183044,530,1, -266.047760009765625, 8027.5458984375, 21.24689865112304687, -0.76794385910034179, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+116,183044,530,1, -358.341796875, 7237.66650390625, 53.06423187255859375, 0.802850902080535888, 0, 0, 0.390730857849121093, 0.920504987239837646,600,600);

-- dreaming glory
SET @GGUID := 183000;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,181271,530,1, -1308.85009765625, 5406.7587890625, 36.29819488525390625, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+1,181271,530,1, 4917.64453125, 3780.603271484375, 205.700592041015625, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+2,181271,530,1, 4952.72119140625, 3686.96533203125, 187.5608673095703125, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+3,181271,530,1, -5319.91259765625, 204.8565521240234375, 62.56598663330078125, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+4,181271,530,1, -4958.865234375, 424.94140625, 88.008056640625, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+5,181271,530,1, -311.59332275390625, 2001.0377197265625, 120.9366836547851562, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+6,181271,530,1, -5029.89599609375, 404.466461181640625, 174.0856475830078125, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687,600,600),
(@GGUID+7,181271,530,1, 5027.1689453125, 3763.323486328125, 200.4929962158203125, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+8,181271,530,1, 2750.368408203125, 3087.17236328125, 156.518829345703125, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+9,181271,530,1, 3789.460205078125, 1472.638671875, -141.328720092773437, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+10,181271,530,1, 4749.794921875, 3889.821533203125, 209.7194366455078125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+11,181271,530,1, -5248.3857421875, 412.400604248046875, 66.11034393310546875, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+12,181271,530,1, -1342.7259521484375, 2230.39208984375, 113.666107177734375, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+13,181271,530,1, -5026.681640625, 90.46115875244140625, 80.947784423828125, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+14,181271,530,1, -4890.947265625, 130.5333099365234375, 42.01152801513671875, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066,600,600),
(@GGUID+15,181271,530,1, -2113.893798828125, 8375.3525390625, -10.1903352737426757, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+16,181271,530,1, -5284.33837890625, 546.370849609375, 38.79976654052734375, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+17,181271,530,1, 3257.1494140625, 2343.916015625, 119.8291702270507812, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+18,181271,530,1, 728.79327392578125, 2902.422119140625, 3.795825004577636718, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+19,181271,530,1, 3082.46044921875, 2100.967529296875, 158.8167266845703125, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+20,181271,530,1, -1786.730712890625, 3883.494873046875, 19.84212112426757812, 1.85004889965057373, 0, 0, 0.798635482788085937, 0.60181504487991333,600,600),
(@GGUID+21,181271,530,1, 3419.181640625, 4858.33935546875, 263.166351318359375, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+22,181271,530,1, 3402.2607421875, 2983.947265625, 147.924560546875, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+23,181271,530,1, 2090.794677734375, 6629, 145.1482696533203125, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+24,181271,530,1, 3963.362060546875, 4170.015625, 194.1330413818359375, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+25,181271,530,1, 3506.978515625, 3110.902099609375, 132.0476837158203125, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458,600,600),
(@GGUID+26,181271,530,1, 3387.995849609375, 3606.684814453125, 160.4225921630859375, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+27,181271,530,1, -5152.24853515625, 736.996826171875, 72.5230712890625, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+28,181271,530,1, 3706.893310546875, 2734.992919921875, 129.5320281982421875, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072,600,600),
(@GGUID+29,181271,530,1, -4187.173828125, 1371.3984375, 130.7611083984375, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652,600,600),
(@GGUID+30,181271,530,1, -5010.80810546875, -46.662109375, 72.809234619140625, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+31,181271,530,1, 4870.26806640625, 2889.633544921875, 152.5215911865234375, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+32,181271,530,1, 4926.7861328125, 2949.18212890625, 157.0056304931640625, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+33,181271,530,1, -3018.593017578125, 3520.140869140625, 2.574584007263183593, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+34,181271,530,1, -3141.51220703125, 1648.1900634765625, 73.78287506103515625, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+35,181271,530,1, 473.142578125, 2317.786376953125, 144.7542266845703125, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524,600,600),
(@GGUID+36,181271,530,1, -5073.40576171875, 472.305999755859375, 84.461822509765625, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+37,181271,530,1, 3214.74560546875, 2774.071533203125, 153.3094635009765625, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+38,181271,530,1, -4110.79296875, 3540.966552734375, 296.651031494140625, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646,600,600),
(@GGUID+39,181271,530,1, 2210.928466796875, 2197.898681640625, 83.13385772705078125, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+40,181271,530,1, -1609.150390625, 4754.939453125, 12.30895709991455078, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697,600,600),
(@GGUID+41,181271,530,1, 3943.440185546875, 5482.17822265625, 268.277069091796875, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+42,181271,530,1, 1625.808349609375, 4654.50390625, 141.7256317138671875, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+43,181271,530,1, -1983.750244140625, 6326.49560546875, 50.09810256958007812, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+44,181271,530,1, -2613.46728515625, 8582.859375, -14.3174371719360351, 5.567600727081298828, 0, 0, -0.35020732879638671, 0.936672210693359375,600,600),
(@GGUID+45,181271,530,1, -2360.622314453125, 7818.07275390625, -4.34382200241088867, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+46,181271,530,1, 2692.69189453125, 5291.9365234375, 266.40130615234375, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419,600,600),
(@GGUID+47,181271,530,1, -158.334197998046875, 2694.866455078125, 41.20483016967773437, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+48,181271,530,1, -2954.018310546875, 4289.9052734375, 3.79236006736755371, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+49,181271,530,1, -4829.54541015625, 480.343170166015625, 49.24128341674804687, 3.124123096466064453, 0, 0, 0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+50,181271,530,1, -931.18499755859375, 8541.8212890625, 50.80308914184570312, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+51,181271,530,1, 3853.069091796875, 2161.260986328125, 239.247528076171875, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+52,181271,530,1, 2455.459716796875, 2609.0751953125, 136.651123046875, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+53,181271,530,1, 4214.47998046875, 4163.7451171875, 110.6632080078125, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+54,181271,530,1, -1122.140380859375, 8219.638671875, 10.9575653076171875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525,600,600),
(@GGUID+55,181271,530,1, 2081.43359375, 5170.92333984375, 265.03057861328125, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+56,181271,530,1, -1871.2564697265625, 4116.3720703125, 28.43822288513183593, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+57,181271,530,1, -1212.8529052734375, 8120.79541015625, -1.88415503501892089, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+58,181271,530,1, -2308.6494140625, 5482.05224609375, 7.008870124816894531, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+59,181271,530,1, 3703.891845703125, 1582.1593017578125, 111.9330062866210937, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+60,181271,530,1, 2243.849853515625, 6170.1171875, 141.890472412109375, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+61,181271,530,1, 1588.8651123046875, 5526.78173828125, 281.0782470703125, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544,600,600),
(@GGUID+62,181271,530,1, 3280.25, 4597.0693359375, 217.8983917236328125, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+63,181271,530,1, 2865.197265625, 3167.866943359375, 178.3346405029296875, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+64,181271,530,1, 1532.6024169921875, 5566.39697265625, 258.9395751953125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173,600,600),
(@GGUID+65,181271,530,1, -3720.885009765625, 4187.93994140625, 10.54631519317626953, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+66,181271,530,1, -1716.8265380859375, 8632.259765625, 5.617891788482666015, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652,600,600),
(@GGUID+67,181271,530,1, -4130.1796875, 2078.15576171875, 108.2374801635742187, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058,600,600),
(@GGUID+68,181271,530,1, -945.48577880859375, 1620.4346923828125, 93.47916412353515625, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+69,181271,530,1, 3840.61376953125, 1807.6436767578125, 233.1570892333984375, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724,600,600),
(@GGUID+70,181271,530,1, -3394.260986328125, 5503.4365234375, 4.889819145202636718, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+71,181271,530,1, -3409.947265625, 5651.09912109375, 22.74114799499511718, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849,600,600),
(@GGUID+72,181271,530,1, -2552.427490234375, 4990.6337890625, 21.15315818786621093, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+73,181271,530,1, -2131.194091796875, 8883.333984375, 25.38728904724121093, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023,600,600),
(@GGUID+74,181271,530,1, -2814.779541015625, 725.05230712890625, 28.34495353698730468, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697,600,600),
(@GGUID+75,181271,530,1, 2922.5234375, 5138.3896484375, 264.666412353515625, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+76,181271,530,1, -1875.818115234375, 4617.19091796875, 14.08073234558105468, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+77,181271,530,1, -2009.4600830078125, 3222.334228515625, -79.4696578979492187, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+78,181271,530,1, 3355.12451171875, 3390.24072265625, 116.4157867431640625, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+79,181271,530,1, 3205.89453125, 5408.93603515625, 144.4847259521484375, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+80,181271,530,1, -3972.64404296875, 4812.83935546875, -89.0905303955078125, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+81,181271,530,1, 4325.32666015625, 3452.69482421875, 166.85406494140625, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+82,181271,530,1, 490.566314697265625, 2548.630615234375, 195.9557647705078125, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+83,181271,530,1, 3963.069580078125, 3028.852783203125, 119.1614608764648437, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+84,181271,530,1, -2074.131591796875, 3487.289794921875, -77.9711685180664062, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+85,181271,530,1, -2206.298095703125, 8244.60546875, -16.2714347839355468, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+86,181271,530,1, 4731.04541015625, 2626.097900390625, 210.24761962890625, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+87,181271,530,1, 2715.8125, 5426.46337890625, 137.296142578125, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+88,181271,530,1, -1808.607666015625, 3751.59716796875, 53.27407455444335937, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+89,181271,530,1, -3509.767822265625, 1724.1561279296875, 109.4124984741210937, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+90,181271,530,1, -4140.67919921875, 3322.486083984375, 285.05755615234375, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+91,181271,530,1, -888.614501953125, 3816.29296875, 158.40399169921875, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207,600,600),
(@GGUID+92,181271,530,1, -4395.9296875, 984.2352294921875, 64.05535125732421875, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+93,181271,530,1, 4600.17529296875, 3184.774658203125, 149.672576904296875, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+94,181271,530,1, -2039.099365234375, 8077.47412109375, -16.834054946899414, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+95,181271,530,1, 2228.98193359375, 5200.52001953125, 262.718658447265625, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.98325502872467041,600,600),
(@GGUID+96,181271,530,1, -1866.1400146484375, 7024.70751953125, -57.7746467590332031, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+97,181271,530,1, -2671.64501953125, 8826.37109375, -12.3737831115722656, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+98,181271,530,1, 3053.431396484375, 5655.74462890625, 143.1070098876953125, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+99,181271,530,1, 4395.89306640625, 3050.00244140625, 135.328521728515625, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+100,181271,530,1, -2130.06689453125, 7206.46533203125, -109.18212890625, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+101,181271,530,1, 3583.9462890625, 2831.97802734375, 176.150787353515625, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+102,181271,530,1, 4061.48486328125, 2798.169189453125, 132.4236907958984375, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697,600,600),
(@GGUID+103,181271,530,1, 3451.2314453125, 5430.236328125, 143.4034576416015625, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+104,181271,530,1, 4547.5771484375, 2636.56591796875, 181.8860015869140625, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+105,181271,530,1, 3318.201904296875, 5040.51123046875, 255.8282318115234375, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+106,181271,530,1, -3578.298583984375, 5644.52978515625, 4.518404006958007812, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179,600,600),
(@GGUID+107,181271,530,1, 274.825714111328125, 4761.58837890625, 130.5704345703125, 1.064649581909179687, 0, 0, 0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+108,181271,530,1, 2122.98779296875, 7308.17041015625, 363.90106201171875, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+109,181271,530,1, -1889.9215087890625, 8805.6005859375, 32.8951263427734375, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+110,181271,530,1, 5118.8974609375, 2940.903564453125, 78.297698974609375, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+111,181271,530,1, -2633.56201171875, 6831.77197265625, 9.444397926330566406, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+112,181271,530,1, -2250.16650390625, 6997.08935546875, 4.747095108032226562, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+113,181271,530,1, 4000.8681640625, 3310.576416015625, 122.8752212524414062, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208,600,600),
(@GGUID+114,181271,530,1, 4176.12060546875, 3275.897216796875, 198.5083465576171875, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+115,181271,530,1, 4739.78369140625, 3743.13623046875, 190.094085693359375, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+116,181271,530,1, -2154.741455078125, 5036.84619140625, -6.48125219345092773, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347,600,600),
(@GGUID+117,181271,530,1, -2294.1220703125, 4571.0625, 11.18413066864013671, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166,600,600),
(@GGUID+118,181271,530,1, 2799.1796875, 5051.806640625, 268.182220458984375, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+119,181271,530,1, -1658.5509033203125, 6972.44873046875, 0.908819973468780517, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+120,181271,530,1, -2702.060546875, 7622.56591796875, 10.19875812530517578, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468,600,600),
(@GGUID+121,181271,530,1, 4973.51025390625, 3906.857666015625, 197.4073486328125, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759,600,600),
(@GGUID+122,181271,530,1, 3062.4072265625, 4930.56884765625, 268.543731689453125, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+123,181271,530,1, 4794.6796875, 3343.9091796875, 202.0077667236328125, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+124,181271,530,1, -1288.1060791015625, 3448.282470703125, 107.426666259765625, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+125,181271,530,1, -2865.83447265625, 1677.98388671875, 56.32759857177734375, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+126,181271,530,1, 4543.57861328125, 3409.8466796875, 159.8144378662109375, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+127,181271,530,1, -2766.954345703125, 6355.04931640625, 64.66532135009765625, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803,600,600),
(@GGUID+128,181271,530,1, -2603.87060546875, 8734.1845703125, -5.93416213989257812, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023,600,600),
(@GGUID+129,181271,530,1, -295.70318603515625, 4208.33056640625, 132.2634124755859375, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871,600,600),
(@GGUID+130,181271,530,1, 3544.678466796875, 7246.99609375, 139.7556915283203125, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+131,181271,530,1, 3593.331298828125, 6911.67724609375, 143.783111572265625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+132,181271,530,1, 4719.44384765625, 3161.1806640625, 159.8179931640625, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376,600,600),
(@GGUID+133,181271,530,1, -5122.91845703125, 110.4208984375, 130.728057861328125, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+134,181271,530,1, -5213.71142578125, -32.8097877502441406, 67.96472930908203125, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+135,181271,530,1, 3181.233154296875, 5549.0234375, 142.13458251953125, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+136,181271,530,1, -2941.944580078125, 8621.9697265625, -36.8517303466796875, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066,600,600),
(@GGUID+137,181271,530,1, 3348.182373046875, 7114.35791015625, 161.865142822265625, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+138,181271,530,1, 2019.3021240234375, 4915.15478515625, 139.8413848876953125, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+139,181271,530,1, 4962.97119140625, 2961.066162109375, 123.19140625, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+140,181271,530,1, -1553.8431396484375, 4346.962890625, 57.32955551147460937, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+141,181271,530,1, 3499.473388671875, 3535.96923828125, 145.05072021484375, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+142,181271,530,1, -3897.72314453125, 4183.01123046875, 3.894810914993286132, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+143,181271,530,1, -1112.568603515625, 8678.1376953125, 54.28632354736328125, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+144,181271,530,1, -2577.118896484375, 4205.40771484375, 5.95103311538696289, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876,600,600),
(@GGUID+145,181271,530,1, -4945.5166015625, 572.28070068359375, 69.81061553955078125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+146,181271,530,1, -2616.98779296875, 6161.9912109375, 22.07717323303222656, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+147,181271,530,1, -1646.6663818359375, 4460.2919921875, 24.27190971374511718, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+148,181271,530,1, 2254.604248046875, 5768.462890625, 268.147857666015625, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+149,181271,530,1, -3032.594970703125, 8068.99462890625, -21.7824859619140625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+150,181271,530,1, 2277.15283203125, 2080.331298828125, 65.1780548095703125, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+151,181271,530,1, 3856.56591796875, 2543.17919921875, 87.38242340087890625, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+152,181271,530,1, -4312.36328125, 591.9754638671875, 72.51120758056640625, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+153,181271,530,1, -3337.69189453125, 4010.828125, 61.75689697265625, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+154,181271,530,1, -1210.7613525390625, 9171.7998046875, 214.0786590576171875, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+155,181271,530,1, -2154.8251953125, 8059.02587890625, -10.409285545349121, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+156,181271,530,1, -1344.679931640625, 9331.259765625, 266.302276611328125, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763,600,600),
(@GGUID+157,181271,530,1, 2375.4833984375, 2263.41357421875, 128.848876953125, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+158,181271,530,1, 1650.3385009765625, 7343.5849609375, 364.041656494140625, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+159,181271,530,1, 2121.864990234375, 2201.880126953125, 71.0129241943359375, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+160,181271,530,1, -1587.9232177734375, 6434.57373046875, 32.8362274169921875, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+161,181271,530,1, -811.20843505859375, 4254.43408203125, 71.8061065673828125, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+162,181271,530,1, 3620.694091796875, 3011.385009765625, 130.552734375, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+163,181271,530,1, -2620.30078125, 3172.591064453125, 10.7269296646118164, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126,600,600),
(@GGUID+164,181271,530,1, 2708.440673828125, 4211.14111328125, 193.8598175048828125, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+165,181271,530,1, -1482.755615234375, 7659.5478515625, -6.646392822265625, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376,600,600),
(@GGUID+166,181271,530,1, 2418.207763671875, 5223.26416015625, 262.03363037109375, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+167,181271,530,1, -1530.8433837890625, 7746.7666015625, -90.174530029296875, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066,600,600),
(@GGUID+168,181271,530,1, -1262.2525634765625, 9485.3955078125, 264.431365966796875, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+169,181271,530,1, -1462.25, 9032.892578125, 64.1846466064453125, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+170,181271,530,1, -3334.272705078125, 904.4503173828125, 28.66655158996582031, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+171,181271,530,1, -1568.892333984375, 9717.6455078125, 205.6683197021484375, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+172,181271,530,1, 4180.70458984375, 1644.544677734375, 108.5421676635742187, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326,600,600),
(@GGUID+173,181271,530,1, -2834.521728515625, 7780.05126953125, -8.9224863052368164, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+174,181271,530,1, -4018.444580078125, 2726.678466796875, 175.033294677734375, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+175,181271,530,1, 3394.982177734375, 3288.1533203125, 79.93692779541015625, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+176,181271,530,1, -1640.0330810546875, 9750.5625, 199.7788238525390625, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+177,181271,530,1, 1740.5262451171875, 5615.67626953125, 265.50811767578125, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+178,181271,530,1, -1368.8941650390625, 4051.009521484375, 118.8044586181640625, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+179,181271,530,1, 1944.6490478515625, 4968.98876953125, 155.9249267578125, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+180,181271,530,1, 2795.667236328125, 5443.6962890625, 138.630096435546875, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+181,181271,530,1, -2963.6630859375, 6959.697265625, -46.4207878112792968, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+182,181271,530,1, 4281.2568359375, 1753.2142333984375, 117.4618072509765625, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+183,181271,530,1, -788.36260986328125, 3594.170166015625, 119.4445114135742187, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+184,181271,530,1, 1858.9140625, 5874.74853515625, 143.00921630859375, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+185,181271,530,1, 2904.247802734375, 7134.52197265625, 366.0833740234375, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697,600,600),
(@GGUID+186,181271,530,1, -3017.994140625, 6494.00439453125, 102.0718307495117187, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+187,181271,530,1, 4119.7890625, 1338.5289306640625, -131.673904418945312, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+188,181271,530,1, -676.12335205078125, 7573.6962890625, 96.49321746826171875, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+189,181271,530,1, -1226.8560791015625, 3434.290771484375, 144.406585693359375, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+190,181271,530,1, -1754.2279052734375, 8924.6640625, 61.41614532470703125, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+191,181271,530,1, -1073.9696044921875, 4112.6474609375, 97.05645751953125, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046,600,600),
(@GGUID+192,181271,530,1, 3067.822998046875, 6909.55908203125, 365.435791015625, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+193,181271,530,1, -2346.745361328125, 3070.06640625, 21.97779655456542968, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265,600,600),
(@GGUID+194,181271,530,1, 3385.065673828125, 7251.89599609375, 148.6865997314453125, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+195,181271,530,1, -1366.6536865234375, 9541.3486328125, 220.7695159912109375, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+196,181271,530,1, 168.3272552490234375, 4508.65966796875, 101.17864990234375, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+197,181271,530,1, 2891.463134765625, 3992.45654296875, 153.349578857421875, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871,600,600),
(@GGUID+198,181271,530,1, 3728.749267578125, 7032.54541015625, 145.302001953125, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+199,181271,530,1, -2909.517333984375, 7127.20361328125, 0.256045013666152954, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419,600,600),
(@GGUID+200,181271,530,1, 2874.423095703125, 4379.14306640625, 159.0938568115234375, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675,600,600),
(@GGUID+201,181271,530,1, -1228.0130615234375, 9604.484375, 224.6924591064453125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+202,181271,530,1, -3320.517333984375, 6175.97509765625, 13.65654373168945312, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927,600,600),
(@GGUID+203,181271,530,1, -2929.725341796875, 6314.3125, 94.1783294677734375, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+204,181271,530,1, -2886.224365234375, 3412.177001953125, 0.507197022438049316, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+205,181271,530,1, -1470.9293212890625, 9904.2861328125, 199.4362335205078125, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+206,181271,530,1, -3760.7578125, 1288.8990478515625, 121.1401901245117187, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+207,181271,530,1, -2943.064697265625, 3643.0234375, -6.67492294311523437, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509,600,600),
(@GGUID+208,181271,530,1, -1401.4324951171875, 9815.9267578125, 207.051177978515625, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+209,181271,530,1, -1851.9149169921875, 6552.75439453125, 23.38936042785644531, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697,600,600),
(@GGUID+210,181271,530,1, -4397.8837890625, 2180.769287109375, 101.7094268798828125, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+211,181271,530,1, 1319.7742919921875, 7326.109375, 364.145843505859375, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003,600,600),
(@GGUID+212,181271,530,1, 3317.545654296875, 5423.16552734375, 146.0063018798828125, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+213,181271,530,1, -1264.3277587890625, 6603.22802734375, 59.69074249267578125, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+214,181271,530,1, -2171.3369140625, 7291.68603515625, -37.6524162292480468, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+215,181271,530,1, 1853.3504638671875, 6653.25927734375, 139.3586883544921875, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+216,181271,530,1, -1343.0242919921875, 9703.2568359375, 214.5805511474609375, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+217,181271,530,1, 1918.1861572265625, 6091.42041015625, 139.7303009033203125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+218,181271,530,1, 3594.49267578125, 2904.135986328125, 147.6743621826171875, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+219,181271,530,1, 1892.806396484375, 6162.59326171875, 144.0078277587890625, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818,600,600),
(@GGUID+220,181271,530,1, 2834.843505859375, 3757.364990234375, 181.1357269287109375, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267,600,600),
(@GGUID+221,181271,530,1, 3945.401123046875, 6015.81005859375, 266.04730224609375, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796,600,600),
(@GGUID+222,181271,530,1, -1142.62158203125, 9265.0673828125, 236.1720733642578125, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+223,181271,530,1, 2616.532470703125, 3664.990966796875, 174.436859130859375, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+224,181271,530,1, -4663.8037109375, 1373.5186767578125, 141.213226318359375, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+225,181271,530,1, -1383.383056640625, 8252.38671875, -8.32549762725830078, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+226,181271,530,1, -665.04559326171875, 8778.888671875, 200.2364501953125, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583,600,600),
(@GGUID+227,181271,530,1, 3602.44140625, 3163.809814453125, 100.63641357421875, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+228,181271,530,1, -3759.901123046875, 5469.90625, 16.75748825073242187, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+229,181271,530,1, 2115.5556640625, 6174.35498046875, 145.540557861328125, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358,600,600),
(@GGUID+230,181271,530,1, -184.967498779296875, 3009.436767578125, -1.66357100009918212, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652,600,600),
(@GGUID+231,181271,530,1, 4021.727783203125, 4872.63525390625, 267.112640380859375, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+232,181271,530,1, 2268.040771484375, 2859.275146484375, 132.8639068603515625, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486,600,600),
(@GGUID+233,181271,530,1, 1604.3023681640625, 5432.70166015625, 266.548095703125, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375,600,600),
(@GGUID+234,181271,530,1, -1524.4483642578125, 4926.0234375, 2.111097097396850585, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818,600,600),
(@GGUID+235,181271,530,1, 3049.254638671875, 2452.137939453125, 131.08294677734375, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+236,181271,530,1, -2532.844970703125, 1716.4527587890625, 46.400970458984375, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+237,181271,530,1, -1431.6353759765625, 6671.50341796875, 58.48941421508789062, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+238,181271,530,1, 31.94840431213378906, 3634.014892578125, 193.4570465087890625, 4.869470596313476562, 0, 0, -0.64944744110107421, 0.760406434535980224,600,600),
(@GGUID+239,181271,530,1, 3866.859375, 4007.1171875, 188.6927490234375, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+240,181271,530,1, -2256.40625, 6139.93212890625, 71.32285308837890625, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+241,181271,530,1, -3789.325439453125, 1746.6068115234375, 90.03234100341796875, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796,600,600),
(@GGUID+242,181271,530,1, -1097.02392578125, 7998.328125, 17.39533424377441406, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+243,181271,530,1, -3552.6337890625, 4078.05908203125, 69.0115814208984375, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+244,181271,530,1, -946.73480224609375, 3852.830322265625, 151.4258575439453125, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+245,181271,530,1, -3623.53955078125, 1183.2625732421875, 80.88500213623046875, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+246,181271,530,1, 1583.8541259765625, 6779.04638671875, 136.0831298828125, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267,600,600),
(@GGUID+247,181271,530,1, -1502.1783447265625, 9634.9423828125, 209.0155487060546875, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738,600,600),
(@GGUID+248,181271,530,1, 294.962890625, 4074.2734375, 118.9622116088867187, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+249,181271,530,1, 1930.373291015625, 7336.63818359375, 364.47052001953125, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+250,181271,530,1, 4435.45068359375, 3511.041259765625, 186.053497314453125, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+251,181271,530,1, -3861.60546875, 3211.817138671875, 311.04876708984375, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005,600,600),
(@GGUID+252,181271,530,1, 3040.971923828125, 2890.570556640625, 93.10762786865234375, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791,600,600),
(@GGUID+253,181271,530,1, -1298.0133056640625, 4761.1748046875, 73.79436492919921875, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125,600,600),
(@GGUID+254,181271,530,1, -4282.61572265625, 327.163421630859375, 117.6801528930664062, 2.373644113540649414, 0, 0, 0.927183151245117187, 0.37460830807685852,600,600),
(@GGUID+255,181271,530,1, -4062.959228515625, 3065.365478515625, 317.444732666015625, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+256,181271,530,1, -2704.3203125, 6929.31103515625, 3.314409971237182617, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+257,181271,530,1, -3616.774658203125, 6216.04541015625, -16.8610515594482421, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+258,181271,530,1, -3339.204833984375, 1284.94140625, 103.1630477905273437, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+259,181271,530,1, 2249.43310546875, 2420.711181640625, 118.5549468994140625, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+260,181271,530,1, 2433.50439453125, 7070.75634765625, 366.516632080078125, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+261,181271,530,1, -2495.5419921875, 6095.29150390625, 95.1579437255859375, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+262,181271,530,1, -2357.590576171875, 8514.3994140625, -26.407012939453125, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+263,181271,530,1, -2362.724853515625, 6498.705078125, 35.068756103515625, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+264,181271,530,1, 3669.991455078125, 4743.60107421875, 239.3400115966796875, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611,600,600),
(@GGUID+265,181271,530,1, -2924.308837890625, 8440.1904296875, -29.1708507537841796, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208,600,600),
(@GGUID+266,181271,530,1, -661.0546875, 7212.0234375, 56.5123138427734375, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646,600,600),
(@GGUID+267,181271,530,1, -2139.007080078125, 6341.74951171875, 51.80530166625976562, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+268,181271,530,1, 481.999237060546875, 3587.436767578125, 190.82415771484375, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+269,181271,530,1, 4655.40234375, 2342.033447265625, 186.2991790771484375, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+270,181271,530,1, -1850.7965087890625, 7930.19189453125, -62.7145729064941406, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+271,181271,530,1, -2648.85986328125, 6593.1201171875, 28.086883544921875, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+272,181271,530,1, -2726.088623046875, 6283.68505859375, 37.81026077270507812, 1.535889506340026855, 0, 0, 0.694658279418945312, 0.719339847564697265,600,600),
(@GGUID+273,181271,530,1, 371.6490478515625, 3587.953857421875, 181.0706024169921875, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+274,181271,530,1, -2847.08642578125, 6797.1484375, -31.7994346618652343, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+275,181271,530,1, -2607.739501953125, 6658.0498046875, 7.75991678237915039, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818,600,600),
(@GGUID+276,181271,530,1, 1765.4932861328125, 5118.96826171875, 265.687652587890625, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+277,181271,530,1, 256.466705322265625, 3158.983642578125, 44.02563858032226562, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904,600,600),
(@GGUID+278,181271,530,1, 2703.648193359375, 7220.16162109375, 367.17877197265625, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+279,181271,530,1, -1074.4063720703125, 1964.1514892578125, 85.058441162109375, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+280,181271,530,1, 483.93505859375, 3200.12890625, 43.02086639404296875, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+281,181271,530,1, 4252.81103515625, 2911.427978515625, 141.8491668701171875, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111,600,600),
(@GGUID+282,181271,530,1, 3912.97998046875, 5657.30859375, 268.433258056640625, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+283,181271,530,1, -5259.20556640625, 70.68804168701171875, 43.80923843383789062, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958,600,600),
(@GGUID+284,181271,530,1, 2003.96728515625, 5903.79931640625, 137.3594818115234375, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+285,181271,530,1, -3128.545166015625, 7106.462890625, -33.0736961364746093, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631,600,600),
(@GGUID+286,181271,530,1, 3681.952392578125, 2091.676025390625, 152.0285186767578125, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+287,181271,530,1, -2348.4814453125, 4388.193359375, 17.15679168701171875, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715,600,600),
(@GGUID+288,181271,530,1, 1902.812255859375, 5141.9619140625, 265.294647216796875, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+289,181271,530,1, 3416.9306640625, 2932.62841796875, 157.420013427734375, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+290,181271,530,1, -3807.225830078125, 3748.999267578125, 277.57232666015625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222,600,600),
(@GGUID+291,181271,530,1, -3924.283447265625, 6117.7216796875, -47.6490745544433593, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+292,181271,530,1, 4003.7197265625, 5129.5009765625, 266.794342041015625, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+293,181271,530,1, -3579.739990234375, 3605.42529296875, 283.86138916015625, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+294,181271,530,1, 3300.653564453125, 6832.17041015625, 169.7079925537109375, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+295,181271,530,1, 539.07696533203125, 2757.455322265625, 216.95599365234375, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+296,181271,530,1, 3314.90966796875, 6978.75, 164.4173736572265625, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+297,181271,530,1, -2912.291748046875, 7982.5771484375, -11.3789892196655273, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818,600,600),
(@GGUID+298,181271,530,1, -2060.86328125, 7564.15283203125, -85.50274658203125, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046,600,600),
(@GGUID+299,181271,530,1, -1907.0826416015625, 6384.42041015625, 52.26844406127929687, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849,600,600),
(@GGUID+300,181271,530,1, 3705.803466796875, 6858.99755859375, 149.3450927734375, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+301,181271,530,1, 3949.583251953125, 1556.7918701171875, -37.4742507934570312, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+302,181271,530,1, 4116.0791015625, 1858.2310791015625, 238.26593017578125, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+303,181271,530,1, 1846.8406982421875, 7158.51416015625, 363.85272216796875, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+304,181271,530,1, -3470.181640625, 4150.81884765625, 18.30896377563476562, 1.518436193466186523, 0, 0, 0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+305,181271,530,1, 1915.3529052734375, 4691.52880859375, 134.97235107421875, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738,600,600),
(@GGUID+306,181271,530,1, -2746.3876953125, 4558.859375, 3.237936973571777343, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+307,181271,530,1, -2009.9683837890625, 8398.3037109375, 18.01477241516113281, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946,600,600),
(@GGUID+308,181271,530,1, 1722.894775390625, 5953.78466796875, 145.86712646484375, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+309,181271,530,1, -3928.9306640625, 5006.798828125, -78.4069595336914062, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303,600,600),
(@GGUID+310,181271,530,1, -1257.6109619140625, 1532.6295166015625, 56.18421173095703125, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+311,181271,530,1, -2616.56201171875, 5440.08203125, 13.17013168334960937, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432,600,600),
(@GGUID+312,181271,530,1, -1566.9293212890625, 9904.6572265625, 196.8909912109375, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402,600,600),
(@GGUID+313,181271,530,1, -1931.9779052734375, 9252.27734375, 104.1000823974609375, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+314,181271,530,1, 243.0849609375, 3817.57373046875, 179.8882598876953125, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+315,181271,530,1, -4026.48779296875, 4419.87353515625, -50.2835578918457031, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+316,181271,530,1, -3891.64794921875, 5247.4130859375, -67.5054092407226562, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+317,181271,530,1, -3884.236572265625, 4479.21875, -23.1837139129638671, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+318,181271,530,1, -1000.2645263671875, 2107.3212890625, 93.63060760498046875, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+319,181271,530,1, -1647.4957275390625, 8134.0869140625, -26.0196247100830078, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+320,181271,530,1, -1015.84722900390625, 3059.903564453125, 25.17196273803710937, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+321,181271,530,1, 2284.1591796875, 7112.1875, 366.179107666015625, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+322,181271,530,1, -3665.35107421875, 1870.0833740234375, 86.809783935546875, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+323,181271,530,1, 3381.989501953125, 6786.51953125, 167.2826080322265625, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016,600,600),
(@GGUID+324,181271,530,1, 3410.8681640625, 6613.45068359375, 145.545440673828125, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+325,181271,530,1, -1260.044189453125, 4177.66162109375, 69.678863525390625, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066,600,600),
(@GGUID+326,181271,530,1, -3552.237060546875, 3969.059814453125, 87.82523345947265625, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664,600,600),
(@GGUID+327,181271,530,1, 4027.7265625, 5819.20751953125, 265.3311767578125, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+328,181271,530,1, -2629.477783203125, 1306.6705322265625, 96.0498046875, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+329,181271,530,1, -3626.0625, 3150.076416015625, 312.5780029296875, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+330,181271,530,1, -1810.0543212890625, 4308.501953125, 32.1814727783203125, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611,600,600),
(@GGUID+331,181271,530,1, 3347.38720703125, 5314.26025390625, 149.9832000732421875, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265,600,600),
(@GGUID+332,181271,530,1, -1305.7945556640625, 5122.61474609375, 8.732211112976074218, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+333,181271,530,1, -1164.1788330078125, 8006.63525390625, -79.9041366577148437, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+334,181271,530,1, -1542.5755615234375, 6256.1181640625, 61.0612945556640625, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+335,181271,530,1, 3080.564697265625, 5377.3486328125, 146.0318450927734375, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646,600,600),
(@GGUID+336,181271,530,1, 2539.881591796875, 5398.44970703125, 267.4481201171875, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+337,181271,530,1, 3970.729736328125, 3159.954833984375, 131.847900390625, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+338,181271,530,1, -855.73028564453125, 4024.26220703125, 95.4965972900390625, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+339,181271,530,1, -2212.471923828125, 8786.4267578125, 5.97915506362915039, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875,600,600),
(@GGUID+340,181271,530,1, -865.0518798828125, 1986.421630859375, 93.4709320068359375, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347,600,600),
(@GGUID+341,181271,530,1, 4971.86572265625, 2867.422119140625, 104.3697280883789062, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+342,181271,530,1, 3242.942626953125, 7205.94384765625, 165.1175079345703125, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+343,181271,530,1, 3404.35009765625, 2542.124755859375, 118.2275238037109375, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+344,181271,530,1, -559.08380126953125, 1924.607177734375, 84.440338134765625, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+345,181271,530,1, -2025.8203125, 5064.25146484375, 25.061614990234375, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687,600,600),
(@GGUID+346,181271,530,1, 2058.83984375, 5737.48291015625, 268.8419189453125, 0.925023794174194335, 0, 0, 0.446197509765625, 0.894934535026550292,600,600),
(@GGUID+347,181271,530,1, -1170.4019775390625, 3943.60595703125, 147.3367919921875, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+348,181271,530,1, 3108.955810546875, 3493.0361328125, 157.2486114501953125, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+349,181271,530,1, 2891.721435546875, 5712.923828125, 143.0349273681640625, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+350,181271,530,1, -581.28302001953125, 3667.278564453125, 51.95624923706054687, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759,600,600),
(@GGUID+351,181271,530,1, -653.0489501953125, 4418.5341796875, 100.4984893798828125, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+352,181271,530,1, -785.38653564453125, 4700.7080078125, 69.3952178955078125, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+353,181271,530,1, -968.927001953125, 4437.71630859375, 100.0862808227539062, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+354,181271,530,1, -2704.5634765625, 4720.69384765625, 8.166960716247558593, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+355,181271,530,1, 3483.08544921875, 6884.095703125, 138.1488189697265625, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255,600,600),
(@GGUID+356,181271,530,1, 2379.79345703125, 2449.811279296875, 145.2412872314453125, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+357,181271,530,1, -1117.9947509765625, 8942.5556640625, 109.7432937622070312, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823,600,600),
(@GGUID+358,181271,530,1, -1205.4229736328125, 9469.3212890625, 280.463226318359375, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+359,181271,530,1, -1429.177001953125, 9576.3994140625, 208.48541259765625, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646,600,600),
(@GGUID+360,181271,530,1, -2204.8359375, 3119.056396484375, -25.9415245056152343, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+361,181271,530,1, 3366.186767578125, 3923.850830078125, 201.30126953125, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106,600,600),
(@GGUID+362,181271,530,1, -2655.446533203125, 7935.41943359375, -34.3071556091308593, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938,600,600),
(@GGUID+363,181271,530,1, 1763.0885009765625, 6105.32861328125, 141.1325225830078125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173,600,600),
(@GGUID+364,181271,530,1, -3954.305908203125, 3747.3681640625, 295.138092041015625, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+365,181271,530,1, -3891.401123046875, 2955.529052734375, 356.68524169921875, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+366,181271,530,1, -2997.966064453125, 5821.96630859375, 7.061598777770996093, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927,600,600),
(@GGUID+367,181271,530,1, -2429.177001953125, 5457.29931640625, 15.95421695709228515, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946,600,600),
(@GGUID+368,181271,530,1, 3069.444580078125, 1703.865478515625, 136.7947540283203125, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+369,181271,530,1, 4716.298828125, 3291.627197265625, 180.0584259033203125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+370,181271,530,1, 2899.68798828125, 6922.06298828125, 365.3502197265625, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+371,181271,530,1, 3731.589111328125, 6127.98291015625, 266.080322265625, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+372,181271,530,1, -1004.01910400390625, 4316.0478515625, 68.06516265869140625, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803,600,600),
(@GGUID+373,181271,530,1, -382.817596435546875, 4505.4619140625, 66.671630859375, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+374,181271,530,1, -994.73614501953125, 7547.51123046875, 46.78981399536132812, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775,600,600),
(@GGUID+375,181271,530,1, -2321.724365234375, 4732.10205078125, 18.62935829162597656, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222,600,600),
(@GGUID+376,181271,530,1, 3513.403564453125, 6551.7099609375, 132.014923095703125, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+377,181271,530,1, -2813.264892578125, 6422.0498046875, 66.11871337890625, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248,600,600),
(@GGUID+378,181271,530,1, 11.79356575012207031, 2033.045166015625, 82.79595184326171875, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+379,181271,530,1, -988.289306640625, 2150.755615234375, 34.09547805786132812, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+380,181271,530,1, -1941.1243896484375, 7241.93212890625, -29.378631591796875, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494,600,600),
(@GGUID+381,181271,530,1, -927.22442626953125, 7727.73291015625, 39.81304931640625, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+382,181271,530,1, -802.50360107421875, 4465.43408203125, 118.8135299682617187, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+383,181271,530,1, -2329.328857421875, 4952.69384765625, 6.184380054473876953, -2.30383467674255371, 0, 0, 0.913545489311218261, -0.4067365825176239,600,600),
(@GGUID+384,181271,530,1, -3944.1875, 4620.28515625, -78.3444671630859375, -2.51327419281005859, 0, 0, 0.951056540012359619, -0.30901694297790527,600,600),
(@GGUID+385,181271,530,1, -3842.911376953125, 5529.68212890625, -6.44390296936035156, 2.321287870407104492, 0, 0, 0.917060077190399169, 0.398749083280563354,600,600),
(@GGUID+386,181271,530,1, -1919.5113525390625, 6744.078125, -56.6484870910644531, 0.366519153118133544, 0, 0, 0.182235524058341979, 0.983254909515380859,600,600),
(@GGUID+387,181271,530,1, -797.13018798828125, 8204.2001953125, 64.01386260986328125, 1.431169986724853515, 0, 0, 0.656059026718139648, 0.754709601402282714,600,600),
(@GGUID+388,181271,530,1, -3773.80908203125, 796.38153076171875, 68.56870269775390625, 2.007128715515136718, 0, 0, 0.843391478061676025, 0.537299573421478271,600,600),
(@GGUID+389,181271,530,1, -1471.1417236328125, 3544.361083984375, 68.1824798583984375, -0.41887885332107543, 0, 0, 0.207911610603332519, -0.97814762592315673,600,600),
(@GGUID+390,181271,530,1, -630.75250244140625, 8318.4560546875, 60.38872146606445312, -2.82743334770202636, 0, 0, 0.987688362598419189, -0.15643444657325744,600,600),
(@GGUID+391,181271,530,1, -3579.685546875, 5487.67431640625, -2.84584307670593261, -1.88495564460754394, 0, 0, 0.809017002582550048, -0.58778518438339233,600,600),
(@GGUID+392,181271,530,1, -4904.7578125, 376.08734130859375, 76.7602081298828125, 0.191986218094825744, 0, 0, 0.095845751464366912, 0.995396196842193603,600,600),
(@GGUID+393,181271,530,1, -2083.460205078125, 4190.97119140625, 2.711786985397338867, -1.65806281566619873, 0, 0, 0.737277328968048095, -0.67559021711349487,600,600),
(@GGUID+394,181271,530,1, -2088.73388671875, 7053.32080078125, -2.25182700157165527, -2.2165684700012207, 0, 0, 0.894934415817260742, -0.4461977481842041,600,600),
(@GGUID+395,181271,530,1, -2874.951171875, 3786.27783203125, 3.468044042587280273, -2.82743334770202636, 0, 0, 0.987688362598419189, -0.15643444657325744,600,600),
(@GGUID+396,181271,530,1, -2905.8642578125, 5655.447265625, 19.70638847351074218, 1.570796370506286621, 0, 0, 0.707106769084930419, 0.707106769084930419,600,600),
(@GGUID+397,181271,530,1, -2733.7412109375, 5500.8212890625, 28.44719123840332031, -0.03490668907761573, 0, 0, 0.017452457919716835, -0.99984771013259887,600,600),
(@GGUID+398,181271,530,1, -2399.143798828125, 8687.3251953125, -12.017613410949707, -1.48352992534637451, 0, 0, 0.675590217113494873, -0.73727732896804809,600,600),
(@GGUID+399,181271,530,1, -1226.293212890625, 8062.90966796875, -84.2318038940429687, 2.548180580139160156, 0, 0, 0.956304728984832763, 0.292371779680252075,600,600),
(@GGUID+400,181271,530,1, -3995.91796875, 1464.3868408203125, 89.51096343994140625, 1.3962632417678833, 0, 0, 0.642787575721740722, 0.766044437885284423,600,600),
(@GGUID+401,181271,530,1, -1008.92449951171875, 7854.41943359375, 49.17926788330078125, 2.129301786422729492, 0, 0, 0.874619722366333007, 0.484809577465057373,600,600),
(@GGUID+402,181271,530,1, -2790.013427734375, 8739.5576171875, -28.6689395904541015, 0.069813162088394165, 0, 0, 0.034899495542049407, 0.999390840530395507,600,600),
(@GGUID+403,181271,530,1, 4046.4189453125, 3857.94580078125, 202.0698699951171875, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863,600,600),
(@GGUID+404,181271,530,1, -4286.2822265625, 1783.0948486328125, 151.3429718017578125, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+405,181271,530,1, -3074.27294921875, 3646.811767578125, 8.25406646728515625, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798,600,600),
(@GGUID+406,181271,530,1, 1647.1922607421875, 5246.80126953125, 265.703826904296875, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+407,181271,530,1, 4449.904296875, 3286.51123046875, 150.4508514404296875, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+408,181271,530,1, -3852.997802734375, 2376.888427734375, 154.0373992919921875, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344,600,600),
(@GGUID+409,181271,530,1, 13.47856998443603515, 4401.0546875, 114.70379638671875, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+410,181271,530,1, -1099.8824462890625, 3414.5361328125, 142.4396514892578125, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+411,181271,530,1, -606.0924072265625, 1794.842041015625, 84.62136077880859375, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+412,181271,530,1, -3449.22216796875, 3484.2548828125, 283.44464111328125, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305,600,600),
(@GGUID+413,181271,530,1, -2793.40869140625, 7509.48974609375, 2.87847304344177246, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+414,181271,530,1, -3141.510498046875, 4091.983642578125, 11.44765853881835937, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+415,181271,530,1, -1532.3765869140625, 4545.328125, 33.35881423950195312, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+416,181271,530,1, 1810.370849609375, 6879.83837890625, 145.352294921875, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+417,181271,530,1, -3807.93408203125, 929.0968017578125, 80.84275054931640625, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+418,181271,530,1, -998.4744873046875, 3584.42333984375, 160.8246612548828125, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863,600,600),
(@GGUID+419,181271,530,1, 2155.967529296875, 7124.06884765625, 364.705535888671875, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+420,181271,530,1, 2604.898681640625, 7250.9404296875, 366.040924072265625, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565,600,600),
(@GGUID+421,181271,530,1, 2657.13232421875, 7045.669921875, 365.412567138671875, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759,600,600),
(@GGUID+422,181271,530,1, -552.89239501953125, 4675.57470703125, 58.95905303955078125, -0.52359795570373535, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+423,181271,530,1, -3221.483642578125, 3968.671142578125, 12.3089447021484375, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101,600,600),
(@GGUID+424,181271,530,1, 3137.139892578125, 5104.99755859375, 268.963775634765625, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+425,181271,530,1, -3627.1357421875, 3800.681396484375, 257.236968994140625, -1.93731570243835449, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+426,181271,530,1, -3377.155517578125, 3643.2392578125, 284.78448486328125, -2.18166041374206542, 0, 0, -0.88701057434082031, 0.461749136447906494,600,600),
(@GGUID+427,181271,530,1, -2969.50146484375, 7621.09228515625, 25.42188835144042968, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+428,181271,530,1, -1389.2276611328125, 9219.6318359375, 243.2794036865234375, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+429,181271,530,1, 1572.6907958984375, 7199.30859375, 363.000640869140625, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+430,181271,530,1, 3936.237060546875, 2936.179931640625, 118.0215225219726562, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+431,181271,530,1, 3983.15234375, 2116.103759765625, 256.429351806640625, 3.141592741012573242, 0, 0, -1, 0,600,600),
(@GGUID+432,181271,530,1, 4824.61279296875, 3874.049072265625, 216.2004241943359375, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+433,181271,530,1, -1368.8941650390625, 4051.009521484375, 123.2277603149414062, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+434,181271,530,1, -1012.912109375, 3494.39892578125, 143.0253143310546875, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+435,181271,530,1, 4871.37255859375, 3723.19970703125, 202.70977783203125, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026,600,600),
(@GGUID+436,181271,530,1, 4100.79345703125, 5342.17578125, 269.254302978515625, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376,600,600),
(@GGUID+437,181271,530,1, 3537.3271484375, 7045.5078125, 148.784454345703125, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724,600,600),
(@GGUID+438,181271,530,1, -3814.779541015625, 5820.767578125, -39.543853759765625, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600);

SET @GGUID := 183800; -- zangarmarsh
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,183045,530,1, -289.295562744140625, 7279.96337890625, 37.00469970703125, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+1,183045,530,1, -1056.9520263671875, 5742.2109375, 29.52275276184082031, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958,600,600),
(@GGUID+2,183045,530,1, 1268.1353759765625, 7886.69189453125, 17.09506607055664062, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+3,183045,530,1, 837.49298095703125, 6525.7509765625, 23.45973587036132812, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+4,183045,530,1, -1076.2017822265625, 5069.24951171875, 31.36746978759765625, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+5,183045,530,1, 857.64208984375, 6753.49267578125, 22.38418006896972656, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881,600,600),
(@GGUID+6,183045,530,1, 942.02886962890625, 6967.95654296875, 23.11518096923828125, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208,600,600),
(@GGUID+7,183045,530,1, 356.197052001953125, 6847.9267578125, 50.66741561889648437, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183,600,600),
(@GGUID+8,183045,530,1, 1178.0008544921875, 8768.3935546875, -0.57866901159286499, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+9,183045,530,1, -422.144317626953125, 6609.53076171875, 37.46411895751953125, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871,600,600),
(@GGUID+10,183045,530,1, 1001.698486328125, 5722.56494140625, -9.07767963409423828, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305,600,600),
(@GGUID+11,183045,530,1, -1466.91357421875, 6010.62744140625, 201.616241455078125, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+12,183045,530,1, 997.18804931640625, 5458.1923828125, -29.8923816680908203, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046,600,600),
(@GGUID+13,183045,530,1, -1304.4261474609375, 5655.9228515625, 199.0030364990234375, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+14,183045,530,1, -1367.3831787109375, 5872.87841796875, 197.9303131103515625, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458,600,600),
(@GGUID+15,183045,530,1, -1392.3448486328125, 5722.4609375, 196.03515625, 5.84685373306274414, 0, 0, -0.21643924713134765, 0.976296067237854003,600,600),
(@GGUID+16,183045,530,1, -569.4073486328125, 6115.90625, 33.05013275146484375, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+17,183045,530,1, -701.988525390625, 5161.71142578125, 26.67993736267089843, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+18,183045,530,1, 1322.3101806640625, 8154.72119140625, -2.09650993347167968, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+19,183045,530,1, -1205.10693359375, 5839.29541015625, 202.1883544921875, 2.967041015625, 0, 0, 0.996193885803222656, 0.087165042757987976,600,600),
(@GGUID+20,183045,530,1, -1517.839111328125, 5859.7861328125, 205.5102081298828125, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378,600,600),
(@GGUID+21,183045,530,1, 650.9873046875, 5029.43212890625, 11.44268226623535156, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303,600,600),
(@GGUID+22,183045,530,1, -734.03643798828125, 6121.95703125, 38.49885177612304687, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+23,183045,530,1, 1024.7374267578125, 5299.03955078125, -29.1083812713623046, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+24,183045,530,1, 41.740234375, 9033.123046875, 18.67595672607421875, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+25,183045,530,1, -41.3600273132324218, 8003.3291015625, 27.24242210388183593, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+26,183045,530,1, -981.63323974609375, 5905.0380859375, 23.59750175476074218, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+27,183045,530,1, -1282.5999755859375, 5942.3955078125, 204.1829376220703125, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873,600,600),
(@GGUID+28,183045,530,1, -1566.8197021484375, 6007.9599609375, 206.4582061767578125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+29,183045,530,1, 425.951080322265625, 5079.765625, 36.24861526489257812, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+30,183045,530,1, 432.73187255859375, 8995.9599609375, 26.01398849487304687, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419,600,600),
(@GGUID+31,183045,530,1, 816.97052001953125, 4998.2861328125, -14.3024358749389648, 0, 0, 0, 0, 1,600,600),
(@GGUID+32,183045,530,1, -272.63031005859375, 7048.91357421875, 33.56989669799804687, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+33,183045,530,1, -1025.8531494140625, 6077.8916015625, 22.16862869262695312, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712,600,600),
(@GGUID+34,183045,530,1, -393.171875, 7912.751953125, 45.02159500122070312, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+35,183045,530,1, 385.022125244140625, 7353.19287109375, 53.205047607421875, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+36,183045,530,1, 862.6884765625, 8754.8486328125, -9.51741600036621093, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058,600,600),
(@GGUID+37,183045,530,1, 1418.753173828125, 7754.9697265625, 12.76790809631347656, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+38,183045,530,1, 849.47540283203125, 6344.71728515625, 20.85741615295410156, 1.518436193466186523, 0, 0, 0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+39,183045,530,1, -317.859375, 6898.26025390625, 27.15551948547363281, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+40,183045,530,1, 275.751861572265625, 5114.53955078125, 37.18919754028320312, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+41,183045,530,1, -1092.4468994140625, 5488.67822265625, 31.244354248046875, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+42,183045,530,1, -425.064239501953125, 5304.8193359375, 29.05960845947265625, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+43,183045,530,1, -252.665359497070312, 7149.40869140625, 39.09526824951171875, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724,600,600),
(@GGUID+44,183045,530,1, -543.5809326171875, 6423.0654296875, 22.65011787414550781, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453,600,600),
(@GGUID+45,183045,530,1, 723.16241455078125, 8877.8720703125, -7.81576299667358398, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+46,183045,530,1, 1037.2452392578125, 5097.529296875, -24.6376495361328125, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101,600,600),
(@GGUID+47,183045,530,1, -307.522369384765625, 7592.0771484375, 36.81156158447265625, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+48,183045,530,1, -1176.5084228515625, 5526.42919921875, 57.26234817504882812, -0.19198638200759887, 0, 0, 0.095845833420753479, -0.9953961968421936,600,600),
(@GGUID+49,183045,530,1, -1069.70947265625, 5781.892578125, 53.84572601318359375, -2.46091413497924804, 0, 0, 0.942641496658325195, -0.33380687236785888,600,600),
(@GGUID+50,183045,530,1, -256.7022705078125, 8153.30029296875, 30.54827499389648437, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331,600,600),
(@GGUID+51,183045,530,1, -1152.0267333984375, 5655.353515625, 75.91933441162109375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352,600,600),
(@GGUID+52,183045,530,1, 14.07573795318603515, 5185.8291015625, 35.76189041137695312, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823,600,600),
(@GGUID+53,183045,530,1, -254.85699462890625, 8846.5234375, 25.20658302307128906, -2.67034745216369628, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+54,183045,530,1, -129.533859252929687, 7857.80908203125, 26.08458709716796875, -1.97221982479095458, 0, 0, -0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+55,183045,530,1, 1462.0855712890625, 8654.7802734375, -15.7787981033325195, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600),
(@GGUID+56,183045,530,1, -366.46875, 8644.189453125, 33.833648681640625, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+57,183045,530,1, 1175.7086181640625, 7606.22314453125, 36.5971527099609375, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279,600,600);

-- ragveil/flamecap
SET @GGUID := 181300;
DELETE FROM gameobject WHERE guid BETWEEN 181300 AND 181599 AND id = 0;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,0,530,1, 248.86871337890625, 5376.12744140625, 22.2603607177734375, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+1,0,530,1, 402.49554443359375, 8050.44970703125, 24.05359840393066406, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+2,0,530,1, -492.668731689453125, 5920.05908203125, 24.132080078125, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066,600,600),
(@GGUID+3,0,530,1, 710.29229736328125, 5258.81298828125, -0.5658000111579895, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347,600,600),
(@GGUID+4,0,530,1, 742.95599365234375, 8687.4150390625, 15.15192985534667968, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486,600,600),
(@GGUID+5,0,530,1, 558.51739501953125, 8079.0556640625, 23.12423133850097656, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+6,0,530,1, 502.554412841796875, 7910.94091796875, 22.901947021484375, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+7,0,530,1, 475.502716064453125, 5950.67333984375, 22.84932899475097656, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+8,0,530,1, 541.68231201171875, 5959.59228515625, 22.26519966125488281, 2.129300594329833984, 0, 0, 0.874619483947753906, 0.484810054302215576,600,600),
(@GGUID+9,0,530,1, 541.016845703125, 5193.09375, 3.310652971267700195, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808,600,600),
(@GGUID+10,0,530,1, -951.220703125, 5807.52001953125, 23.66695404052734375, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+11,0,530,1, 877.30535888671875, 8450.0625, 22.57107162475585937, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389,600,600),
(@GGUID+12,0,530,1, -448.3927001953125, 5388.171875, 22.38633537292480468, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037,600,600),
(@GGUID+13,0,530,1, 58.67545700073242187, 5531.171875, 23.87764167785644531, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+14,0,530,1, -202.466323852539062, 7536.7197265625, 22.07931709289550781, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+15,0,530,1, -815.431884765625, 5197.00927734375, 19.11597251892089843, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808,600,600),
(@GGUID+16,0,530,1, 379.55426025390625, 8655.083984375, 21.49130058288574218, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179,600,600),
(@GGUID+17,0,530,1, -942.45159912109375, 5153.55712890625, 23.39493751525878906, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+18,0,530,1, -83.7278671264648437, 8736.5009765625, 20.92701148986816406, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+19,0,530,1, 393.008453369140625, 5888.212890625, 22.38036346435546875, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+20,0,530,1, -145.006179809570312, 7033.56396484375, 19.59897613525390625, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+21,0,530,1, -753.0057373046875, 5149.8427734375, 21.74246025085449218, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+22,0,530,1, 785.26019287109375, 6723.04833984375, 20.06217765808105468, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+23,0,530,1, 728.994873046875, 6149.56005859375, 25.19115829467773437, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+24,0,530,1, 986.9091796875, 7558.140625, 23.59881019592285156, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+25,0,530,1, -421.4796142578125, 5542.45703125, 21.42939186096191406, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708,600,600),
(@GGUID+26,0,530,1, -420.84625244140625, 6161.43603515625, 23.01995849609375, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125,600,600),
(@GGUID+27,0,530,1, -328.463775634765625, 6013.13623046875, 22.26105117797851562, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+28,0,530,1, 621.65020751953125, 8910.5361328125, 24.66057014465332031, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+29,0,530,1, -13.1290149688720703, 5275.89404296875, 23.71378517150878906, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+30,0,530,1, 568.9354248046875, 7617.02685546875, 21.81453895568847656, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+31,0,530,1, 408.18804931640625, 8790.5048828125, 23.61035728454589843, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+32,0,530,1, -105.130653381347656, 6214.173828125, 23.19717979431152343, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+33,0,530,1, -605.74945068359375, 5951.51220703125, 23.56161880493164062, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+34,0,530,1, -82.9321823120117187, 6096.6767578125, 22.48111724853515625, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249,600,600),
(@GGUID+35,0,530,1, 888.63555908203125, 5312.99365234375, 20.06020927429199218, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679,600,600),
(@GGUID+36,0,530,1, 825.48858642578125, 5371.796875, -0.9173930287361145, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+37,0,530,1, 1085.9169921875, 7859.71728515625, 23.0435028076171875, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023,600,600),
(@GGUID+38,0,530,1, 802.07794189453125, 5137.20751953125, 23.3024444580078125, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+39,0,530,1, 1026.6671142578125, 8728.076171875, 5.486895084381103515, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785,600,600),
(@GGUID+40,0,530,1, 1000.7860107421875, 8098.36572265625, 22.86846160888671875, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+41,0,530,1, 781.369140625, 6494.6220703125, 20.87060737609863281, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556,600,600),
(@GGUID+42,0,530,1, 243.61676025390625, 7459.68408203125, 23.4178924560546875, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603,600,600),
(@GGUID+43,0,530,1, 1029.4991455078125, 8594.1875, 23.76601028442382812, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389,600,600),
(@GGUID+44,0,530,1, 284.933258056640625, 5611.9423828125, 22.08774757385253906, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+45,0,530,1, 382.04644775390625, 5566.4052734375, 23.30982398986816406, 4.991643905639648437, 0, 0, -0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+46,0,530,1, 1232.017822265625, 8670.8642578125, 19.21376609802246093, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+47,0,530,1, 57.01432418823242187, 8986.69921875, 25.57900810241699218, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+48,0,530,1, -375.6768798828125, 6728.36962890625, 22.33779335021972656, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303,600,600),
(@GGUID+49,0,530,1, 22.31814193725585937, 5377.77099609375, 23.22637557983398437, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+50,0,530,1, -25.0691184997558593, 8908.5185546875, 20.30692481994628906, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+51,0,530,1, -211.252716064453125, 6958.58740234375, 20.90915679931640625, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468,600,600),
(@GGUID+52,0,530,1, 758.05010986328125, 5651.1474609375, 23.09001350402832031, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+53,0,530,1, -131.106552124023437, 8814.3701171875, 24.30292701721191406, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576,600,600),
(@GGUID+54,0,530,1, 114.4339218139648437, 8605.8486328125, 22.2758026123046875, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.26724100112915039,600,600),
(@GGUID+55,0,530,1, 6.319118976593017578, 8596.5361328125, 22.06174659729003906, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705,600,600),
(@GGUID+56,0,530,1, 42.83322525024414062, 7622.70556640625, 23.87197303771972656, 0, 0, 0, 0, 1,600,600),
(@GGUID+57,0,530,1, 536.5594482421875, 5434.35400390625, -3.38172006607055664, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+58,0,530,1, 761.520751953125, 7509.7255859375, 22.95882606506347656, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+59,0,530,1, -429.241851806640625, 5742.36474609375, 22.38465309143066406, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+60,0,530,1, 907.0338134765625, 5417.1279296875, 9.797681808471679687, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291,600,600),
(@GGUID+61,0,530,1, -316.196624755859375, 8583.640625, 20.17461585998535156, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958,600,600),
(@GGUID+62,0,530,1, -666.82855224609375, 5724.52392578125, 20.95987510681152343, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+63,0,530,1, 725.61590576171875, 5508.31396484375, -1.49713397026062011, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+64,0,530,1, 709.4962158203125, 6396.88427734375, 20.4141845703125, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525,600,600),
(@GGUID+65,0,530,1, -718.884033203125, 5976.53076171875, 24.44838333129882812, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+66,0,530,1, 130.7118072509765625, 9053.9248046875, 13.19422626495361328, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583,600,600),
(@GGUID+67,0,530,1, -139.563369750976562, 9000.1572265625, 22.87404060363769531, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247,600,600),
(@GGUID+68,0,530,1, 605.93927001953125, 5871.77880859375, 22.7876129150390625, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525,600,600),
(@GGUID+69,0,530,1, 154.377166748046875, 8310.025390625, 23.58813285827636718, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+70,0,530,1, 755.45159912109375, 7906.57568359375, 23.39142227172851562, 0, 0, 0, 0, 1,600,600),
(@GGUID+71,0,530,1, 698.64862060546875, 7816.9072265625, 22.214508056640625, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+72,0,530,1, 627.6114501953125, 5326.45703125, -25.0847835540771484, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+73,0,530,1, -64.0145416259765625, 7621.8115234375, 21.08378028869628906, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712,600,600),
(@GGUID+74,0,530,1, 62.28526687622070312, 8524.4453125, 21.70278358459472656, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183,600,600),
(@GGUID+75,0,530,1, -147.010635375976562, 7711.8974609375, 23.45777320861816406, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+76,0,530,1, 46.31304168701171875, 8195.365234375, 21.70585823059082031, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+77,0,530,1, 611.32421875, 5518.14013671875, -1.1646050214767456, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+78,0,530,1, 458.681915283203125, 5300.45458984375, -1.4592670202255249, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746,600,600),
(@GGUID+79,0,530,1, 1333.6656494140625, 8340.046875, 5.07370615005493164, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646,600,600),
(@GGUID+80,0,530,1, 687.5966796875, 8640.607421875, 24.30428314208984375, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+81,0,530,1, 516.82086181640625, 7402.27197265625, 26.29861640930175781, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+82,0,530,1, -91.9377212524414062, 7280.53125, 22.97615242004394531, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+83,0,530,1, 907.39752197265625, 5773.4541015625, 10.76746654510498046, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505,600,600),
(@GGUID+84,0,530,1, 832.05755615234375, 5815.77880859375, 29.041473388671875, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562,600,600),
(@GGUID+85,0,530,1, 705.321533203125, 5845.685546875, 27.01970672607421875, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+86,0,530,1, 1165.0040283203125, 8260.466796875, 18.69274139404296875, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791,600,600),
(@GGUID+87,0,530,1, -957.0867919921875, 6071.76513671875, 22.59673500061035156, 6.178466320037841796, 0, 0, -0.05233573913574218, 0.998629570007324218,600,600),
(@GGUID+88,0,530,1, -894.191650390625, 5466.5, 22.41420936584472656, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+89,0,530,1, -252.617080688476562, 6198.2802734375, 23.954315185546875, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+90,0,530,1, -516.086181640625, 5520.75927734375, 23.8180999755859375, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+91,0,530,1, -44.1495246887207031, 5487.14404296875, 23.53425216674804687, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+92,0,530,1, 818.21417236328125, 5238.9560546875, 22.25690460205078125, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697,600,600),
(@GGUID+93,0,530,1, -216.786026000976562, 8601.2958984375, 20.13415718078613281, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+94,0,530,1, 919.07586669921875, 7500.8818359375, 22.24661064147949218, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904,600,600),
(@GGUID+95,0,530,1, 539.2685546875, 5323.59375, -24.6285037994384765, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505,600,600),
(@GGUID+96,0,530,1, 398.95745849609375, 8349.8134765625, 22.85984039306640625, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+97,0,530,1, 693.7557373046875, 8193.578125, 23.29528617858886718, 1.32644820213317871, 0, 0, 0.615660667419433593, 0.788011372089385986,600,600),
(@GGUID+98,0,530,1, -201.13629150390625, 8703.234375, 20.443756103515625, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453,600,600),
(@GGUID+99,0,530,1, -91.6730728149414062, 5906.30029296875, 22.44159889221191406, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697,600,600),
(@GGUID+100,0,530,1, 235.5514373779296875, 5897.5029296875, 22.08293533325195312, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+101,0,530,1, -199.006942749023437, 8808.4892578125, 18.97010231018066406, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+102,0,530,1, 1358.6552734375, 8558.9189453125, 21.8466796875, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+103,0,530,1, 649.88409423828125, 6260.28369140625, 22.61391067504882812, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+104,0,530,1, 522.205078125, 6323.62451171875, 22.54294776916503906, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+105,0,530,1, 978.89605712890625, 8378.6484375, 23.20186996459960937, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087,600,600),
(@GGUID+106,0,530,1, 1149.7628173828125, 8443.873046875, 22.71367263793945312, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775,600,600),
(@GGUID+107,0,530,1, -790.10198974609375, 5358.79736328125, 21.09662818908691406, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+108,0,530,1, 946.88714599609375, 7932.587890625, 23.63025856018066406, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599,600,600),
(@GGUID+109,0,530,1, 1003.673583984375, 7841.73779296875, 23.56548690795898437, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163,600,600),
(@GGUID+110,0,530,1, -786.306884765625, 6080.974609375, 24.53438568115234375, 5.235987663269042968, 0, 0, -0.5, 0.866025388240814208,600,600),
(@GGUID+111,0,530,1, 630.33575439453125, 8148.81591796875, 23.27840805053710937, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294,600,600),
(@GGUID+112,0,530,1, -392.14410400390625, 6500.775390625, 21.55301094055175781, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+113,0,530,1, 366.142578125, 8161.6259765625, 23.19777870178222656, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872,600,600),
(@GGUID+114,0,530,1, 15.59559440612792968, 5353.173828125, 23.12498092651367187, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291,600,600),
(@GGUID+115,0,530,1, 360.54437255859375, 8986.8642578125, 29.76894187927246093, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796,600,600),
(@GGUID+116,0,530,1, 906.464111328125, 5104.12158203125, 4.846712112426757812, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076,600,600),
(@GGUID+117,0,530,1, 794.90960693359375, 5743.58203125, 25.96705055236816406, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+118,0,530,1, 285.784881591796875, 8202.7861328125, 22.07124519348144531, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+119,0,530,1, 41.3270416259765625, 7539.69970703125, 22.35515975952148437, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352,600,600),
(@GGUID+120,0,530,1, -193.153427124023437, 7896.4140625, 20.48154258728027343, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+121,0,530,1, 461.85546875, 8882.3359375, 24.9467926025390625, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+122,0,530,1, 863.5, 7637.1552734375, 22.80811309814453125, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687,600,600),
(@GGUID+123,0,530,1, 610.60870361328125, 6015.392578125, 23.00902175903320312, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+124,0,530,1, 204.35308837890625, 8169.517578125, 23.32739448547363281, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+125,0,530,1, -87.9494400024414062, 8452.4306640625, 22.178192138671875, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378,600,600),
(@GGUID+126,0,530,1, 152.728729248046875, 8394.51953125, 23.33772850036621093, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724,600,600),
(@GGUID+127,0,530,1, 165.25347900390625, 8958.126953125, 20.93749618530273437, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+128,0,530,1, 845.66827392578125, 8114.97216796875, 22.64112281799316406, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441,600,600),
(@GGUID+129,0,530,1, 976.46246337890625, 8205.35546875, 22.78092575073242187, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+130,0,530,1, -292.53558349609375, 5995.2646484375, 24.06647872924804687, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+131,0,530,1, -593.06378173828125, 5314.63720703125, 22.91179847717285156, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697,600,600),
(@GGUID+132,0,530,1, 314.8721923828125, 7734.88818359375, 23.27033233642578125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755,600,600),
(@GGUID+133,0,530,1, 52.36935806274414062, 5605.32666015625, 22.29260635375976562, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039,600,600),
(@GGUID+134,0,530,1, 1103.97265625, 8226.859375, 22.64286613464355468, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189,600,600),
(@GGUID+135,0,530,1, -987.6199951171875, 5225.52783203125, 22.55140113830566406, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+136,0,530,1, -784.560546875, 5929.41650390625, 23.21475601196289062, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+137,0,530,1, 657.94097900390625, 6443.578125, 21.32227516174316406, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+138,0,530,1, -178.381515502929687, 6021.08056640625, 22.51168251037597656, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+139,0,530,1, 326.541900634765625, 5720.12060546875, 22.45700454711914062, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525,600,600),
(@GGUID+140,0,530,1, 565.137939453125, 7758.171875, 23.90021324157714843, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746,600,600),
(@GGUID+141,0,530,1, 565.94189453125, 7985.9384765625, 21.67036056518554687, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419,600,600),
(@GGUID+142,0,530,1, 532.854736328125, 8196.765625, 23.58384895324707031, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175,600,600),
(@GGUID+143,0,530,1, -107.80621337890625, 7915.09375, 21.24822425842285156, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+144,0,530,1, 117.451171875, 7830.4130859375, 21.61443519592285156, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+145,0,530,1, 836.4842529296875, 5675.57470703125, 24.70446395874023437, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419,600,600),
(@GGUID+146,0,530,1, 321.59429931640625, 7584.0166015625, 23.59412765502929687, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881,600,600),
(@GGUID+147,0,530,1, 524.36456298828125, 8680.7587890625, 22.35979652404785156, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+148,0,530,1, -350.64886474609375, 8613.0498046875, 22.52176856994628906, 6.03883981704711914, 0, 0, -0.12186908721923828, 0.9925462007522583,600,600),
(@GGUID+149,0,530,1, -519.312744140625, 6152.95654296875, 22.34937477111816406, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+150,0,530,1, -228.200958251953125, 5812.6708984375, 23.54575347900390625, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546,600,600),
(@GGUID+151,0,530,1, 8.491319656372070312, 8712.4658203125, 21.19984245300292968, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437,600,600),
(@GGUID+152,0,530,1, -1027.5406494140625, 5276.30322265625, 22.83963584899902343, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652,600,600),
(@GGUID+153,0,530,1, 185.443572998046875, 5653.1962890625, 23.47869300842285156, 0.418878614902496337, 0, 0, 0.207911491394042968, 0.978147625923156738,600,600),
(@GGUID+154,0,530,1, 426.3721923828125, 7143.61328125, 23.25715065002441406, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402,600,600),
(@GGUID+155,0,530,1, 916.9766845703125, 8606.6943359375, 22.55191802978515625, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046,600,600),
(@GGUID+156,0,530,1, -892.0301513671875, 5322.57177734375, 18.62080764770507812, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904,600,600),
(@GGUID+157,0,530,1, 1181.1229248046875, 7994.10595703125, 23.91700363159179687, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016,600,600),
(@GGUID+158,0,530,1, -274.251953125, 7682.10400390625, 21.25467872619628906, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+159,0,530,1, 349.258026123046875, 7530.48291015625, 22.68307113647460937, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+160,0,530,1, 694.6287841796875, 5437.24365234375, -23.9399089813232421, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294,600,600),
(@GGUID+161,0,530,1, -745.01641845703125, 5300.75, 18.92231369018554687, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958,600,600),
(@GGUID+162,0,530,1, 1188.048828125, 8168.6865234375, 18.87990188598632812, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005,600,600),
(@GGUID+163,0,530,1, 220.08160400390625, 7667.3427734375, 23.16407585144042968, 5.131268978118896484, 0, 0, -0.54463863372802734, 0.838670849800109863,600,600),
(@GGUID+164,0,530,1, -608.04815673828125, 5877.86572265625, 22.58329200744628906, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+165,0,530,1, -847.80902099609375, 5789.8193359375, 19.54710006713867187, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125,600,600),
(@GGUID+166,0,530,1, 308.7110595703125, 5340.7666015625, 22.83681869506835937, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111,600,600),
(@GGUID+167,0,530,1, -147.498916625976562, 5645.6484375, 22.44782447814941406, -0.50614529848098754, 0, 0, 0.250379920005798339, -0.9681476354598999,600,600),
(@GGUID+168,0,530,1, 1140.832275390625, 8699.9521484375, 18.71532821655273437, -2.49582076072692871, 0, 0, 0.948323667049407958, -0.31730467081069946,600,600),
(@GGUID+169,0,530,1, 1105.2969970703125, 8152.35595703125, 22.71778488159179687, 0.890117883682250976, 0, 0, 0.430511087179183959, 0.902585268020629882,600,600),
(@GGUID+170,0,530,1, 562.513671875, 5624.369140625, 19.18165969848632812, 1.640609502792358398, 0, 0, 0.731353700160980224, 0.681998372077941894,600,600),
(@GGUID+171,0,530,1, 159.64453125, 8943.435546875, 22.61122894287109375, 0.959931075572967529, 0, 0, 0.461748600006103515, 0.887010812759399414,600,600),
(@GGUID+172,0,530,1, 512.4078369140625, 5850.84814453125, 23.83779335021972656, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+173,0,530,1, 535.222900390625, 8781.5732421875, 26.28573799133300781, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818,600,600);
-- placeholder for tools
DELETE FROM gameobject_spawn_entry WHERE guid BETWEEN 181300 AND 181599;
INSERT INTO gameobject_spawn_entry SELECT guid, 183043 FROM gameobject WHERE guid BETWEEN 181300 AND 181599 AND id = 0;
INSERT INTO gameobject_spawn_entry SELECT guid, 181276 FROM gameobject WHERE guid BETWEEN 181300 AND 181599 AND id = 0;

-- netherdust bush
SET @GGUID := 181600;
DELETE FROM gameobject WHERE guid BETWEEN 181600 AND 181700 AND id = 185881;
DELETE FROM gameobject WHERE id IN(185881) AND guid IN(161234,161232,161228,161223,161224,161225,161233,161231,161226,161230,161227,161229,161220,161222,161216,161151);
DELETE FROM gameobject WHERE id IN(185881) AND guid IN(161211,161199,161191,161188,161215,161213,161214,161212,161205,161208,161192,161206,161167,161159,161165,161164);
DELETE FROM gameobject WHERE id IN(185881) AND guid IN(161189,161201,161160,161157,161169,161180,161203,161193,161186,161187,161202,161209,161210,161204,161198,161163);
DELETE FROM gameobject WHERE id IN(185881) AND guid IN(161197,161162,161172,161170,161166,161152,161158,161190,161194,161175,161161,161196,161153,161178,161182);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,185881,530,1, -4851.99755859375, 463.61907958984375, 63.23642349243164062, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592,600,600),
(@GGUID+1,185881,530,1, -5202.49462890625, 821.38641357421875, 183.0635986328125, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+2,185881,530,1, -4116.71435546875, 542.750244140625, 17.72955322265625, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+3,185881,530,1, -4857.40087890625, 671.77264404296875, 58.24003219604492187, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+4,185881,530,1, -4573.439453125, 763.75555419921875, -10.0483379364013671, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+5,185881,530,1, -4203.96728515625, 450.17041015625, 30.84949684143066406, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599,600,600),
(@GGUID+6,185881,530,1, -4113.52880859375, 473.451934814453125, 33.44075775146484375, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+7,185881,530,1, -4311.177734375, 314.590728759765625, 120.1459732055664062, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582,600,600),
(@GGUID+8,185881,530,1, -5238.6015625, 754.770751953125, 45.42988204956054687, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876,600,600),
(@GGUID+9,185881,530,1, -5187.1162109375, 475.829010009765625, 75.80034637451171875, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+10,185881,530,1, -5276.265625, 458.092926025390625, 50.89467239379882812, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798,600,600),
(@GGUID+11,185881,530,1, -5205.73291015625, 262.022125244140625, 71.0351715087890625, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458,600,600),
(@GGUID+12,185881,530,1, -5324.8212890625, 241.4283294677734375, 56.99432373046875, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+13,185881,530,1, -5192.015625, 85.939453125, 69.80515289306640625, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595,600,600),
(@GGUID+14,185881,530,1, -5236.0302734375, 75.3729400634765625, 63.29697036743164062, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646,600,600),
(@GGUID+15,185881,530,1, -5220.052734375, 0.62651902437210083, 64.574127197265625, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347,600,600),
(@GGUID+16,185881,530,1, -5051.28076171875, -112.554153442382812, 58.97784423828125, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189,600,600),
(@GGUID+17,185881,530,1, -4926.37890625, 73.63607025146484375, 53.64414596557617187, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+18,185881,530,1, -5004.53564453125, 182.9545440673828125, 80.41098785400390625, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+19,185881,530,1, -4886.32421875, 230.4711456298828125, 52.02944564819335937, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437,600,600),
(@GGUID+20,185881,530,1, -4959.69482421875, 391.50823974609375, 84.94535064697265625, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852,600,600),
(@GGUID+21,185881,530,1, -4812.4931640625, 956.70245361328125, -17.9027538299560546, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087,600,600),
(@GGUID+22,185881,530,1, -4193.7724609375, 571.4083251953125, 18.63208961486816406, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938,600,600),
(@GGUID+23,185881,530,1, -4094.724853515625, 373.79986572265625, 31.46593856811523437, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782,600,600),
(@GGUID+24,185881,530,1, -4162.68896484375, 505.787261962890625, 28.90876007080078125, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468,600,600),
(@GGUID+25,185881,530,1, -4143.86767578125, 458.850433349609375, 32.47900009155273437, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675,600,600),
(@GGUID+26,185881,530,1, -4541.06298828125, 859.3980712890625, 9.72763824462890625, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507,600,600),
(@GGUID+27,185881,530,1, -4988.35107421875, 830.27667236328125, 37.53570556640625, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291,600,600),
(@GGUID+28,185881,530,1, -4969.24853515625, 702.75885009765625, 83.78559112548828125, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+31,185881,530,1, -5194.681640625, 413.59625244140625, 74.15201568603515625, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126,600,600),
(@GGUID+33,185881,530,1, -5345.39306640625, 199.0937042236328125, 49.41950607299804687, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+37,185881,530,1, -5014.6630859375, -70.1500625610351562, 67.29021453857421875, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939,600,600),
(@GGUID+38,185881,530,1, -4993.88916015625, -22.0151920318603515, 73.1766204833984375, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818,600,600),
(@GGUID+39,185881,530,1, -4994.18701171875, 280.431060791015625, 81.9186553955078125, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689,600,600),
(@GGUID+40,185881,530,1, -4844.70556640625, 371.952484130859375, 60.53513717651367187, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687,600,600),
(@GGUID+41,185881,530,1, -4919.72216796875, 556.621826171875, 62.78862380981445312, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701,600,600),
(@GGUID+42,185881,530,1, -4943.5390625, 601.09307861328125, 72.141326904296875, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738,600,600),
(@GGUID+43,185881,530,1, -4888.3720703125, 651.05792236328125, 72.20395660400390625, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058,600,600),
(@GGUID+44,185881,530,1, -5052.96728515625, 515.1055908203125, 87.2382049560546875, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708,600,600),
(@GGUID+45,185881,530,1, -5063.72119140625, 504.746490478515625, 86.18498992919921875, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402,600,600),
(@GGUID+46,185881,530,1, -5089.34912109375, 160.3394622802734375, 129.4507598876953125, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718,600,600),
(@GGUID+47,185881,530,1, -5122.017578125, 122.324981689453125, 129.7713470458984375, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+49,185881,530,1, -5109.26123046875, 783.39874267578125, 58.13174057006835937, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208,600,600),
(@GGUID+51,185881,530,1, -5220.56494140625, 594.22833251953125, 58.34738540649414062, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279,600,600),
(@GGUID+52,185881,530,1, -5010.5205078125, 485.865142822265625, 86.70801544189453125, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222,600,600),
(@GGUID+53,185881,530,1, -4852.85546875, 558.63818359375, 48.487762451171875, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.3907318115234375,600,600),
(@GGUID+54,185881,530,1, -4844.9833984375, 494.16644287109375, 53.26870346069335937, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222,600,600),
(@GGUID+55,185881,530,1, -4875.40087890625, 137.228515625, 36.38839340209960937, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218,600,600),
(@GGUID+56,185881,530,1, -4999.1298828125, 102.7516326904296875, 75.3493804931640625, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169,600,600),
(@GGUID+57,185881,530,1, -5214.52197265625, -60.9997825622558593, 66.14867401123046875, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486,600,600),
(@GGUID+58,185881,530,1, -5041.5390625, 213.1253204345703125, 108.6797866821289062, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214,600,600),
(@GGUID+60,185881,530,1, -5269.44873046875, 389.1856689453125, 58.4835357666015625, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+63,185881,530,1, -5048.052734375, 355.0020751953125, 170.6459808349609375, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785,600,600),
(@GGUID+64,185881,530,1, -4231.103515625, 428.018890380859375, 49.71143722534179687, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783,600,600),
(@GGUID+65,185881,530,1, -4194.28759765625, 270.925018310546875, 123.405059814453125, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449,600,600),
(@GGUID+66,185881,530,1, -4203.240234375, 510.76019287109375, 29.44289207458496093, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705,600,600),
(@GGUID+67,185881,530,1, -4254.85400390625, 261.137603759765625, 123.8849868774414062, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546,600,600),
(@GGUID+68,185881,530,1, -4912.9990234375, 770.45587158203125, 58.09408187866210937, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808,600,600),
(@GGUID+69,185881,530,1, -5026.3193359375, 816.8458251953125, 51.47611236572265625, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697,600,600),
(@GGUID+70,185881,530,1, -5258.23779296875, 551.350830078125, 46.82989501953125, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303,600,600),
(@GGUID+71,185881,530,1, -5305.65283203125, 294.40338134765625, 63.39734649658203125, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464,600,600),
(@GGUID+72,185881,530,1, -5208.728515625, 168.2562408447265625, 69.8622283935546875, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076,600,600),
(@GGUID+73,185881,530,1, -5149.0947265625, 45.70160675048828125, 77.93637847900390625, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125,600,600);

SET @GGUID := 189000; -- dreamfoil
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+0,176584,530,1, -88.6867446899414062, 1942.2000732421875, 79.39585113525390625, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+1,176584,530,1, 514.34210205078125, 8923.53125, 32.0155487060546875, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341,600,600),
(@GGUID+2,176584,530,1, -468.14300537109375, 2596.978271484375, 62.224609375, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214,600,600),
(@GGUID+3,176584,530,1, 645.31787109375, 5300.5205078125, -24.7513236999511718, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599,600,600),
(@GGUID+4,176584,530,1, -526.154296875, 6033.76611328125, 22.01381301879882812, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279,600,600),
(@GGUID+5,176584,530,1, 604.21160888671875, 7857.33349609375, 23.28782081604003906, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+6,176584,530,1, 520.9805908203125, 5230.4228515625, -2.09310388565063476, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538,600,600),
(@GGUID+7,176584,530,1, 556.81634521484375, 8395.6728515625, 19.70077896118164062, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183,600,600),
(@GGUID+8,176584,530,1, -790.79669189453125, 2438.93994140625, 27.42685890197753906, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775,600,600),
(@GGUID+9,176584,530,1, -910.11163330078125, 4013.977783203125, 85.81731414794921875, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575,600,600),
(@GGUID+10,176584,530,1, 265.64117431640625, 2338.331298828125, 60.75812530517578125, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775,600,600),
(@GGUID+11,176584,530,1, 642.2449951171875, 6298.81005859375, 23.33014678955078125, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111,600,600),
(@GGUID+12,176584,530,1, 205.1291046142578125, 3022.03173828125, -1.22250103950500488, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189,600,600),
(@GGUID+13,176584,530,1, 587.5938720703125, 8816.65625, 30.36701774597167968, 4.136432647705078125, 0, 0, -0.87881660461425781, 0.477159708738327026,600,600),
(@GGUID+14,176584,530,1, -141.05078125, 7444.9228515625, 23.32547569274902343, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291,600,600),
(@GGUID+15,176584,530,1, -1187.9588623046875, 2710.75146484375, -4.90954494476318359, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599,600,600),
(@GGUID+16,176584,530,1, -863.1649169921875, 4193.7138671875, 47.02358245849609375, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+17,176584,530,1, -1004.35211181640625, 2935.188232421875, 3.865912914276123046, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179,600,600),
(@GGUID+18,176584,530,1, 773.35968017578125, 6421.7412109375, 20.88097572326660156, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023,600,600),
(@GGUID+19,176584,530,1, -790.96734619140625, 1589.531982421875, 52.60558700561523437, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+20,176584,530,1, 808.3885498046875, 6823.0703125, 21.50845909118652343, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976,600,600),
(@GGUID+21,176584,530,1, 50.4051666259765625, 1785.7371826171875, 51.9472503662109375, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511,600,600),
(@GGUID+22,176584,530,1, -131.060867309570312, 6067.87939453125, 22.25275993347167968, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+23,176584,530,1, -482.71820068359375, 3242.909423828125, 0.353161990642547607, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166,600,600),
(@GGUID+24,176584,530,1, -61.9544258117675781, 2893.191162109375, 33.44207382202148437, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,600,600),
(@GGUID+25,176584,530,1, -613.32464599609375, 5494.2880859375, 22.12679290771484375, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111,600,600),
(@GGUID+26,176584,530,1, 684.28729248046875, 5429.1591796875, -26.8340282440185546, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347,600,600),
(@GGUID+27,176584,530,1, 745.13311767578125, 5127.669921875, 17.78945350646972656, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+28,176584,530,1, 979.89678955078125, 8745.181640625, -7.63069105148315429, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701,600,600),
(@GGUID+29,176584,530,1, -410.75, 3642.103271484375, 44.734466552734375, 1.972219824790954589, 0, 0, 0.83388519287109375, 0.55193793773651123,600,600),
(@GGUID+30,176584,530,1, 953.34014892578125, 5318.82861328125, 0.330455988645553588, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293,600,600),
(@GGUID+31,176584,530,1, -604.18133544921875, 2123.5810546875, 68.48722076416015625, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326,600,600),
(@GGUID+32,176584,530,1, -1371.8548583984375, 3117.061279296875, 24.05504798889160156, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511,600,600),
(@GGUID+33,176584,530,1, 76.08853912353515625, 4900.28564453125, 79.10791015625, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787,600,600),
(@GGUID+34,176584,530,1, -212.215606689453125, 3222.166259765625, -73.2709884643554687, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679,600,600),
(@GGUID+36,176584,530,1, -99.1356353759765625, 4858.77978515625, 52.03226470947265625, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808,600,600),
(@GGUID+37,176584,530,1, 563.64666748046875, 5294.67138671875, -24.6146163940429687, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+38,176584,530,1, -400.097442626953125, 2744.69970703125, 34.47450637817382812, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783,600,600),
(@GGUID+39,176584,530,1, 54.78938674926757812, 4128.9462890625, 65.0946502685546875, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267,600,600),
(@GGUID+40,176584,530,1, 1003.19927978515625, 5100.8271484375, -13.3307981491088867, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665,600,600),
(@GGUID+41,176584,530,1, 972.0372314453125, 5186.43798828125, -0.90764397382736206, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869,600,600),
(@GGUID+42,176584,530,1, 849.5302734375, 5194.3193359375, 15.49064159393310546, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492,600,600),
(@GGUID+43,176584,530,1, 755.3419189453125, 5309.283203125, -0.17850300669670104, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697,600,600),
(@GGUID+44,176584,530,1, 610.1976318359375, 8502.171875, 21.87285423278808593, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419,600,600),
(@GGUID+45,176584,530,1, 57.90993881225585937, 4642.18701171875, 56.43053817749023437, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432,600,600),
(@GGUID+46,176584,530,1, 108.9375, 4708.63818359375, 57.82965850830078125, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871,600,600),
(@GGUID+47,176584,530,1, 873.45611572265625, 7846.16650390625, 22.35315704345703125, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701,600,600),
(@GGUID+48,176584,530,1, 657.84844970703125, 5504.97509765625, -3.45766592025756835, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507,600,600),
(@GGUID+49,176584,530,1, -823.65234375, 4182.02587890625, 48.87609100341796875, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+50,176584,530,1, 877.8311767578125, 7162.359375, 22.72214698791503906, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863,600,600),
(@GGUID+51,176584,530,1, -833.88067626953125, 3633.475341796875, 27.85897064208984375, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+52,176584,530,1, 384.31005859375, 3011.606689453125, 19.6029052734375, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986,600,600),
(@GGUID+53,176584,530,1, -148.053817749023437, 4797.671875, 28.82899665832519531, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402,600,600),
(@GGUID+54,176584,530,1, -846.302978515625, 4089.76171875, 32.96721649169921875, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249,600,600),
(@GGUID+55,176584,530,1, -1090.65625, 3040.6337890625, 16.684844970703125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046,600,600),
(@GGUID+56,176584,530,1, 948.127197265625, 5525.61328125, -6.57213115692138671, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875,600,600),
(@GGUID+57,176584,530,1, -736.06195068359375, 2964.47412109375, 21.31219863891601562, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873,600,600),
(@GGUID+58,176584,530,1, -550.2265625, 4365.439453125, 51.8310089111328125, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+59,176584,530,1, 553.1905517578125, 6158.63525390625, 22.60194969177246093, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544,600,600),
(@GGUID+60,176584,530,1, -751.46527099609375, 2088.952392578125, 26.17545509338378906, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927,600,600),
(@GGUID+61,176584,530,1, -372.9132080078125, 4640.7412109375, 30.70080947875976562, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041,600,600),
(@GGUID+62,176584,530,1, -154.598526000976562, 8299.5205078125, 21.62738990783691406, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631,600,600),
(@GGUID+63,176584,530,1, -897.37872314453125, 5263.47119140625, 19.55460548400878906, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023,600,600),
(@GGUID+64,176584,530,1, -716.98968505859375, 1950.67236328125, 49.73421096801757812, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583,600,600),
(@GGUID+65,176584,530,1, 595.1094970703125, 5372.86962890625, -24.4247474670410156, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281,600,600),
(@GGUID+66,176584,530,1, 516.9364013671875, 5424.59765625, -0.73144900798797607, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791,600,600),
(@GGUID+67,176584,530,1, 415.450897216796875, 9030.2392578125, 14.14528369903564453, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+68,176584,530,1, -447.67913818359375, 3820.291748046875, 56.35771560668945312, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796,600,600),
(@GGUID+69,176584,530,1, -619.67169189453125, 3916.960205078125, 28.99511146545410156, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583,600,600),
(@GGUID+70,176584,530,1, 196.288787841796875, 3946.583740234375, 74.81256866455078125, 1.85004889965057373, 0, 0, 0.798635482788085937, 0.60181504487991333,600,600),
(@GGUID+71,176584,530,1, 501.720428466796875, 6283.54931640625, 24.15668296813964843, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255,600,600),
(@GGUID+72,176584,530,1, -24.7311744689941406, 4012.14501953125, 90.58296966552734375, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872,600,600),
(@GGUID+73,176584,530,1, -134.674591064453125, 8459.8095703125, 22.14128494262695312, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037,600,600),
(@GGUID+74,176584,530,1, 930.2911376953125, 5691.1630859375, 9.594944000244140625, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046,600,600),
(@GGUID+75,176584,530,1, 336.032928466796875, 2594.701904296875, 133.243011474609375, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279,600,600),
(@GGUID+76,176584,530,1, -282.987457275390625, 2335.01123046875, 52.63551712036132812, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492,600,600),
(@GGUID+77,176584,530,1, -114.649688720703125, 3297.32470703125, 17.528839111328125, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101,600,600),
(@GGUID+78,176584,530,1, -268.587677001953125, 7788.80322265625, 21.28656578063964843, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358,600,600),
(@GGUID+79,176584,530,1, -505.968414306640625, 2184.969482421875, 64.49291229248046875, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285,600,600),
(@GGUID+81,176584,530,1, -1099.8919677734375, 2378.74853515625, 22.91077041625976562, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914,600,600),
(@GGUID+82,176584,530,1, -616.5701904296875, 3484.78857421875, 66.53079986572265625, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525,600,600),
(@GGUID+83,176584,530,1, 364.603240966796875, 8138.8818359375, 23.16260528564453125, 3.94444584846496582, 0, 0, -0.92050457000732421, 0.3907318115234375,600,600),
(@GGUID+84,176584,530,1, -483.830963134765625, 2816.716064453125, 45.021148681640625, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224,600,600),
(@GGUID+85,176584,530,1, -538.765625, 3107.734375, 0.122882001101970672, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998,600,600),
(@GGUID+86,176584,530,1, 845.9140625, 7969.4765625, 23.19084358215332031, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179,600,600),
(@GGUID+87,176584,530,1, 7.280327796936035156, 3103.315185546875, -1.22251796722412109, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257,600,600),
(@GGUID+88,176584,530,1, 821.87640380859375, 5055.34326171875, 4.664165019989013671, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691,600,600),
(@GGUID+89,176584,530,1, -346.817718505859375, 4804.09716796875, 18.65175819396972656, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992,600,600),
(@GGUID+90,176584,530,1, -426.5284423828125, 4338.25537109375, 54.0926055908203125, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701,600,600),
(@GGUID+91,176584,530,1, -585.01141357421875, 3601.382080078125, 28.99511146545410156, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665,600,600),
(@GGUID+92,176584,530,1, 173.2103118896484375, 2476.490966796875, 59.638671875, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464,600,600),
(@GGUID+93,176584,530,1, -1118.83740234375, 3365.982666015625, 115.8483734130859375, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992,600,600),
(@GGUID+94,176584,530,1, -468.979156494140625, 4683.57568359375, 30.10512924194335937, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189,600,600),
(@GGUID+95,176584,530,1, -716.606689453125, 3689.330810546875, 28.20916748046875, 5.497788906097412109, 0, 0, -0.38268280029296875, 0.923879802227020263,600,600),
(@GGUID+97,176584,530,1, 350.19476318359375, 5154.32763671875, 18.54442214965820312, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803,600,600),
(@GGUID+98,176584,530,1, -1124.8192138671875, 2603.127197265625, 27.36055755615234375, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939,600,600),
(@GGUID+99,176584,530,1, -891.6680908203125, 2186.49560546875, 10.07806301116943359, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787,600,600),
(@GGUID+100,176584,530,1, 73.51790618896484375, 2273.734375, 71.753753662109375, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464,600,600),
(@GGUID+101,176584,530,1, -617.103759765625, 3310.178466796875, 18.67253875732421875, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782,600,600),
(@GGUID+102,176584,530,1, -964.2918701171875, 3165.235595703125, 30.276123046875, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611,600,600),
(@GGUID+103,176584,530,1, -146.110458374023437, 3708.09375, 57.39603042602539062, -1.60570323467254638, 0, 0, 0.719339907169342041, -0.69465827941894531,600,600),
(@GGUID+104,176584,530,1, -1059.323486328125, 2441.263427734375, 17.04703330993652343, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281,600,600);
