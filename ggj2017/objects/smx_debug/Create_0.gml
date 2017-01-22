/// @description Initialize the debug console

/*
*	Keys
*/
_key_show_console = vk_f12;
_key_hide_console = vk_f12;


/*
*	Log settings
*/
_log_background_color = make_color_rgb(43,48,59);
_log_background_alpha = 0.8;
_log_text_color = $a3be8c;
_log_text_alpha = 1;
/*
*	Command settings
*/
_command_background_color = make_color_rgb(101,115,126);
_command_background_alpha = 0.8;
_command_text_color = $a3be8c;
_command_text_alpha = 1;


/*
*	These are variables uses by the console.
*	DO NOT EDIT!!!
*/
 show_debug_console = false;
 has_focus = false;
 user_input = "";
 log = "";	
 