public class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  float size;
  color c;

  Ball(PVector g_, PVector p_, float sz_) {
    pos = p_;
    vel = new PVector(0, 0);
    injectVelocity(15);
    g_.mult(sz_/50);
    acc = g_;
    size = sz_;
    c = color(random(255), random(255), random(255));
  }

  void update() {
    vel.add(acc);
    vel.limit(100);
    pos.add(vel);
    vel.mult(.99);
    if (pos.y > height - size/2) {
      vel.y *= -.95; 
      pos.y = height - size/2;
    }
    if (pos.x > width - size/2) {
      vel.x *= -.95; 
      pos.x = width - size/2;
    }
    if (pos.x < size/2) {
      vel.x *= -.95; 
      pos.x = size/2;
    }
    if(mousePressed){
      if(mouseButton  == RIGHT){
        slowDown();
      }
      if(mouseButton == CENTER){
        speedUp(); 
      }
    }
  }

  void display() {
    fill(c);
    ellipse(pos.x, pos.y, size, size);
  }

  void injectVelocity(float mag) {
    float v = random(PI);
    PVector v2 = new PVector(cos(v), sin(v));
    vel.add(PVector.mult(v2, -mag)); 
  }
  
  void slowDown(){
    vel.mult(.2);
  }
  void speedUp(){
    vel.mult(1.2); 
  }
}
