o = c_orange;
g = c_green;
r = c_red;
yellow = c_yellow;

draw_set_font(fnt_text);

switch room{
	case rm_title_screen:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 200, "Journey To Help", 4, 4, 0, o, o, o,o, 1);
		draw_text(room_width/2, 350, "Press enter to play");
		break;
	case rm_tutorial:
		draw_set_halign(fa_left);
		draw_text(128, 64, "Use the arrow keys to move");
		draw_text(128, 255, "Press the spacebar to shoot");
		draw_text(128, 384, "Press the up arrow key to jump");
		draw_text_color(128, 498, "Collect a key to open the door at the end of a level", yellow, yellow, yellow, yellow, 1);
		draw_set_halign(fa_center);
		draw_text(room_width/2, 550, "Press enter to go to the level select screen");
		break;
	case rm_level_select:
		draw_set_halign(fa_center);
		draw_text_transformed(room_width/2, 50, "Click on a level", 2, 2, 0);
		break;
	case rm_level_finish:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 200, "Level completed", 3, 3, 0, g, g, g, g, 1);
		draw_text(room_width/2, 400, "Press enter to go to go back to title screen");
		break;
	case rm_level_fail:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 200, "Level failed", 3, 3, 0, r, r, r, r, 1);
		draw_text_transformed_color(room_width/2, 300, "Now let someone else play", 2, 2, 0, r, r, r, r, 1);
		draw_text(room_width/2, 400, "Press enter to go back to title screen")
		break;
}

