if (event_type == ev_draw) and (event_number == 0)
{
	//surface_reset_target()
	surface_set_target(light.light_surface_);
	var _cam = camera_get_active()
	var _placeholdercam = camera_create_view(0, 0, view_wport[view_current], view_hport[view_current])
	camera_apply(_placeholdercam)

	gpu_set_blendmode_ext(bm_dest_color, bm_zero);
	draw_surface(light.light_surface_, 0, 0);
	gpu_set_blendmode(bm_normal);
	surface_reset_target()
	camera_apply(_cam)
	camera_destroy(_placeholdercam)
}