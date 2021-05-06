class NoMoreActor extends Actor{
  int c;
  NoMoreActor(ActorWorld g){
    c = 0;
    g.add(this);
    setColor(new Color(c, c, c));
  }
  
  void act(){
    if( c > 255){
      removeSelfFromGrid();
      return;
    }
    setColor(new Color(c, c, c));
    c += (int)Math.floor(255.0/5.0);
  }
}
