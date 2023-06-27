CREATE TABLE player {

};

CREATE TABLE playerInventory (

);

CREATE TABLE ItemType (

);

-- Acesss Information about complete inventory
SELECT ItemType.Name, PlayerInventory.Amount
From PlayerInventory
Join ItemType On PlayerInventory.ItemType = ItemType.Id
WHERE PlayerInventory.Playerid = ?