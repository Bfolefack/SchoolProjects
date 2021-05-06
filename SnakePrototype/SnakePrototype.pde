int snakeLength;
float snakeAmp;
float snakeFreq;
float snakeRes;
PVector pos;
float snakeSpeed;
PVector[] snakeJoints;

void setup(){
  size(1000, 400);
  background(255);
  strokeWeight(8);
  
  pos = new PVector(width/2, height/2);
  snakeLength = 150;
  snakeAmp = 25;
  snakeFreq = 2;
  snakeRes = .1;
  snakeSpeed = 3;
  
  snakeJoints = new PVector[snakeLength];
  for(int i = 0; i < snakeLength; i++){
    snakeJoints[i] = pos;
  }
}

void draw(){
  background(255);
  update();
  //ellipse(width/2, height/2, 20, 20);
    for (int i = 1; i < snakeLength; i++) {
      if (i/5 % 2 == 0) {
        stroke(0);
      } else {
        stroke(0, 0, 255);
      }
      line(snakeJoints[i].x, snakeJoints[i].y, snakeJoints[i - 1].x, snakeJoints[i - 1].y);
    } 
  
  fill(0);
  
}

void update(){
  pos.add(PVector.sub(new PVector(mouseX, mouseY), pos).normalize().mult(snakeSpeed));
  for(int i = snakeLength - 1; i > 0; i--){
    snakeJoints[i] = snakeJoints[i - 1];
  }
  snakeJoints[0] = new PVector(pos.x ,pos.y + sin(snakeRes + frameCount * snakeRes) * snakeAmp);
}
