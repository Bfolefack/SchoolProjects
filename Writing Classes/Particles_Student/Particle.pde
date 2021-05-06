public class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  int age;
  
  Particle(PVector p){
    pos = p;
    vel = new PVector(random(-1, 1), -random(2));
    acc = new PVector(0, 0.05);
    age = 255;
  }
  
  void run(){
    age -= 2;
    pos.add(vel);
    vel.add(acc);
    
    fill(150, 150, 150, age);
    ellipse(pos.x, pos.y, 10, 10);
  }
  
  boolean isDead(){
    if(age < 0){
      return true;
    }
    return false;
  }
}
