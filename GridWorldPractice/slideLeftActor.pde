class slideLeftActor extends Actor{
  Location location;
  slideLeftActor(){
    super();
    setColor(Color.PINK);
  }
  
  void act(){
    location = getLocation();
    moveTo(new Location(location.getRow(), location.getCol() - 1));
  }
}
