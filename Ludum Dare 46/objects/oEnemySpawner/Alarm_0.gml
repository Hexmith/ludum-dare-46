/// @description Small Enemy Spawner

#region SMALL ENEMY SPAWN CONTROLLER

// Spawning one small enemy.
if (smallEnemiesRemaining > 0) {
	instance_create_layer(-(global.halfTileWidth * 4),
						  -(global.halfTileHeight * 4),
						  "SmallEnemiesLayer",
						  oSmallEnemy);
	
	// Reducing the amount of small enemies left to spawn this turn.
	smallEnemiesRemaining -= 1;
	
	if ((global.turn + 1) % 5 == 0) {
		if (global.canStartNextTurn) {
			global.canStartNextTurn = false;
		}
	}
}

#endregion

// Resetting the alarm.
alarm[0] = smallEnemiesSpawnTimer;
