//Cheng Cheng
//programming 11
// memory vessel
//This represents a rainy day and being loney. The snail in the photo is alone so 
// I think that the memory they were trying to draw was loneliness!

color ground = #B09070;
color shell = #C85419;
color sky = #BEA479;
color midGround= #9D7B6C;
color darkGround = #826354;
float opacity = 0;
float opacity2 = 0;
float opacity3 = 0;
boolean showPuddles2 = false;
boolean showPuddles3 = false;
void setup() {

  size(800, 600);
  pixelDensity(1);
  frameRate(30);
}


void draw() {
  drawGradientRect(0, 0, 800, 300, sky, midGround);
  drawGradientRect(0, 300, 800, 300, midGround, darkGround);
drawGradientRect(0,300,width,300,darkGround,darkGround);
 
  drawPuddles();
  if (opacity >= 80) showPuddles2 = true;
    if (opacity2 >= 80) showPuddles3 = true;
  if (showPuddles2) drawPuddles2();
  if (showPuddles3) drawPuddles3();
  drawRain();

   if(opacity >=80 && opacity2 >= 80 && opacity3 >=80){
  opacity = opacity2 =opacity3= 0;
  showPuddles2 = false;
  showPuddles3=false;
  }
  
}
