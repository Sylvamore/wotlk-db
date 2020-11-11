-- Fordragon Hold - Dragonblight

-- Practice Dummy 25225
UPDATE creature SET phaseMask = 3, spawndist = 0, MovementType = 0 WHERE guid IN (508106,508107,508108);

-- Fordragon Footman 27518
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 518711;
UPDATE creature SET position_x = 4614.921875, position_y = 1448.644287, position_z = 180.993378, orientation = 6.183682, spawndist = 0, MovementType = 2 WHERE guid = 518712;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518709,518712,518713,518716,518723);
DELETE FROM creature_movement WHERE id IN (518709,518712,518713,518716,518723);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 518709
(518709,1,4530.12,1238.06,139.474,4.60767,100,11),
(518709,2,4530.12,1238.06,139.474,4.60767,100,3),
-- 518712
(518712,1,4620.12,1445.81,180.503,100,0,0),
(518712,2,4626.19,1441.3,178.208,100,0,0),
(518712,3,4633.95,1438.74,174.597,100,0,0),
(518712,4,4640.75,1436.3,172.015,100,0,0),
(518712,5,4644.11,1433.1,171.192,100,0,0),
(518712,6,4646.41,1426.88,170.73,100,0,0),
(518712,7,4646.62,1412.87,170.73,100,0,0),
(518712,8,4646.08,1403.31,170.829,100,0,0),
(518712,9,4645.81,1392.68,170.785,100,0,0),
(518712,10,4646.2,1383.71,171.487,100,0,0),
(518712,11,4648.97,1372.24,170.736,100,0,0),
(518712,12,4652.1,1363.44,173.173,100,0,0),
(518712,13,4652,1359.23,174.96,100,0,0),
(518712,14,4659.41,1354.82,176.326,100,60000,0),
(518712,15,4659.41,1354.82,176.326,100,100,1),
-- 518713
(518713,1,4673.31,1366.196,176.0337,0.1745329,20000,0),
(518713,2,4672.452,1385.056,174.5212,0.1745329,20000,0),
-- 518716
(518716,1,4673.42,1434.21,173.882,1.6713,20000,0),
(518716,2,4657.53,1433.8,173.936,1.53621,20000,0),
-- 518723
(518723,1,4529.63,1235.13,139.572,1.8326,100,11),
(518723,2,4529.63,1235.13,139.572,1.8326,100,3);

-- Fordragon Knight 27535
-- Part of Vehicle - removed
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27535)
 OR master_guid IN (SELECT guid FROM creature WHERE id = 27535);
DELETE FROM creature WHERE id = 27535;

-- Fordragon Battle Steed 27761
DELETE FROM vehicle_accessory WHERE vehicle_entry = 27761;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(27761,1,27535,'Fordragon Battle Steed');
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (519642,519643);
DELETE FROM creature_movement WHERE id IN (519642,519643);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 519642
(519642,1,4553.54,1351.56,174.822,100,0,0),
(519642,2,4545.83,1342.94,169.578,100,0,0),
(519642,3,4539.47,1330.36,163.282,100,0,0),
(519642,4,4534.48,1320.06,158.168,100,0,0),
(519642,5,4529.45,1309.76,153.218,100,0,0),
(519642,6,4523.71,1298.13,148.218,100,0,0),
(519642,7,4518.67,1287.85,143.575,100,0,0),
(519642,8,4513.08,1276.4,139.219,100,0,0),
(519642,9,4509.82,1268.01,137.472,100,0,0),
(519642,10,4513.27,1277.2,139.454,100,0,0),
(519642,11,4516.46,1287.11,143.08,100,0,0),
(519642,12,4521.27,1296.44,147.279,100,0,0),
(519642,13,4529.26,1310.85,153.56,100,0,0),
(519642,14,4534.22,1320.11,158.123,100,0,0),
(519642,15,4539.39,1330.47,163.307,100,0,0),
(519642,16,4545.85,1343.32,169.726,100,0,0),
(519642,17,4553.38,1351.75,174.855,100,0,0),
(519642,18,4560.09,1357.57,178.869,100,0,0),
(519642,19,4569.03,1365.98,184.411,100,0,0),
(519642,20,4569.82,1378.9,190.118,100,0,0),
(519642,21,4572.23,1385.99,192.595,100,0,0),
(519642,22,4570.04,1379.36,190.353,100,0,0),
(519642,23,4569.02,1366,184.416,100,0,0),
-- 519643
(519643,1,4647.75,1421.66,170.715,100,0,0),
(519643,2,4646.56,1432.47,170.755,100,0,0),
(519643,3,4642.41,1439.92,171.66,100,0,0),
(519643,4,4632.84,1441.31,175.074,100,0,0),
(519643,5,4621.98,1441.73,179.829,100,0,0),
(519643,6,4614.71,1435.53,181.369,100,0,0),
(519643,7,4607.38,1434.53,184.236,100,0,0),
(519643,8,4599.81,1434.97,188.351,100,0,0),
(519643,9,4589.74,1438.27,189.206,100,0,0),
(519643,10,4587.1,1451.43,189.23,100,0,0),
(519643,11,4586.31,1462.49,189.23,100,0,0),
(519643,12,4585.88,1473.81,193.669,100,0,0),
(519643,13,4589.24,1481.53,195.228,100,0,0),
(519643,14,4592.45,1485.04,195.963,100,0,0),
(519643,15,4599.72,1486.21,197.037,100,0,0),
(519643,16,4607.21,1492.57,199.238,100,0,0),
(519643,17,4620.36,1504.68,204.242,100,0,0),
(519643,18,4627.29,1513.9,205.984,100,0,0),
(519643,19,4628.9,1520.35,206.873,100,0,0),
(519643,20,4630.3,1535.79,208.977,100,0,0),
(519643,21,4632.53,1542.92,210.728,100,0,0),
(519643,22,4635.55,1549.48,212.927,100,0,0),
(519643,23,4641.73,1555.31,216.476,100,0,0),
(519643,24,4651.44,1559.61,221.658,100,0,0),
(519643,25,4657.95,1562.48,225.453,100,0,0),
(519643,26,4665.22,1567.59,230.358,100,0,0),
(519643,27,4675.77,1571.71,235.236,100,0,0),
(519643,28,4683.15,1572.81,238.87,100,0,0),
(519643,29,4688.89,1571.29,240.978,100,0,0),
(519643,30,4696.57,1561.64,244.452,100,0,0),
(519643,31,4700.86,1555.8,247.71,100,0,0),
(519643,32,4703.92,1549.39,251.558,100,0,0),
(519643,33,4705.77,1539.35,257.092,100,0,0),
(519643,34,4704.01,1531,259.802,100,0,0),
(519643,35,4702.61,1528.05,260.396,100,0,0),
(519643,36,4698.44,1525.04,260.762,100,0,0),
(519643,37,4698.93,1522.52,260.862,100,0,0),
(519643,38,4701.94,1523.83,260.843,100,0,0),
(519643,39,4703.77,1529.83,260.032,100,0,0),
(519643,40,4705.46,1539.27,257.085,100,0,0),
(519643,41,4703.73,1548.92,251.75,100,0,0),
(519643,42,4701.19,1554.92,248.187,100,0,0),
(519643,43,4696.45,1561.44,244.467,100,0,0),
(519643,44,4688.89,1571.23,240.978,100,0,0),
(519643,45,4683.64,1572.8,239.068,100,0,0),
(519643,46,4676.13,1571.73,235.413,100,0,0),
(519643,47,4665.89,1567.85,230.691,100,0,0),
(519643,48,4656.93,1561.92,224.815,100,0,0),
(519643,49,4642.41,1555.78,216.844,100,0,0),
(519643,50,4636.03,1549.98,213.176,100,0,0),
(519643,51,4632.84,1543.22,210.835,100,0,0),
(519643,52,4630.68,1536.55,209.16,100,0,0),
(519643,53,4630.46,1528.62,207.495,100,0,0),
(519643,54,4627.37,1513.57,205.984,100,0,0),
(519643,55,4620.07,1504.37,204.139,100,0,0),
(519643,56,4611.46,1494.66,200.589,100,0,0),
(519643,57,4600.04,1486.19,197.11,100,0,0),
(519643,58,4592.21,1484.48,195.847,100,0,0),
(519643,59,4586.81,1478.07,194.583,100,0,0),
(519643,60,4585.64,1473.55,193.565,100,0,0),
(519643,61,4586.39,1464.7,189.464,100,0,0),
(519643,62,4586.8,1459.22,189.232,100,0,0),
(519643,63,4587.48,1450.37,189.232,100,0,0),
(519643,64,4588.56,1442.49,189.226,100,0,0),
(519643,65,4589.67,1438.32,189.208,100,0,0),
(519643,66,4598.52,1435.33,188.573,100,0,0),
(519643,67,4607.2,1434.23,184.364,100,0,0),
(519643,68,4614.42,1435.46,181.423,100,0,0),
(519643,69,4622.02,1441.87,179.821,100,0,0),
(519643,70,4632.4,1441.38,175.286,100,0,0),
(519643,71,4641.99,1440.13,171.757,100,0,0),
(519643,72,4647.11,1432.69,170.754,100,0,0),
(519643,73,4647.82,1421.33,170.713,100,0,0),
(519643,74,4648.13,1409.41,170.732,100,0,0),
(519643,75,4649.48,1399.23,170.733,100,0,0),
(519643,76,4649.83,1387.67,170.733,100,0,0),
(519643,77,4651,1375,170.733,100,0,0),
(519643,78,4652.16,1367.6,171.247,100,0,0),
(519643,79,4654.08,1358.85,175.032,100,0,0),
(519643,80,4652.2,1366.8,171.465,100,0,0),
(519643,81,4650.8,1374.74,170.733,100,0,0),
(519643,82,4649.75,1388.22,170.733,100,0,0),
(519643,83,4649.31,1399.08,170.733,100,0,0),
(519643,84,4648.01,1409.04,170.732,100,0,0);

-- Fordragon Gryphon Rider 27521
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (518754,518755,518757,518758,518759);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518753,518756);
DELETE FROM creature_movement WHERE id IN (518753,518756);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 518753
(518753,1,4710.843,1526.163,260.3975,0.418879,5000,2752101),
-- 518756
(518756,1,4706.23,1517.497,261.0084,0.3316126,5000,2752101);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2752101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2752101,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly off'),
(2752101,10,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(2752101,100,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');
DELETE FROM dbscripts_on_relay WHERE id = 20443;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20443,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Fordragon Gryphon Rider EAI: fly on');

-- Fordragon Armored Gryphon 27671
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 27671;
DELETE FROM dbscripts_on_relay WHERE id = 20444;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20444,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Fordragon Armored Gryphon EAI: fly off');

-- Fordragon Marksman 27540
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518821);
DELETE FROM creature_movement WHERE id IN (518821);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 518821
(518821,1,4532.94,1518.88,232.012,100,0,0),
(518821,2,4527.65,1513.1,234.216,100,0,0),
(518821,3,4525.15,1508.88,235.594,100,0,0),
(518821,4,4522.12,1502.12,238.828,100,0,0),
(518821,5,4517.64,1497.52,242.339,100,0,0),
(518821,6,4511.87,1492.76,246.229,100,0,0),
(518821,7,4509.03,1486.03,249.661,100,0,0),
(518821,8,4507.7,1478.43,252.231,100,0,0),
(518821,9,4506.72,1468.21,252.571,100,0,0),
(518821,10,4505.61,1459.86,250.878,100,0,0),
(518821,11,4505.71,1455.58,250.007,100,20000,0),
(518821,12,4505.65,1459.55,250.792,100,0,0),
(518821,13,4506.8,1468.36,252.596,100,0,0),
(518821,14,4507.3,1474.54,252.69,100,0,0),
(518821,15,4507.82,1480.59,251.558,100,0,0),
(518821,16,4508.98,1485.84,249.734,100,0,0),
(518821,17,4511.44,1492.03,246.647,100,0,0),
(518821,18,4517.1,1497.1,242.549,100,0,0),
(518821,19,4521.88,1500.72,240.049,100,0,0),
(518821,20,4524.98,1508.41,235.739,100,0,0),
(518821,21,4529.06,1515.22,233.464,100,0,0),
(518821,22,4533.87,1519.82,231.604,100,0,0),
(518821,23,4539.36,1522.68,230.496,100,0,0),
(518821,24,4545.74,1518.58,231.206,100,20000,0),
(518821,25,4539.88,1522.65,230.524,100,0,0);

-- Fordragon Medic 27543
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 518836;
DELETE FROM creature_movement WHERE id = 518836;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(518836,1,4562.48,1424.8,189.232,100,10000,2754301),
(518836,2,4566.38,1424.78,189.232,100,10000,2754301),
(518836,3,4579.43,1424.81,189.232,100,10000,2754301),
(518836,4,4579.46,1428.66,189.232,100,0,0),
(518836,5,4575.02,1428.81,189.232,100,10000,2754301),
(518836,6,4566.75,1428.43,189.232,100,10000,2754301),
(518836,7,4574.29,1428.73,189.232,100,10000,2754301),
(518836,8,4579.19,1428.78,189.232,100,0,0),
(518836,9,4579.34,1424.19,189.232,100,10000,2754301);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2754301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2754301,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5');
DELETE FROM dbscripts_on_relay WHERE id = 20445;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20445,0,31,27517,7,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Fordragon Medic EAI: search for 27517'),
(20445,1,36,0,0,0,27517,10,1,0,0,0,0,0,0,0,0,'Part of Fordragon Medic EAI: face target'),
(20445,5,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Fordragon Medic EAI: KNEEL'),
(20445,8000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Fordragon Medic EAI: STAND');

-- Wounded Fordragon Soldier 27517
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (518695,518697,518693,518694,518696);

-- Fordragon Carpenter 27519
-- individual addons
DELETE FROM creature_addon WHERE guid IN (518744);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(518744,0,3,1,1,0,0,NULL);

-- Fordragon Peasant 27536
-- Fordragon Lumberjack 27537 
-- Fordragon Mason 27538
DELETE FROM creature_addon WHERE guid=518791;
DELETE FROM creature_movement WHERE id=518791;
DELETE FROM game_event_creature WHERE guid=518791;
DELETE FROM game_event_creature_data WHERE guid=518791;
DELETE FROM creature_battleground WHERE guid=518791;
DELETE FROM creature_linking WHERE guid=518791
 OR master_guid=518791;
DELETE FROM creature WHERE guid=518791;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518791,27537,571,1,1,0,0,4579.49,1495,197.609,2.73245,180,180,0,0,6761,0,0,0);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518791,518792,518793);
DELETE FROM creature_movement WHERE id IN (518791,518792,518793);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 518791
(518791,1,4575.36,1496.31,197.278,100,0,0),
(518791,2,4564.99,1496.39,197.458,100,5000,2753601),
(518791,3,4575.28,1496.34,197.277,100,0,0),
(518791,4,4578.97,1495.2,197.662,100,0,0),
(518791,5,4582.11,1494.62,197.338,100,0,0),
(518791,6,4583.317,1495.591,197.2318,100,5000,2753602),
(518791,7,4582.25,1494.6,197.313,100,0,0),
-- 518792
(518792,1,4594.64,1478.11,195.104,100,0,0),
(518792,2,4601.71,1483.68,197.429,100,0,0),
(518792,3,4609.68,1488.75,199.452,100,0,0),
(518792,4,4615.34,1492.88,201.326,100,0,0),
(518792,5,4622.74,1501.61,204.16,100,0,0),
(518792,6,4628.18,1509.2,205.785,100,0,0),
(518792,7,4631.34,1515.93,206.647,100,0,0),
(518792,8,4631.25,1526.56,207.384,100,0,0),
(518792,9,4631.25,1536.14,209.132,100,0,0),
(518792,10,4634.73,1542.75,211.062,100,0,0),
(518792,11,4638.1,1547.64,212.985,100,0,0),
(518792,12,4641.98,1551.53,215.204,100,0,0),
(518792,13,4648.36,1555.85,218.993,100,0,0),
(518792,14,4657.9,1559.33,224.475,100,0,0),
(518792,15,4664.4,1566.05,229.581,100,0,0),
(518792,16,4667.59,1567.26,231.301,100,0,0),
(518792,17,4680.2,1568.89,237.36,100,0,0),
(518792,18,4685.95,1567.97,240.295,100,0,0),
(518792,19,4692.41,1563.15,243.112,100,0,0),
(518792,20,4697.95,1556.08,246.752,100,0,0),
(518792,21,4702.48,1548.86,251.405,100,0,0),
(518792,22,4703.42,1544.76,254.024,100,0,0),
(518792,23,4703.62,1540.9,256.057,100,0,0),
(518792,24,4702.89,1537.74,257.59,100,0,0),
(518792,25,4701,1534.51,258.939,100,0,0),
(518792,26,4697.58,1529.37,260.491,100,0,0),
(518792,27,4692.36,1528.67,261.068,100,5000,2753604),
(518792,28,4696.37,1529.9,260.512,100,0,0),
(518792,29,4699.05,1534.15,259.166,100,0,0),
(518792,30,4700.9,1538.93,256.883,100,0,0),
(518792,31,4701.86,1545.74,253.204,100,0,0),
(518792,32,4699.07,1553.92,247.925,100,0,0),
(518792,33,4692.8,1562.93,243.23,100,0,0),
(518792,34,4683.12,1570.83,238.767,100,0,0),
(518792,35,4675.24,1569.92,234.822,100,0,0),
(518792,36,4670.29,1569.06,232.678,100,0,0),
(518792,37,4664.27,1565.95,229.49,100,0,0),
(518792,38,4657.82,1559.85,224.591,100,0,0),
(518792,39,4649.03,1556.33,219.478,100,0,0),
(518792,40,4642.07,1551.83,215.351,100,0,0),
(518792,41,4636.87,1546.02,212.337,100,0,0),
(518792,42,4631.47,1536.6,209.238,100,0,0),
(518792,43,4630.93,1525.87,207.292,100,0,0),
(518792,44,4630.72,1515.95,206.601,100,0,0),
(518792,45,4627.24,1509.08,205.652,100,0,0),
(518792,46,4620.21,1500.65,203.594,100,0,0),
(518792,47,4610.45,1491.25,199.853,100,0,0),
(518792,48,4598.74,1482.77,196.737,100,0,0),
(518792,49,4594.7,1478.4,195.193,100,0,0),
(518792,50,4594.67,1475.48,194.283,100,0,0),
(518792,51,4595.86,1473.54,194.43,100,5000,2753605),
(518792,52,4594.85,1475.25,194.227,100,0,0),
-- 518793
(518793,1,4500.39,1287.62,145.557,100,5000,2753601),
(518793,2,4510.76,1298.7,147.083,100,5000,2753603);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2753601 AND 2753605;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2753601,2000,23,27536,0,0,0,0,0,0,0,0,0,0,0,0,0,'morph 27536'), -- empty
(2753602,2000,23,27537,0,0,0,0,0,0,0,0,0,0,0,0,0,'morph 27537'), -- logs
(2753603,2000,23,27538,0,0,0,0,0,0,0,0,0,0,0,0,0,'morph 27538'), -- bag
(2753604,2000,23,27536,0,0,0,0,0,0,0,0,0,0,0,0,0,'morph 27536'), -- empty
(2753604,2010,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2753605,2000,23,27537,0,0,0,0,0,0,0,0,0,0,0,0,0,'morph 27537'), -- logs
(2753605,2010,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF');
