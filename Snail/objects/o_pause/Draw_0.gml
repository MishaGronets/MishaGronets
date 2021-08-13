if !surface_exists(surf)
    {
	    surf = surface_create(
		camera_get_view_width(view_camera[0]), 
		camera_get_view_height(view_camera[0]));
	    view_surface_id[0] = surf;
    }
_alpha = max(_alpha + 0.05,1);