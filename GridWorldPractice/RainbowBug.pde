public class RainbowBug extends Bug {
  RainbowBug(ActorWorld g){
    g.add(this);
  }
  
  void act(){
     setColor(new Color((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255)));
    super.act();
    super.act();
  }
}
