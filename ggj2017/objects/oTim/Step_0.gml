/// @description Insert description here
// You can write your code in this editor

// deformación temporal
tiempo ++
factor = factormedio+amp*sin(pi*tiempo/wl)
xspeedmax = xspeedmax0*factor
yspeedmax = yspeedmax0*factor
// movimiento horizontal
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
xinput = right - left
if (xinput != 0){
	xspeed += xacc
	xmove = xinput
}else{
	xspeed -= xacc

}
xspeed = clamp(xspeed,0,xspeedmax)
repeat(xspeed){
	if (place_free(x+xmove,y)){
		x += xmove
	}
	
}
// movimiento vertical
jumping = keyboard_check_pressed(vk_space)

if (jumping = 1 and jump = 1){
	jump = 0
	yspeed = yspeedmax
	grvty = -1
}

if (grvty = -1){
	yspeed -= yacc
	if (yspeed <= 0){
		grvty = 1
	} 
}
if (grvty = 1){
	yspeed += yacc 
}
yspeed = clamp(yspeed,0,yspeedmax)
//show_debug_message(yspeed)

repeat(yspeed){
	if !(place_free(x,y + grvty)){// or (place_meeting(x,y + grvty,oUp) and grvty = 1)){
		yspeed = 0
		if (grvty = 1){
			jump = 1
		}
	}else{
		y += grvty
		jump = 0
	}
	
}
// Cambia tamaño del view
//view_set_xport(0,x-room_width/2)
//view_set_hport(0,y+room_height/2)
factorroom = factormedioroom + amproom*sin(pi*tiempo/wl)
camera_set_view_size(view_camera[0],width0*factorroom,height0*factorroom)
