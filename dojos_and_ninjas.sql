-- INSERT INTO dojos (name)
-- VALUES ("Edwardsville"), ("St. Louis"), ("Riverport");

-- SET SQL_SAFE_UPdates = 0;
-- DELETE FROM dojos;

-- INSERT INTO ninjas (first_name, last_names, age, dojos_id)
-- VALUES ("Rindy", "Fisk", 40, 459268), ("Michael", "Fisk", 40,5864854), ("Prince", "Symbol", 59, 4449999);

-- SELECT * FROM dojos
-- LEFT JOIN ninjas ON dojos.id = ninjas.dojos_id
-- WHERE dojos.id = 4

-- Select * FROM dojos
-- LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
-- WHERE dojos.id = (SELECT dojos_id FROM ninjas ORDER BY dojos_id DESC LIMIT 1);

SELECT * FROM dojos
WHERE dojos.id = (SELECT dojos_id FROM ninjas ORDER BY dojos_id DESC LIMIT 1);