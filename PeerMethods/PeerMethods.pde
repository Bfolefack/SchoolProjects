void setup(){
  
}

void draw(){ 
  
}

void anikaTree(float x, float y, float sz, color c) {
    pushMatrix();
    pushStyle();
    translate(x, y);
    scale(sz);
    noStroke();
    fill(134, 96, 14);
    rect(0, 0, 40, 100);
    fill(c);
    ellipse(0 -15, 0, 50, 50);
    ellipse(0 +25, 0, 50, 50);
    ellipse(0, 0 - 30, 50, 50);
    ellipse(0 + 40, 0 - 30, 50, 50);
    ellipse(0 + 60, 0, 50, 50);
    ellipse(0 + 20, 0 - 60, 50, 50);
    popStyle();
    popMatrix();
  }
  
void avalosPond(float x, float y, float sz, color c)
{
  pushMatrix();
  pushStyle();
  translate(x, y);
  noStroke();
  scale(sz);
  fill(c);
  ellipse(0, 0, 100, 180);
  ellipse(0,0+100, 150, 200);
  ellipse(0-100,0, 200, 200);
  ellipse(0-100,0+106, 200, 170);
  ellipse(0+96,0+60, 150, 170);
  ellipse(0+78,0, 110, 110);
  
  popStyle();
  popMatrix();
}

void hinkelStormCloud(float x, float y, float sz, color c)
{
  pushMatrix();
  pushStyle();
  translate(x,y);
  scale(sz);
  noStroke();
  fill(#FAFF0F);
  beginShape();
  vertex(0,15);
  vertex(20,15);
  vertex(0,55);
  vertex(10,60);
  vertex(-10,85);
  vertex(-5,60);
  vertex(-10,55);
  vertex(-10,15);
  endShape();
  fill(c);
  circle(0,0,75);
  circle(25,-50,75);
  circle(-25,-50,75);
  circle(-50,0,75);
  circle(50,0,75);
  popStyle();
  popMatrix();
}
