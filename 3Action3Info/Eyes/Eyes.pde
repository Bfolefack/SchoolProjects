void setup(){
   size(800, 600);
   background(0);
   eyes(width/2, height/2);
   eyes(450, 200);
   eyes(100, 300);
}


void eyes(float xPos, float yPos) {
  pushMatrix();

  translate(xPos, yPos);
  noStroke();
  smooth();
  fill(255);
  ellipse(50, 50, 60, 60);
  fill(0);
  ellipse(50+10, 50, 30, 30);
  fill(255);
  ellipse(50+16, 45, 6, 6);

  pushMatrix();
  
  translate(70, 0);
  noStroke();
  smooth();
  fill(255);
  ellipse(50, 50, 60, 60);
  fill(0);
  ellipse(50+10, 50, 30, 30);
  fill(255);
  ellipse(50+16, 45, 6, 6);
  popMatrix();

  popMatrix();
}
