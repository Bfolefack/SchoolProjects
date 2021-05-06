float traX;
float traY;
float boxDepth;

void setup() {
  size(800, 600);
  background(0);
  traX = 0;
  traY = 0;
  boxDepth = 0;
}

void draw() {
  stroke(0, 255, 0);
  noFill();
  pushMatrix();
  translate(width/2, height/2);
  rotate(mouseX/10);
  beginShape();
    vertex(400- width/2, 100 - height/2);
    vertex(600- width/2, 300 - height/2);
    vertex(500- width/2, 500 - height/2);
    vertex(300- width/2, 500 - height/2);
    vertex(200- width/2, 300 - height/2);
  endShape(CLOSE);
  popMatrix();
  //background(0);
  //translate(traX, traY, boxDepth);
  //box(100, 100, 100);
  
  //pushMatrix();
  //background(0);
  //translate(traX, traY);
  //fill(map(mouseX, 0, width, 0, 255), map(mouseX, 0, width, 255, 0), 0);
  //translate(width/2, height/2);
  ////rotate(mouseX/100.0);
  //rect(0, 0, 100, 100);
  //popMatrix();
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  boxDepth += e * 50;
}

void mouseDragged(){
  traX += mouseX- pmouseX;
  traY += mouseY - pmouseY;
  println(traX + " : " + traY);
}
