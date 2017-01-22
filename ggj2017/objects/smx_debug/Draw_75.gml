/// @description Draw console overlay

if(self.has_focus){
	// Draw the console background
	draw_set_alpha(_log_background_alpha);
	draw_set_color(_log_background_color);		
	draw_rectangle(0, 0, view_wview[view_current], view_hview[view_current]/3, false);	
	
	// Draw console log, aka previous commands
	draw_set_alpha(_log_text_alpha);
	draw_set_color(_log_text_color);	
    draw_set_valign(fa_bottom);
    draw_text(10, view_hview[view_current]/3, log);
	// Draw current command background
	draw_set_alpha(_command_background_alpha);
	draw_set_color(_command_background_color);	
    draw_set_valign(fa_top);
	draw_rectangle(0, view_hview[view_current]/3, 
		view_wview[view_current], (view_hview[view_current]/3) + 20, false);
	draw_set_alpha(_command_text_alpha);
	draw_set_color(_command_text_color);	
    draw_text(10, view_hview[view_current]/3, "$ " + keyboard_string);	 
}