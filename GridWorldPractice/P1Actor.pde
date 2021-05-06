public class P1Actor extends Actor {
  Location location;
  P1Actor(){
    super();
    setColor(Color.green);
    location = getLocation();
  }
  P1Actor(ActorWorld g){
    g.add(this);
    setColor(Color.green);
    location = getLocation();
  }
  
  void act(){
    super.act();
    int row = (int)(Math.random() * 10);
    int col = (int)(Math.random() * 10);
    location = getLocation();
    //moveTo(new Location(location.getRow(), location.getCol() + 1));
    moveTo(new Location(row, col));
  }
}
