public abstract class Sprite{
  PVector loc;
  
  public Sprite(){
    loc = new PVector(width/2, height/2);
  }
  
  public Sprite(PVector l){
    loc = l;
  }
  
  public abstract void move();
  
  public abstract void show();
  
}
