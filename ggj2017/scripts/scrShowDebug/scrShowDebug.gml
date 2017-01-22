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
val[6,0] = round(fps_real) 
val[6,1] = "fps"
val[7,0] = round(delta_time) 
val[7,1] = "delta_time"

for(var i = 0 ; i < array_height_2d(val) ; i++){
	draw_text(0,i*16,string(val[i,1])+ ": " +string(val[i,0]))
}
