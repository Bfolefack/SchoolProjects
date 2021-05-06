public class SuperBug extends Bug{
  
  int age;
  SuperBug(ActorWorld g){
    super();
    setColor(Color.green);
    g.add(this);
  }
  
  SuperBug(){
    
  }
  
  SuperBug(Grid g){
    int row = (int)(Math.random() * 10);
    int col = (int)(Math.random() * 10);
    setColor(Color.green);
    putSelfInGrid(g, new Location(row, col));
  }
  
  public void act(){
    age++;
    if(Math.random() < .15){
      new SuperBug(getGrid());
    }
    if(age > 15){
      removeSelfFromGrid();
    }
    if(canMove()){
      move();
    } else {
      turn();
    }
  }
  

  public void move(){
      Grid<Actor> gr = getGrid();
      if (gr == null)
          return;
      Location loc = getLocation();
      Location next = loc.getAdjacentLocation(getDirection());
      if (gr.isValid(next))
          moveTo(next);
      else
          removeSelfFromGrid();
  }
  
  
}
