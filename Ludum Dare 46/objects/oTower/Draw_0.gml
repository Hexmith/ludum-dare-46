/// @description Displaying Tower's Info

// Drawing the turret's range.
if (!global.isOnShopMode) {
	// Drawing the range as long as the mouse is hovering the turret.
	var halfSpriteWidth = sprite_width / 2;
	var halfSpriteHeight = sprite_height / 2;

	if (mouse_x > (x - halfSpriteWidth) and mouse_x < (x + halfSpriteWidth) and
		mouse_y > (y - halfSpriteHeight) and mouse_y < (y + halfSpriteHeight)) {
		draw_set_color(c_white);
		draw_set_alpha(0.15);
	
		draw_circle(x, y, range, false);
	}
}

// Drawing the tower itself.
draw_set_alpha(1);

draw_self();

// Drawing the turret's level.
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x - 4, y - 10, level);
