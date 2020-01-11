-- q.12152 'Jin'arrak's End'
-- event
DELETE FROM dbscripts_on_event WHERE id = 17801;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(17801,1,31,27199,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 27199: safety check - only one available'),
(17801,2,10,27199,55000,0,0,0,0x08,0,0,0,0,4678.617,-4859.459,35.56327,3.124139,'summon - Warlord Jin\'arrak');
-- Warlord Jin'arrak 27199
UPDATE creature_template SET Faction = 14, UnitFlags = 768, MovementType = 2 WHERE entry = 27199;
UPDATE creature_template_addon SET auras = '17327' WHERE entry = 27199; -- 31951 will be added later
DELETE FROM creature_movement_template WHERE entry = 27199;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(27199,0,1,4678.617,-4859.459,35.56327,60000,2719901,3.124139);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2719901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2719901,6,0,0,0,0,0,0,0,2000020137,0,0,0,0,0,0,0,'text'),
(2719901,9,15,48060,0,0,27201,100,1,0,0,0,0,0,0,0,0,'cast on buddy'),
(2719901,13,15,31951,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast'),
(2719901,16,1,34,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2719901,17,10,26811,30000,1,0,0,0x08,1,0,0,0,4750.463,-4855.128,26.2912,3.223225,'summon'),
(2719901,17,10,26811,30000,2,0,0,0x08,1,0,0,0,4745.12,-4860.948,26.47852,3.0143,'summon'),
(2719901,17,10,26811,30000,3,0,0,0x08,1,0,0,0,4744.829,-4857.377,26.21797,3.138813,'summon'),
(2719901,17,10,26811,30000,4,0,0,0x08,1,0,0,0,4747.837,-4855.803,26.29635,3.199038,'summon'),
(2719901,17,10,26811,30000,5,0,0,0x08,1,0,0,0,4749.208,-4858.506,26.11398,3.083149,'summon'),
(2719901,17,10,26811,30000,6,0,0,0x08,1,0,0,0,4743.229,-4859.637,26.3787,3.062698,'summon'),
(2719901,17,10,26812,30000,1,0,0,0x08,1,0,0,0,4742.136,-4853.964,26.52132,3.232042,'summon'),
(2719901,18,0,0,0,0,0,0,0,2000020138,0,0,0,0,0,0,0,'text'),
(2719901,19,10,26811,30000,7,0,0,0x08,1,0,0,0,4739.357,-4859.631,26.47296,3.046688,'summon'),
(2719901,19,10,26811,30000,8,0,0,0x08,1,0,0,0,4741.025,-4857.699,26.28104,3.126867,'summon'),
(2719901,19,10,26812,30000,2,0,0,0x08,1,0,0,0,4741.983,-4859.361,26.38358,3.067841,'summon'),
(2719901,19,10,26812,30000,3,0,0,0x08,1,0,0,0,4743.075,-4855.354,26.39851,3.248129,'summon'),
(2719901,19,10,26812,30000,4,0,0,0x08,1,0,0,0,4750.957,-4859.446,26.23071,3.108402,'summon'),
(2719901,22,15,31691,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast'), -- guesed spell (not idea what shrink him around 85%)
(2719901,23,10,26812,30000,5,0,0,0x08,1,0,0,0,4748.298,-4854.623,26.39423,3.316829,'summon'),
(2719901,23,10,26812,30000,6,0,0,0x08,1,0,0,0,4751.419,-4861.647,26.38838,3.026995,'summon'),
(2719901,23,10,26812,30000,7,0,0,0x08,1,0,0,0,4739.595,-4853.759,26.6206,3.276289,'summon'),
(2719901,23,10,26812,30000,8,0,0,0x08,1,0,0,0,4753.862,-4853.526,26.34044,3.273866,'summon'),
(2719901,23,10,26811,30000,9,0,0,0x08,1,0,0,0,4749.309,-4858.304,26.17426,3.15747,'summon'),
(2719901,24,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_DEAD '),
(2719901,25,10,26812,30000,9,0,0,0x08,1,0,0,0,4754.053,-4856.113,26.13182,3.204622,'summon'),
(2719901,25,10,26812,30000,10,0,0,0x08,1,0,0,0,4750.386,-4856.741,26.16952,3.1457,'summon'),
(2719901,25,10,26811,30000,10,0,0,0x08,1,0,0,0,4751.07,-4853.443,26.40733,3.293092,'summon');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020137 AND 2000020138;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020137,'Finally, a worthy offering!',0,3,0,15,NULL),
(2000020138,'Ahhh! What be happenin\' to me, mon?',0,3,0,93,NULL);
-- waypoints
UPDATE creature_template SET MovementType = 2 WHERE entry IN (26811,26812);
DELETE FROM creature_movement_template WHERE entry IN (26811,26812);
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- #26811
-- #1
(26811,1,1,4712.521,-4858.43,25.77984,0,0,100),
(26811,1,2,4682.856,-4857.614,35.43728,0,0,100),
(26811,1,3,4661.51,-4848.846,35.54771,0,0,100),
(26811,1,4,4641.675,-4856.579,35.54771,0,0,100),
(26811,1,5,4630.856,-4866.916,36.28885,0,0,100),
(26811,1,6,4605.864,-4864.979,48.06318,0,0,100),
(26811,1,7,4595.621,-4857.919,48.06318,0,0,100),
(26811,1,8,4574.813,-4852.978,48.0477,1000,1,100),
-- #2
(26811,2,1,4711.757,-4856.384,26.30902,0,0,100),
(26811,2,2,4680.371,-4860.821,35.56741,0,0,100),
(26811,2,3,4664.952,-4869.188,35.59196,0,0,100),
(26811,2,4,4644.811,-4872.949,35.59196,0,0,100),
(26811,2,5,4629.197,-4871.346,36.25233,0,0,100),
(26811,2,6,4609.477,-4866.741,47.2977,0,0,100),
(26811,2,7,4594.193,-4870.362,48.06318,0,0,100),
(26811,2,8,4568.784,-4881.074,48.0477,1000,1,100),
-- #3
(26811,3,1,4688.752,-4857.684,33.88513,0,0,100),
(26811,3,2,4664.836,-4866.031,35.54771,0,0,100),
(26811,3,3,4634.528,-4889.459,35.59196,0,0,100),
(26811,3,4,4622.633,-4913.358,41.54087,0,0,100),
(26811,3,5,4613.373,-4922.53,48.0477,1000,1,100),
-- #4
(26811,4,1,4680.433,-4857.982,35.5823,0,0,100),
(26811,4,2,4665.799,-4867.649,35.59196,0,0,100),
(26811,4,3,4652.991,-4875.363,35.59196,0,0,100),
(26811,4,4,4643.439,-4862.394,35.54771,0,0,100),
(26811,4,5,4646.15,-4861.827,35.54771,60000,2681101,100),
-- #5
(26811,5,1,4680.633,-4859.362,35.5032,0,0,100),
(26811,5,2,4670.27,-4867.483,35.568,0,0,100),
(26811,5,3,4658.89,-4897.094,35.80156,0,0,100),
(26811,5,4,4650.205,-4913.924,44.15141,0,0,100),
(26811,5,5,4641.025,-4930.5,47.97246,1000,1,100),
-- #6
(26811,6,1,4680.384,-4860.713,35.56741,0,0,100),
(26811,6,2,4666.711,-4854.667,35.56741,0,0,100),
(26811,6,3,4658.067,-4847.433,35.04771,0,0,100),
(26811,6,4,4647.418,-4850.985,35.54771,0,0,100),
(26811,6,5,4649.397,-4853.83,35.54771,60000,2681101,100),
-- #7
(26811,7,1,4689.979,-4858.347,33.59744,0,0,100),
(26811,7,2,4679.842,-4859,35.45999,0,0,100),
(26811,7,3,4666.267,-4868.17,35.59196,0,0,100),
(26811,7,4,4651.055,-4872.287,35.59196,0,0,100),
(26811,7,5,4651.556,-4869.067,35.59196,60000,2681101,100),
-- #8
(26811,8,1,4679.864,-4854.417,35.67117,0,0,100),
(26811,8,2,4666.063,-4850.905,35.54771,0,0,100),
(26811,8,3,4663.649,-4853.167,35.54771,60000,2681101,100),
-- #9
(26811,9,1,4711.757,-4856.384,26.30902,0,0,100),
(26811,9,2,4680.371,-4860.821,35.56741,0,0,100),
(26811,9,3,4664.952,-4869.188,35.59196,0,0,100),
(26811,9,4,4644.811,-4872.949,35.59196,0,0,100),
(26811,9,5,4629.197,-4871.346,36.25233,0,0,100),
(26811,9,6,4609.477,-4866.741,47.2977,0,0,100),
(26811,9,7,4594.193,-4870.362,48.06318,0,0,100),
(26811,9,8,4568.784,-4881.074,48.0477,1000,1,100),
-- #10
(26811,10,1,4712.521,-4858.43,25.77984,0,0,100),
(26811,10,2,4682.856,-4857.614,35.43728,0,0,100),
(26811,10,3,4661.51,-4848.846,35.54771,0,0,100),
(26811,10,4,4641.675,-4856.579,35.54771,0,0,100),
(26811,10,5,4630.856,-4866.916,36.28885,0,0,100),
(26811,10,6,4605.864,-4864.979,48.06318,0,0,100),
(26811,10,7,4595.621,-4857.919,48.06318,1000,1,100),
-- #26812
-- #1
(26812,1,1,4680.873,-4862.681,35.56741,0,0,100),
(26812,1,2,4672.292,-4864.99,35.56741,0,0,100),
(26812,1,3,4663.764,-4870.069,35.59196,0,0,100),
(26812,1,4,4662.609,-4868.48,35.59196,30000,2681101,100),
-- #2
(26812,2,1,4689.979,-4858.347,33.59744,0,0,100),
(26812,2,2,4679.842,-4859,35.45999,0,0,100),
(26812,2,3,4666.925,-4852.37,35.56741,0,0,100),
(26812,2,4,4661.99,-4850.199,35.51048,0,0,100),
(26812,2,5,4660.681,-4852.963,35.54771,30000,2681101,100),
-- #3
(26812,3,1,4712.521,-4858.43,25.77984,0,0,100),
(26812,3,2,4682.856,-4857.614,35.43728,0,0,100),
(26812,3,3,4661.51,-4848.846,35.54771,0,0,100),
(26812,3,4,4641.675,-4856.579,35.54771,0,0,100),
(26812,3,5,4630.856,-4866.916,36.28885,0,0,100),
(26812,3,6,4605.864,-4864.979,48.06318,0,0,100),
(26812,3,7,4595.621,-4857.919,48.06318,0,0,100),
(26812,3,8,4574.813,-4852.978,48.0477,1000,1,100),
-- #4
(26812,4,1,4711.757,-4856.384,26.30902,0,0,100),
(26812,4,2,4680.371,-4860.821,35.56741,0,0,100),
(26812,4,3,4664.952,-4869.188,35.59196,0,0,100),
(26812,4,4,4644.811,-4872.949,35.59196,0,0,100),
(26812,4,5,4629.197,-4871.346,36.25233,0,0,100),
(26812,4,6,4609.477,-4866.741,47.2977,0,0,100),
(26812,4,7,4594.193,-4870.362,48.06318,0,0,100),
(26812,4,8,4568.784,-4881.074,48.0477,1000,1,100),
-- #5
(26812,5,1,4709.57,-4857.599,27.11371,0,0,100),
(26812,5,2,4680.633,-4859.362,35.5032,0,0,100),
(26812,5,3,4670.27,-4867.483,35.568,0,0,100),
(26812,5,4,4658.89,-4897.094,35.80156,0,0,100),
(26812,5,5,4650.205,-4913.924,44.15141,0,0,100),
(26812,5,6,4641.025,-4930.5,47.97246,1000,1,100),
-- #6
(26812,6,1,4680.433,-4857.982,35.5823,0,0,100),
(26812,6,2,4664.836,-4866.031,35.54771,0,0,100),
(26812,6,3,4634.528,-4889.459,35.59196,0,0,100),
(26812,6,4,4622.633,-4913.358,41.54087,0,0,100),
(26812,6,5,4613.373,-4922.53,48.0477,1000,1,100),
-- #7
(26812,7,1,4679.864,-4854.417,35.67117,0,0,100),
(26812,7,2,4671.764,-4854.427,35.56741,0,0,100),
(26812,7,3,4664.201,-4848.233,35.54771,0,0,100),
(26812,7,4,4650.978,-4848.385,35.54771,0,0,100),
(26812,7,5,4652.063,-4850.942,35.54771,30000,2681101,100),
-- #8
(26812,8,1,4712.521,-4858.43,25.77984,0,0,100),
(26812,8,2,4682.856,-4857.614,35.43728,0,0,100),
(26812,8,3,4661.51,-4848.846,35.54771,0,0,100),
(26812,8,4,4641.675,-4856.579,35.54771,0,0,100),
(26812,8,5,4630.856,-4866.916,36.28885,0,0,100),
(26812,8,6,4605.864,-4864.979,48.06318,0,0,100),
(26812,8,7,4595.621,-4857.919,48.06318,0,0,100),
(26812,8,8,4574.813,-4852.978,48.0477,1000,1,100),
-- #9
(26812,9,1,4709.57,-4857.599,27.11371,0,0,100),
(26812,9,2,4680.633,-4859.362,35.5032,0,0,100),
(26812,9,3,4670.27,-4867.483,35.568,0,0,100),
(26812,9,4,4658.89,-4897.094,35.80156,0,0,100),
(26812,9,5,4650.205,-4913.924,44.15141,0,0,100),
(26812,9,6,4641.025,-4930.5,47.97246,1000,1,100),
-- #10
(26812,10,1,4680.433,-4857.982,35.5823,0,0,100),
(26812,10,2,4664.836,-4866.031,35.54771,0,0,100),
(26812,10,3,4634.528,-4889.459,35.59196,0,0,100),
(26812,10,4,4622.633,-4913.358,41.54087,0,0,100),
(26812,10,5,4613.373,-4922.53,48.0477,1000,1,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2681101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2681101,1,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2681101,3,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2681101,5,1,10,0,0,0,0,0,0,0,0,0,0,0,0,0,'');