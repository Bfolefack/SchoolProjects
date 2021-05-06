class HomeBug extends Bug{
  Location origLocation;
  HomeBug(ActorWorld g){
    super();
    setColor(Color.yellow);
    g.add(this);
    origLocation = getLocation();
  }
  
  void act(){
    if(canMove()){
      super.act();
    } else {
      super.act();
      moveTo(origLocation);
    }
  }
}
