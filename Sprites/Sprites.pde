Coin s;
Goomba g;
Koopa k;

void setup(){
  noStroke();
  size(800, 600);
  background(100, 200, 255);
  s = new Coin(new PVector(width/2, height/2));
  g = new Goomba(new PVector(width/2, height/2));
  k = new Koopa();
}

void draw(){
  background(100, 200, 255);
  k.show();
  s.show();
  g.show();
  g.move();
  
}
