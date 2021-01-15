
if keyboard_check_pressed(vk_control)
{
	if show_question("선택 변경?")
	{
		var inst = instance_create_depth(0,0,0,object0);
		inst.option = 1;
	}
	else
	{
		var inst = instance_create_depth(0,0,0,object0);
		inst.option = 0;
	}
}