public class STSActor extends Actor {
  Location location;
  STSActor(ActorWorld g){
    g.add(this);
    setColor(Color.cyan);
    location = getLocation();
  }
  
  void act(){
    super.act();
    int coinFlip = (int)((((int)Math.round(Math.random())) - .5) * 2);
    location = getLocation();
    if(location.getCol() + coinFlip < 0){
      moveTo(new Location(location.getRow(), getGrid().getNumCols() - 1));
    } else if(location.getCol() + coinFlip > getGrid().getNumCols() - 1){
      moveTo(new Location(location.getRow(), 0));
    } else {
      moveTo(new Location(location.getRow(), location.getCol() + coinFlip));
    }
    
  }
}
