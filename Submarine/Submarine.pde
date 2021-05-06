void setup(){
  size(1000, 700);
  noStroke();
  background(random(25, 50), random(75, 200), 255);
  int subNum = 30;
  for(int i = 0; i < subNum; i++){
    drawSub(new PVector(random(width), random(height)), new PVector(random(255), random(255), random(255)), random(100, 300));
  }
}

void draw() {
  drawSub(new PVector(random(width), random(height)), new PVector(random(255), random(255), random(255)), random(100, 300));
}

void drawSub(PVector pos, PVector subColor, float size){
  //Draw propellers
  fill(150);
  rect(pos.x - size/2 + size/10, pos.y + size * .225, size * -.2, size * .05);
  ellipse(pos.x - size/2 - size/10, pos.y + size/4 - size/10, size/20, size/5);
  ellipse(pos.x - size/2 - size/10, pos.y + size/4 + size/10, size/20, size/5);
  
  //Draw submarine body
  fill(subColor.x, subColor.y, subColor.z);
  rect(pos.x, pos.y, size, size/2, size/4, size/4, size/4, size/4);
  ellipse(pos.x + size/4, pos.y + size/4, size * 1.5, size/2);
  rect(pos.x + size * .6, pos.y - size/5, size/10, size/4, size/10, 0, 0, 0);
  rect(pos.x + size * .6, pos.y - size/5, size/6, size/12, size/10, 0, 0, 0);
  
  //Draw windows
  fill(30, 210, 255);
  circle(pos.x + size * .8, pos.y + size/4, size/4);
  circle(pos.x + size * .5, pos.y + size/4, size/4);
  circle(pos.x + size * .2, pos.y + size/4, size/4);
  circle(pos.x - size * .1, pos.y + size/4, size/4);
}
