-- Onslaught Rave Priest
-- waypoints fixed
DELETE FROM creature_movement WHERE id = 516715;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(516715,1,2855.41,-479.198,126.989,100,0,0),
(516715,2,2866.15,-490.437,126.989,100,0,0),
(516715,3,2855.62,-498.664,126.99,3.85239,10000,0),
(516715,4,2866.3,-490.636,126.99,100,0,0),
(516715,5,2855.78,-479.987,126.99,100,0,0),
(516715,6,2845.81,-469.852,126.99,100,0,0),
(516715,7,2841.02,-474.434,126.989,2.40855,15000,0),
(516715,8,2845.81,-469.852,126.99,100,0,0);
