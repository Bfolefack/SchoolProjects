public class Goomba extends Sprite{
  public Goomba(PVector p){
    super(p);
  }
  
  public void show(){
    if(frameCount/15 % 2 == 0){
      costume1();
      return;
    }
    costume2();
  }
  
  public void move(){
    super.loc.x--;
  }
  
  public void costume1(){
    fill(250, 245, 180);
    rect(super.loc.x - 15, super.loc.y + 40, 30, 20);
    fill(90, 60, 20);
    triangle(super.loc.x, super.loc.y, super.loc.x - 35, super.loc.y + 40, super.loc.x + 35, super.loc.y + 40);
    fill(0);
    ellipse(super.loc.x + 15, super.loc.y + 60, 20, 15);
  
  }
  
  public void costume2(){
    fill(250, 245, 180);
    rect(super.loc.x - 15, super.loc.y + 40, 30, 20);
    fill(90, 60, 20);
    triangle(super.loc.x, super.loc.y, super.loc.x - 35, super.loc.y + 40, super.loc.x + 35, super.loc.y + 40);
    fill(0);
    ellipse(super.loc.x - 15, super.loc.y + 60, 20, 15);
  }
}
