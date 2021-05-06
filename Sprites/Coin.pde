
public class Coin extends Sprite{
  
  public Coin(PVector l){
    super(l);
  }
  public void move(){
    //nuhting
  }
  
  public void show(){
    fill(255,255, 0);
    ellipse(super.loc.x, super.loc.y, 30, 45);
  }
}
