if (_alpha >= 1)
{
	instance_destroy();
	surface_free(surf);
	instance_activate_all();
}