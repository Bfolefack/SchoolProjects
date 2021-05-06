public class Koopa extends Sprite{
  
  
  
  void move(){
    
  }
  
  void show(){
    float x = super.loc.x;
    float y = super.loc.y;
    fill(230, 245, 180);
    rect(x + 10, y - 60, 15, 60); 
    ellipse(x + 22, y - 50, 20, 40);
    fill(25, 255, 20);
    arc(x, y, 50, 100, PI, 2 * PI);
    
    
  }
}
