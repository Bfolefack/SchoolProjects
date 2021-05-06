void setup(){
  size(800, 600);
  noStroke();
  background(random(255), random(255), random(255));
}

void draw(){
  PVector e = new PVector(random(-1, 1), random(-1, 1));
  e.normalize();
  e.mult(random(75));
  e.add(new PVector(mouseX, mouseY));
  fill(random(255),random(255),random(255));
  circle(e.x, e.y, random(50));
}

void mousePressed(){
  background(random(255), random(255), random(255));
}
