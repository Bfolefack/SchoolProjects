
void setup(){
   size(800, 600);
   background(200);
   windows(width/2, height/2, 100);
}

void windows(float xPos, float yPos, float sz){
  pushMatrix();
  translate(xPos, yPos);
  strokeWeight(sz/10);
  fill(255, 0, 0);
  rect(0, 0, sz, sz);
  fill(0, 255, 0);
  rect(sz, 0, sz, sz);
  fill(0, 0, 255);
  rect(0, sz, sz, sz);
  fill(255, 255, 0);
  rect(sz, sz, sz, sz);
  popMatrix();
}
