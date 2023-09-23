switch room{
	case rm_title_screen:
		room_goto(rm_tutorial);
		break;
	case rm_tutorial:
		room_goto(rm_level_select);
		break;
	case rm_level_finish:
		game_restart();
		break;
	case rm_level_fail:
		game_restart();
		break;
}

