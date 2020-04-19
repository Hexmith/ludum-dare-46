/// @description Variable Initialization

/* GLOBAL VARIABLES */

// Utility variables.
global.halfTileWidth  = 32;            // The half size of the game's tile width.
global.halfTileHeight = 32;            // The half size of the game's tile height.

// Player's variables.
global.playerHp                =   10; // The player's hit points. When it reaches 0, it's game over.
global.playerCornsOwned        =  100; // The amount of corns that the player owns.
global.playerSellRefundPercent = 0.25; // The percentage of the tower's value the player receives back after selling it.


/* CONTROLLER VARIABLES */

buildingMode = false;                  // The variable that activates the turret building mode.
towerToBuild = noone;                  // The tower to build when using "building mode".


/* DS_MAP DATABASES */

#region TOWERS' INFO

// 0) Basic Tower
towers[0] = ds_map_create();

ds_map_add(towers[0], "Price",         50);
ds_map_add(towers[0], "Damage",         1);
ds_map_add(towers[0], "Attack Speed",   2);
ds_map_add(towers[0], "Bullet Speed",   8);
ds_map_add(towers[0], "Range",        128);

#endregion

#region ENEMIES' INFO

// 0) Small Enemy
enemies[0] = ds_map_create();

ds_map_add(enemies[0], "Hit Points",   4);
ds_map_add(enemies[0], "Damage",       1);
ds_map_add(enemies[0], "Move Speed", 1.5);
ds_map_add(enemies[0], "Corn Value",  25);

// 0) Big Enemy
enemies[1] = ds_map_create();

ds_map_add(enemies[1], "Hit Points",   8);
ds_map_add(enemies[1], "Damage",       2);
ds_map_add(enemies[1], "Move Speed",   1);
ds_map_add(enemies[1], "Corn Value",  50);

#endregion


/* SETTING THE CURSOR'S SPRITE */

cursor_sprite = sMouseCursor; // Changing the game's cursor to my own.
window_set_cursor(cr_none);   // Removing the OS' default cursor.