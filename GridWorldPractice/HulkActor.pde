
public class HulkActor extends Actor {
  HulkActor(Location loc, ActorWorld g){
    g.add(this);
    moveTo(loc);
    setColor(Color.blue);
    setDirection(180);
  }
  
  HulkActor(ActorWorld g){
    g.add(this);
    setColor(Color.blue);
    setDirection(180);
  }
  
  void act(){
    setColor(Color.blue);
    setDirection(180);
    Grid<Actor> grid = getGrid();
    ArrayList<Actor> occupiedLocations = grid.getNeighbors(getLocation());
    for(Actor a : occupiedLocations){
      setColor(Color.green);
      setDirection(0);
      Location l = a.getLocation();
      a.removeSelfFromGrid();
      moveTo(l);
      break;
    }
  }
}
