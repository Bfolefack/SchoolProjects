float x;

void setup() {
  size(800, 600);
  background(175);
  noStroke();
  x = 0;
}

void draw() {
  //background(175);
   //background(0); 
  
  fill(random(255), random(255), random(255));
  circle(x, sin(x/40.0) * 100 + height/2, 20);
  x += 10;
  if (x > width){
      x = 0;
  }
}
