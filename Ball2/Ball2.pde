BetterBall b;

void setup(){
  b = new BetterBall();
  size(800, 600);
  noStroke();
}

void draw(){
  background(0);
  b.move();
  b.display();
}
