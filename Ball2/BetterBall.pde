public class BetterBall {
  PVector pos;
  PVector vel;
  PVector acc;
  float size;
  color c;
  
  public BetterBall(){
    pos = new PVector(width/2, height/2);
    vel = new PVector(random(-20, 20), random(-20));
    acc = new PVector(0, 1);
    size = 50;
    c = color(255);
  }
  
  public void move(){
    pos.add(vel);
    if(pos.y < height - (size)){
      vel.add(acc); 
    } else {
      vel.mult(.95);
    }
    
    vel.mult(.99);
    
    if(pos.x > width - size/2 || pos.x < size/2){
      vel.x *= -1 * .9;
    }
    
    if(pos.y > height - size/2){
      vel.y *= -1 * .9;
    }
  }
  
  public void display(){
    fill(c);
    ellipse(pos.x, pos.y, size, size);
  }
  
}
