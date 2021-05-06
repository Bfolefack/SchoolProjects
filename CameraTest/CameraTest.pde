PVector pos;
PVector rot;

void setup() {
  size(800, 800, P3D);
  pos = new PVector(width/2, height/2, height/2);
  rot = new PVector(0, 0, 0);
}

void draw() {
  background(0);
  camera(pos.x + rot.x, pos.y + rot.y, (pos.z) / tan(PI/6), pos.x, pos.y, 0, 0, 1, 0);
  translate(width/2, height/2, -100);
  stroke(255);
  noFill();
  box(200);
  cameraControl();
}

void cameraControl() {
  if(mousePressed){
    if(mouseButton == LEFT){
      pos.x += pmouseX - mouseX;
      pos.y += pmouseY - mouseY;
    }
    if(mouseButton == RIGHT){
      rot.x += pmouseX - mouseX;
      rot.y += pmouseY - mouseY;
    }
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(e < 0){
    pos.z /= 1.1;
  } else {
    pos.z *= 1.1;
  }
}
