PVector[] layer1Pos;
PVector[] layer2Pos;
PVector[] layer3Pos;

PVector[] layer1Colors;
PVector[] layer2Colors;
PVector[] layer3Colors;

float[] trees;

PVector carColor;
float xPos;
float moonPos;
int directionFlip;

int buildingNum;
int treeNum;
void setup() {
  size(800, 600);
  buildingNum = 12;
  treeNum = 10;
  layer1Pos = new PVector[buildingNum/3];
  layer2Pos = new PVector[buildingNum/3];
  layer3Pos = new PVector[buildingNum/3];

  layer1Colors = new PVector[buildingNum/3];
  layer2Colors = new PVector[buildingNum/3];
  layer3Colors = new PVector[buildingNum/3];
  
  trees = new float[treeNum];
  background(0, 0, 15);
  noStroke();
  setBuildings();
  setTrees();
  directionFlip = 2;
}

void draw() {
  drawMoon(moonPos, 100);
  moonPos += 1;
  if (moonPos > width + 50) {
    moonPos = -50;
  }
  
  drawBuildings();
  
  drawTrees();
  
  drawRoad();
  
  drawCar(xPos, height * 8.3/10, 1, color(carColor.x, carColor.y, carColor.z ));
  xPos += 3 * directionFlip;
  if (xPos > width - 55|| xPos < 0) {
    directionFlip *= -1;
  }
}

void drawCar(float x, float y, float s, color cc) {
  pushMatrix();
  translate(x, y);
  scale(s);
  fill(cc);
  pushStyle();
  fill(255, 255, 0);
  rect( 25, 5, 25, 20);
  popStyle();
  rect(15, 0, 45, 40);
  rect(0, 25, 75, 15);
  fill(0);
  circle( 10, 40, 15);
  circle(60, 40, 15);
  popMatrix();
}

void drawMoon(float x, float y) {
  fill(255, 255, 210);
  ellipse(x, y, 100, 100);
  fill(0, 0, 15);
  ellipse(x + 30, y, 100, 100);
  fill(0, 0, 0, 0);
  stroke(255);
  strokeWeight(1);
  ellipse(x, y, 100, 100);
  noStroke();
}

void mousePressed() {
  setBuildings();
  setTrees();
}

void setBuildings() {
  for (int i = 0; i < layer1Pos.length; i++) {
    layer1Pos[i] = new PVector(random(width - 200), random(height/5));
    layer1Colors[i] = new PVector(random(255), random(255), random(255));
  }
  for (int i = 0; i < layer2Pos.length; i++) {
    layer2Pos[i] = new PVector(random(width - 200), random(height/5) + height/5);
    layer2Colors[i] = new PVector(random(255), random(255), random(255));
  }
  for (int i = 0; i < layer3Pos.length; i++) {
    layer3Pos[i] = new PVector(random(width - 200), random(height/5) + (2 * height)/5);
    layer3Colors[i] = new PVector(random(255), random(255), random(255));
  }
  carColor = new PVector(random(255), random(255), random(255));
}

void drawRoad(){
  fill(50);
  rect(0, height * 9/10, width, height);
  for (int i = 0; i < width/60 + 60; i++) {
    fill(255);
    rect(i * 70, height * 9/10, 40, 7.5);
  }
}

void setTrees(){
  for (int i = 0; i < treeNum; i++) {
    trees[i] = random(width);
  }
}

void drawTrees() {
  for (int i = 0; i < treeNum; i++) {
    anikaTree(trees[i], height * 7/8, .5, color(50, 150, 75));
  }
}

void drawBuildings() {
  for (int i = 0; i < layer1Pos.length; i++) {
    fill(layer1Colors[i].x, layer1Colors[i].x, layer1Colors[i].x);
    rect(layer1Pos[i].x, layer1Pos[i].y, 200, height);
    for (int j = 0; j < 10; j++) {
      fill(255, 255, 0);
      rect(layer1Pos[i].x + 15, layer1Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer1Pos[i].x + 80, layer1Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer1Pos[i].x + 140, layer1Pos[i].y + (j * 80) + 25, 40, 60);
    }
  }
  fill(0, 0, 25, 100);
  rect(0, 0, width, height);
  for (int i = 0; i < layer2Pos.length; i++) {
    fill(layer2Colors[i].x, layer2Colors[i].x, layer2Colors[i].x);
    rect(layer2Pos[i].x, layer2Pos[i].y, 200, height);
    for (int j = 0; j < 10; j++) {
      fill(255, 255, 0);
      rect(layer2Pos[i].x + 15, layer2Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer2Pos[i].x + 80, layer2Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer2Pos[i].x + 140, layer2Pos[i].y + (j * 80) + 25, 40, 60);
    }
  }
  fill(0, 0, 25, 100);
  rect(0, 0, width, height);
  for (int i = 0; i < layer3Pos.length; i++) {
    fill(layer3Colors[i].x, layer3Colors[i].x, layer3Colors[i].x);
    rect(layer3Pos[i].x, layer3Pos[i].y, 200, height);
    for (int j = 0; j < 10; j++) {
      fill(255, 255, 0);
      rect(layer3Pos[i].x + 15, layer3Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer3Pos[i].x + 80, layer3Pos[i].y + (j * 80) + 25, 40, 60);
      rect(layer3Pos[i].x + 140, layer3Pos[i].y + (j * 80) + 25, 40, 60);
    }
  }
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

  
