// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_rectangle_outline(x1,y1,x2,y2,color,width){

	draw_set_color(color)

	draw_rectangle(x1,y1,x2,y2,true)

	var i = 0

	do
	{

	    i += 1

	    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)

	}
	until(i = width)
}