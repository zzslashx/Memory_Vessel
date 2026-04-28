//cheng cheng
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
boolean showPuddles2 = false;
void setup() {

  size(800, 600);
  pixelDensity(1);
  frameRate(30);
}


void draw() {
  drawGradientRect(0, 0, 800, 300, sky, midGround);
  drawGradientRect(0, 300, 800, 300, midGround, darkGround);
  fill(darkGround);
  noStroke();
  rect(0, 350, width, height);
  drawPuddles();
  if (opacity >= 80) showPuddles2 = true;
  if (showPuddles2) drawPuddles2();
  drawRain();
  if(opacity >=80 && opacity2 >= 80){
  opacity = opacity2 = 0;
  showPuddles2 = false;
  }
}
