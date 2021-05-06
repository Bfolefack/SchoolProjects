Ball[] b;
String name = "Boueny Folefack";

void setup(){
  println(name.charAt(0));
  size(800, 600);
  b = new Ball[50];
  for (int i = 0; i < 50; i++){
    b[i] = new Ball(new PVector(0, 1), new PVector(random(width), random(height)), random(10, 200));
  }
  noStroke();
}

void draw(){
  background(0);
  for (int i = 0; i < 50; i++){
    b[i].update();
    b[i].display();
  }

}

void mousePressed(){
  for (int i = 0; i < 50; i++){
    b[i].injectVelocity(50);
  }
}
