1) Find all the robots from Star Wars.

  \d
  SELECT * FROM robots;
  SELECT * FROM robots WHERE source = 'Star Wars';

  name |  source   | personality | id
------+-----------+-------------+----
C3PO | Star Wars | anxious     |  4
R2D2 | Star Wars | loyal       |  8
(2 rows)

2) Find the robot with an "anxious" personality
SELECT * FROM robots WHERE personality = 'anxious';
name |  source   | personality | id
------+-----------+-------------+----
C3PO | Star Wars | anxious     |  4
(1 row)


3) Find all recipes that are nut free.

 SELECT name, id, nut_free FROM recipes WHERE nut_free = true;
                   name                    | id | nut_free
-------------------------------------------+----+----------
 Butternut Squash Bake                     |  3 | t
 Vegetarian Bibimbap                       |  4 | t
 French Veggie Loaf                        |  5 | t
 Quinoa and Black Beans                    |  6 | t
 Juicy Roasted Chicken                     |  7 | t
 Garlic Green Beans                        |  8 | t
 Stout Slow Cooker Corned Beef and Veggies |  9 | t
(7 rows)


4) Count the number of recipes that are gluten free but not vegetarian.

FROM recipes WHERE gluten_free = 'true' AND vegetarian = 'false';
 count
-------
     2
(1 row)

5) Find the animal with the most legs.

SELECT name, number_of_legs FROM animals ORDER BY number_of_legs desc LIMIT 2;
name   | number_of_legs
---------+----------------
octopus |              8
cat     |              4
(2 rows)


6) Find the board game that takes the least amount of time to play.

SELECT name, mins_to_play, id FROM board_games ORDER BY mins_to_play desc LIMIT 3;
     name      | mins_to_play | id
---------------+--------------+----
 Arkham Horror |          240 |  1
 Agricola      |          120 |  6
 Carcassonne   |           45 |  3
(3 rows)


7) Find the recipe that takes the most time to prepare.

SELECT minutes_required, name, id FROM recipes ORDER BY minutes_required desc LIMIT 2;
 minutes_required |                   name                    | id
------------------+-------------------------------------------+----
              390 | Stout Slow Cooker Corned Beef and Veggies |  9
              105 | French Veggie Loaf                        |  5
(2 rows)



8) Find all the robots whose name starts with the letter M.

SELECT * FROM robots WHERE name LIKE 'M%';
      name      |                source                |  personality  | id
----------------+--------------------------------------+---------------+----
 Marvin         | The Hitchhikers Guide to the Galaxy | pessimistic   |  3
 Mr. Butlertron | Clone High                           | compassionate |  5
(2 rows)

9) Count the number of board games that can be played by 8 people.

SELECT * FROM board_games WHERE max_players = 8;
     name      | max_players | min_players | category | mins_to_play | id
---------------+-------------+-------------+----------+--------------+----
 Arkham Horror |           8 |           1 | strategy |          240 |  1
(1 row)


10) Find all animals that are swimming and egg-laying.

SELECT * FROM animals WHERE swimming = 't' AND egg_laying = 't';
  name   | number_of_legs | flying | swimming | egg_laying | id
---------+----------------+--------+----------+------------+----
 octopus |              8 | f      | t        | t          |  3
 duck    |              2 | t      | t        | t          |  4
(2 rows)



11) Find all animals that are swimming and egg-laying but not flying.

SELECT * FROM animals WHERE swimming = 't' AND egg_laying = 't' AND flying = 'f';
  name   | number_of_legs | flying | swimming | egg_laying | id
---------+----------------+--------+----------+------------+----
 octopus |              8 | f      | t        | t          |  3
(1 row)

12) Find the board game that supports the largest number of people.

SELECT * FROM board_games ORDER BY max_players desc LIMIT 2;
          name          | max_players | min_players | category | mins_to_play | id
------------------------+-------------+-------------+----------+--------------+----
 Cards Against Humanity |          30 |           5 | party    |           30 |  8
 Game of Things         |          15 |           2 | party    |           45 |  9
(2 rows)
