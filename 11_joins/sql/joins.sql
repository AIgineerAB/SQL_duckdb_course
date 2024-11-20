SELECT * FROM main.plant_care;
SELECT * FROM main.plants;


-- LEFT JOIN
SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    main.plants p
LEFT JOIN 
    main.plant_care pc ON p.plant_id = pc.plant_id;

-- RIGHT JOIN
SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    main.plants p
RIGHT JOIN 
    main.plant_care pc ON p.plant_id = pc.plant_id;
   
-- INNER JOIN 
SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    main.plants p
INNER JOIN 
    main.plant_care pc ON p.plant_id = pc.plant_id;

   
SELECT * FROM main.plants p;   