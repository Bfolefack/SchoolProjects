class DeathRock extends Rock{
  DeathRock(ActorWorld g){
    super(Color.RED);
    g.add(this);
  }
  DeathRock(){
    super(Color.RED);
  }
  
  void act(){
    Grid<Actor> grid = getGrid();
    ArrayList<Actor> occupiedLocations = grid.getNeighbors(getLocation());
    for(Actor a : occupiedLocations){
      Location l = a.getLocation();
      if(a.getClass() == new SuperBug().getClass())
      a.removeSelfFromGrid();
      DeathRock r = new DeathRock();
      r.putSelfInGrid(grid, l);
    }
  }
}
