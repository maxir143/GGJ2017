var val;

val[0,0] = oTim.xspeed
val[0,1] = "xspeed"
val[1,0] = oTim.yspeed
val[1,1] = "yspeed"
val[2,0] = oTim.factor
val[2,1] = "factor"
val[3,0] = oTim.factormedioroom
val[3,1] = "factormedioroom"
val[4,0] = oTim.factorroom
val[4,1] = "factorroom"
val[5,0] = oTim.amproom
val[5,1] = "amproom"
val[5,0] = oTim.tiempo/room_speed
val[5,1] = "tiempo"

for(var i = 0 ; i < array_height_2d(val) ; i++){
	draw_text(0,i*16,string(val[i,1])+ ": " +string(val[i,0]))
}
