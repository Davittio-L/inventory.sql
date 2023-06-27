--ITEMS TABLE FOR ITEMS
CREATE TABLE items (
    item_id INT PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(255),
);

--INVENTORY TABLE REPRESENTING PLAYERS INVENTORY
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    player_id INT, --Foreign key to reference the player
    item_id INT, --Foreign key to reference the item
    quantity INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

--PLAYERS TABLE TO STORE PLAYER INFORMATION
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    name CARCHAR(50),

);

--item insertion
INSERT INTO items (item_id, name, description)
VALUES (1, 'Short Sword', 'A short sword crafted by the likes of men. Not amazing, but gets the job done.')

INSERT INTO items (item_id, name, description)
VALUES (2, 'Battle Axe', 'An axe crafted by the orcs. Filled with furry and hate. A weapon well feared.')

INSERT INTO items (item_id, name, description)
VALUES (3, 'Orcish Chest Plate', 'Unrefined plate armor made from the average orc blacksmith.')

INSERT INTO items (item_id, name, description)
VALUES (4, 'Improved Plate Guard', 'Improved Armor made from improved orcalimite ingots.')


--item to player to inventory insertion
INSERT INTO inventory (inventory_id, player_id, item_id, quantity)
VALUES (1, 1, 1, 1) -- Adding Sword to players inventory w/ qty of 1

INSERT INTO inventory (inventory_id, player_id, item_id, quantity)
VALUES (1, 1, 2, 1)

INSERT INTO inventory (inventory_id, player_id, item_id, quantity)
VALUES (1, 1, 3, 1)

INSERT INTO inventory (inventory_id, player_id, item_id, quantity)
VALUES (1, 1, 4, 1)