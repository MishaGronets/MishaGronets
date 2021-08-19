if surface_exists(surf)
    {
		draw_surface_stretched(surf, 
		camera_get_view_x(view_camera[0]), 
		camera_get_view_y(view_camera[0]), 
		display_get_gui_width(), 
		display_get_gui_height());

    }
	

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(font_menu);

draw_mtext(
display_get_gui_width()/2,
display_get_gui_height()/2,
"PAUSE\npress 'ESC' to exit");