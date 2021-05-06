void setup() {
  size(800, 600);
  background(130, 200, 230);
  noStroke();
}


void draw() {
  fill(15, 250, 70);
  dunkerBridge(400, 375, .75, color(100, 0, 0));

  kannaegantiBuilding(200, 275, 1, color(0, 0, 0), color(0, 0, 0));
  khazzamFence(200, 375, 1, color(105, 75, 0));
  dengPond(400, 525, .75, color(250, 150, 0));
  anikaTree(700, 355, 2, color(15, 125, 35));
  boydCloud(700, 100, 1, color(255, 255, 2555));
  lopezHouse(35, 450, 2, color(100, 0, 0), color(225, 185, 125));
}

void lopezHouse (float x, float y, float sz, color c, color f) {
  pushMatrix();
  pushStyle();
  translate(x,y);
  scale(sz);
  noStroke();
  fill(f);
  rect(0,0,100,50);
  rect(10,-40,20,60);
  fill(c);
  triangle(-10,0,50,-40,110,0);
  fill(64,46,14);
  rect(40,25,20,25);
  fill(255,255,255);
  rect(10,10,10,10);
  rect(80,10,10,10);
  popMatrix();
  popStyle();
  
}

void khanRock (float x, float y, float sz, color c) {
  pushMatrix();
  translate (x, y);
  scale (sz);
  pushStyle();
  noStroke();
  fill (c+20);
  rect (100, 100, 100, 20);
  fill (c);
  triangle (100, 100, 120, 80, 140, 100);
  fill (#362701);
  triangle (130, 100, 155, 75, 165, 100);
  fill (c);
  triangle (160, 100, 175, 60, 180, 100);
  fill (#362701);
  ellipse (180, 100, 40, 20); 
  popStyle();
  popMatrix();
}

void khazzamFence(float x, float y, float sz, color c) {
  pushMatrix();
  translate(x, y);
  scale(sz);
  pushStyle();
  //noStroke();
  fill(c);
  rect(0, 0, 25, 100);
  rect(0 +50, 0, 25, 100);
  rect(0 -50, 0, 25, 100);
  rect(0+100, 0, 25, 100);
  rect(0 -60, 0 +45, 200, 25);
  popStyle();
  popMatrix();
}


void kannaegantiBuilding(float x, float y, float size, color a, color b) {
  pushMatrix();
  pushStyle();
  translate(x, y);
  scale(size);
  noStroke();
  fill(a);
  rect(0, 0, 100, 200);
  fill(255, 255, 255);
  rect(20, 30, 20, 40);
  rect(60, 30, 20, 40);
  rect(20, 90, 20, 40);
  rect(60, 90, 20, 40);
  fill(b);
  rect(30, 150, 40, 50);
  popStyle();
  popMatrix();
}

void dunkerBridge(float x, float y, float sz, color c) {
  pushMatrix();
  translate(x, y);

  scale(sz);

  pushStyle();
  noStroke();
  fill(c);
  rect(0, 0, 400, 175);
  fill(130, 200, 230);
  triangle(0, 175, 0, 0, 125, 0);
  triangle(275, 0, 400, 0, 400, 175);
  ellipse(200, 150, 225, 150);
  popMatrix();
  fill(32, 188, 9);
  quad(0, 600, 0, 475, 800, 475, 800, 600);

  pushMatrix();
  translate(x, 300);
  scale(sz);
  fill(0, 0, 255);

  popStyle();
  popMatrix();
}

void dengPond(float x, float y, float sz, color c) {
  //note: the color changes the color of the fish not the actual pond 
  pushMatrix();
  pushStyle();
  translate(x, y); 
  scale(sz);
  noStroke();

  //pond water
  fill(75, 124, 191);
  ellipse(0, 0, 200, 100);
  ellipse(20, 40, 150, 100);

  //fish :)
  fill(c);
  ellipse(0, 0, 30, 10);
  triangle(13, 0, 25, -5, 25, 5);
  ellipse(30, 40, 30, 10);
  triangle(43, 40, 55, 35, 55, 45);
  popStyle();
  popMatrix();
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

void boydCloud(float x, float y, float sz, color c) {
  pushMatrix();
  pushStyle();
  translate (x, y);
  scale (sz);
  fill(c);
  circle (0, 0, 50);
  circle (-35, 0, 50);
  circle (35, 0, 50);
  circle (-20, -35, 50);
  circle (20, -35, 50);
  popStyle();
  popMatrix();
}
