// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

	
	
function smooth_approach(arg0, arg1, arg2){
	var diff = arg1-arg0;
	if abs(diff) < 0.0005
	{
		return arg1;
	}
	else 
	{
		return arg0+sign(diff)*abs(diff)*arg2;
	}	
}
	
