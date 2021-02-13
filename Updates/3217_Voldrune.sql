-- Voldrune - Grizzly Hills

-- Generic Relays added
DELETE FROM dbscripts_on_relay WHERE id IN (30015,30035,30037,30038,30388);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30015,0,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 15'),
(30035,0,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 35'),
(30037,0,1,37,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 37'),
(30038,0,1,38,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 38'),
(30388,0,1,388,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 388');

-- Dragonflayer Huscarl 27260
-- missing added
DELETE FROM creature_addon WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM creature_movement WHERE id IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM game_event_creature WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM game_event_creature_data WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM creature_battleground WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM creature_linking WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654)
 OR master_guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
DELETE FROM creature WHERE guid IN (519605,519606,519613,519648,519649,519650,519651,519652,519653,519654);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(519605,27260,571,1,1,0,0,2752.445,-2418.29,39.60694,1.448,300,300,0,0,0,0,0,0),
(519606,27260,571,1,1,0,0,2726.314,-2469.711,28.18377,4.031711,300,300,0,0,0,0,0,0),
(519613,27260,571,1,1,0,0,2742.546,-2481.447,27.14019,4.13643,300,300,0,0,0,0,0,0),
(519648,27260,571,1,1,0,0,2806.79,-2447.478,47.69936,3.909538,300,300,0,0,0,0,0,0),
(519649,27260,571,1,1,0,0,2966.916,-2678.053,94.46516,2.635447,300,300,0,0,0,0,0,0),
(519650,27260,571,1,1,0,0,2926.61,-2648,85.1729,5.69762,300,300,0,0,0,0,0,0),
(519651,27260,571,1,1,0,0,2962.835,-2634.55,96.50277,3.246312,300,300,0,0,0,0,0,0),
(519652,27260,571,1,1,0,0,2965.573,-2609.594,96.09564,3.106686,300,300,0,0,0,0,0,0),
(519653,27260,571,1,1,0,0,2852.4,-2489.62,54.8559,2.93651,300,300,0,0,0,0,0,0),
(519654,27260,571,1,1,0,0,2846.86,-2454.24,47.6162,5.49968,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (517251,517256,517259,517260,517262,519605,519606,519613,519648,519649,519651,519652,519654);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(517251,0,1,1,0,0,0,NULL),
(517256,0,1,1,0,0,0,NULL),
(517259,0,0,1,0,375,0,NULL),
(517260,0,1,1,0,0,0,NULL),
(517262,0,0,1,0,426,0,NULL),
(519605,0,0,1,0,426,0,NULL),
(519606,0,0,1,0,375,0,NULL),
(519613,0,0,1,0,375,0,NULL),
(519648,0,0,1,0,375,0,NULL),
(519649,0,0,1,0,426,0,NULL),
(519651,0,0,1,0,375,0,NULL),
(519652,0,0,1,0,375,0,NULL),
(519654,0,0,1,0,375,0,NULL);
-- Updates
UPDATE creature SET position_x = 2957.656, position_y = -2681.768, position_z = 94.46522, orientation = 0.98, spawndist = 0, MovementType = 0 WHERE guid = 517262;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517243,517244,517246,517263,519650,519653);
DELETE FROM creature_movement WHERE id IN (517243,517244,517246,517263,519650,519653);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517243
(517243,1,3006.23,-2607.25,101.099,100,0,0),
(517243,2,3007.07,-2598.91,102.911,100,0,0),
(517243,3,3006.28,-2606.47,101.461,100,0,0),
(517243,4,3005.61,-2611.19,97.911,100,0,0),
(517243,5,3002.15,-2628.95,97.8517,100,0,0),
(517243,6,3005.71,-2611.25,97.8601,100,0,0),
-- 517244
(517244,1,2846.759,-2630.591,84.73853,4.26,1000,11),
(517244,2,2846.759,-2630.591,84.73853,4.26,2000,3),
-- 517246
(517246,1,2809.15,-2724.7,85.6628,100,0,0),
(517246,2,2829.02,-2717.94,85.4589,100,0,0),
(517246,3,2838.38,-2713.08,84.7226,100,0,0),
(517246,4,2852.97,-2702.07,84.8651,100,0,0),
(517246,5,2870.17,-2686.65,84.7286,100,0,0),
(517246,6,2883.97,-2672.75,84.6707,100,0,0),
(517246,7,2898.65,-2652.64,84.6641,100,0,0),
(517246,8,2884.13,-2672.39,84.6726,100,0,0),
(517246,9,2869.69,-2686.93,84.7326,100,0,0),
(517246,10,2853.08,-2701.74,84.8623,100,0,0),
(517246,11,2838.94,-2712.72,84.7127,100,0,0),
(517246,12,2829.34,-2717.9,85.4542,100,0,0),
-- 517263
(517263,1,2914.29,-2527.84,78.2614,100,0,0),
(517263,2,2917.93,-2541.13,81.2494,100,0,0),
(517263,3,2919.99,-2555.65,84.3355,100,0,0),
(517263,4,2920.5,-2574.03,84.654,100,0,0),
(517263,5,2919.79,-2584.78,84.9915,100,0,0),
(517263,6,2915.32,-2602.38,84.7149,100,0,0),
(517263,7,2918.28,-2591.77,84.9911,100,0,0),
(517263,8,2920.55,-2578.26,84.8455,100,0,0),
(517263,9,2920.43,-2563.04,84.6562,100,0,0),
(517263,10,2918.9,-2545.62,82.4385,100,0,0),
-- 519650
(519650,1,2934.74,-2653.9,87.269,100,0,0),
(519650,2,2937.88,-2660.5,90.4033,100,0,0),
(519650,3,2937.52,-2667.76,92.5724,100,0,0),
(519650,4,2935.96,-2674.85,93.9745,100,0,0),
(519650,5,2937.34,-2668.42,92.7268,100,0,0),
(519650,6,2937.85,-2660.88,90.5423,100,0,0),
(519650,7,2935.2,-2654.8,87.7507,100,0,0),
(519650,8,2926.99,-2648.19,85.2513,100,0,0),
(519650,9,2918.4,-2643.09,84.8818,100,0,0),
(519650,10,2926.7,-2647.94,85.1646,100,0,0),
-- 519653
(519653,1,2838.63,-2488.47,50.7344,100,0,0),
(519653,2,2825.91,-2489.11,48.3127,100,0,0),
(519653,3,2811.66,-2489.68,47.6237,100,0,0),
(519653,4,2803.28,-2487.48,47.7769,100,0,0),
(519653,5,2796.01,-2483.03,47.7752,100,0,0),
(519653,6,2802.33,-2487.18,47.765,100,0,0),
(519653,7,2811.6,-2489.81,47.6219,100,0,0),
(519653,8,2825.49,-2489.05,48.2575,100,0,0),
(519653,9,2838.62,-2488.42,50.7323,100,0,0),
(519653,10,2852.34,-2489.69,54.8478,100,0,0),
(519653,11,2867.42,-2492.75,60.1478,100,0,0),
(519653,12,2880.31,-2498.21,65.0221,100,0,0),
(519653,13,2893.81,-2506.41,70.6216,100,0,0),
(519653,14,2902.87,-2513.21,73.9873,100,0,0),
(519653,15,2910.73,-2521.74,76.9949,100,0,0),
(519653,16,2913.98,-2527.19,78.1391,100,0,0),
(519653,17,2909.99,-2519.33,76.373,100,0,0),
(519653,18,2899.8,-2510.37,72.7624,100,0,0),
(519653,19,2894.08,-2506.32,70.6771,100,0,0),
(519653,20,2879.75,-2498.13,65.0462,100,0,0),
(519653,21,2867.73,-2492.77,60.2641,100,0,0),
(519653,22,2852.74,-2489.69,54.9677,100,0,0);
DELETE FROM dbscript_random_templates WHERE id = 20221;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20221,1,30015,0,'27260 - Random Script 1'),
(20221,1,30035,0,'27260 - Random Script 2'),
(20221,1,30037,0,'27260 - Random Script 3'),
(20221,1,30038,0,'27260 - Random Script 4'),
(20221,1,30388,0,'27260 - Random Script 5');

-- Dragonflayer Flamebinder 27259
-- missing added
DELETE FROM creature_addon WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM creature_movement WHERE id IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM game_event_creature WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM game_event_creature_data WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM creature_battleground WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM creature_linking WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245)
 OR master_guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
DELETE FROM creature WHERE guid IN (519655,519656,519657,519658,519659,519808,524147,524245);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(519655,27259,571,1,1,0,0,2817.62,-2765.14,85.9285,5.12293,300,300,0,0,0,0,0,0),
(519656,27259,571,1,1,0,0,2885.919,-2643.758,84.73854,1.518436,300,300,0,0,0,0,0,0),
(519657,27259,571,1,1,0,0,2860.76,-2541.45,84.6046,4.58,300,300,7,0,0,0,0,1),
(519658,27259,571,1,1,0,0,2837.47,-2755.96,86.7382,2.45656,300,300,0,0,0,0,0,0),
(519659,27259,571,1,1,0,0,2773.11,-2428.52,39.5333,5.49263,300,300,7,0,0,0,0,1),
(519808,27259,571,1,1,0,0,2828.16,-2511.26,47.8492,0.174689,300,300,7,0,0,0,0,1),
(524147,27259,571,1,1,0,0,2922.626,-2495.738,72.58582,1.151917,300,300,0,0,0,0,0,0),
(524245,27259,571,1,1,0,0,2855.21,-2752.858,84.76253,3.385939,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (524147,524245);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(524147,0,0,1,0,69,0,NULL),
(524245,0,0,1,0,69,0,NULL);
-- Updates
UPDATE creature SET position_x = 2727.257568, position_y = -2806.972412, position_z = 77.571655, spawndist = 7, MovementType = 1 WHERE guid = 517232;
UPDATE creature SET position_x = 2791.525391, position_y = -2751.670410, position_z = 90.426125, spawndist = 7, MovementType = 1 WHERE guid = 517238;
UPDATE creature SET position_x = 2872.543701, position_y = -2753.619873, position_z = 85.684166, spawndist = 7, MovementType = 1 WHERE guid = 517239;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517220,517228,517231,517234,517236,519656);
DELETE FROM creature_movement WHERE id IN (517220,517228,517231,517234,517236,519656);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517220
(517220,1,2892.953,-2604.541,84.73854,4.468043,1000,11),
(517220,2,2892.953,-2604.541,84.73854,4.468043,2000,3),
-- 517228
(517228,1,2872.087,-2630.973,84.73854,0.1919862,1000,11),
(517228,2,2872.087,-2630.973,84.73854,0.1919862,2000,3),
-- 517231
(517231,1,2908.05,-2616.853,84.73854,3.455752,1000,11),
(517231,2,2908.05,-2616.853,84.73854,3.455752,2000,3),
-- 517234
(517234,1,2905.052,-2636.845,84.73854,2.635447,1000,11),
(517234,2,2905.052,-2636.845,84.73854,2.635447,2000,3),
-- 517236
(517236,1,2874.59,-2611.92,84.7385,5.84685,1000,11),
(517236,2,2874.59,-2611.92,84.7385,5.84685,2000,3),
-- 519656
(519656,1,2885.919,-2643.758,84.73854,1.518436,1000,11),
(519656,2,2885.919,-2643.758,84.73854,1.518436,2000,3);

-- Thane Torvald Eriksson 27377
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 518078;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27377);
DELETE FROM creature_template_addon WHERE entry = 27377;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27377,0,0,2,0,0,0,NULL);
