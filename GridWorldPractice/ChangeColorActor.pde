class ChangeColorActor extends Actor{
 
 ChangeColorActor(ActorWorld g){
    g.add(this);
    setColor(Color.MAGENTA);
  }
  
  void act(){
    Grid<Actor> myGrid = getGrid();
    Location myLoc = getLocation();
    ArrayList<Actor> list = myGrid.getNeighbors(getLocation());
    for(Actor a : list){
      a.setColor(Color.MAGENTA);
    }
  }
}
