draw_self();

//Flash effect
if flash >= 3{
	flash --;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}
