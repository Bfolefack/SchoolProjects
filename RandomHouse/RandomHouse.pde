//pushMatrix()
//pushStyle();
//popStyle();
//scale()
//scale the entire coordinate system
//1) translate
//2)scale




void setup()
{
  size(800,600);
  background(0);
}

void draw()
{
  drawRandomHouse();
}


void drawHouse(color houseColor, color roofColor, float x, float y, float size){
  pushMatrix();
  translate(x, y);
  scale(size);
  fill(houseColor);
  pushStyle();
  fill(roofColor);
  triangle(50, -100, -50, 0, 150, 0);
  popStyle();
  rect(0, 0, 100,100);
  popMatrix();
}

void drawRandomHouse(){
  drawHouse(color(random(255), random(255), random(255)), color( random(255),  random(255),  random(255)), random(width), random(height), random(2));
}
