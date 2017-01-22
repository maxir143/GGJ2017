/// @description Insert description here
// You can write your code in this editor
oTim.x = oTim.x0
oTim.y = oTim.y0
oTim.xspeed = 0
oTim.yspeed = 0
oTim.muertes++
with(oGoods){
	if (status = 1) {
		status = 0
		oTim.points--
		}
}