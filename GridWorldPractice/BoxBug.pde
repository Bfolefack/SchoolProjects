public class BoxBug extends Bug {
  private int count;
  private int box;
  BoxBug(ActorWorld g, int _b){
    g.add(this);
    count  = 0;
    setColor(Color.orange);
    _b--;
    box = _b;
  }
  
  void act(){
    if(count >= box){
      turn();
      turn();
      count = 0;
    }
    if(canMove()){
      move();
      count++;
      return;
    }
    removeSelfFromGrid();
  }
}
