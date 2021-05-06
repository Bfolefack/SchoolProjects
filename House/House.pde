PVector[] pos;
int[] age;

void setup() {
  noStroke();
  size(800, 600);
  pos = new PVector[100];
  for (int i = 0; i < 100; i++) {
    pos[i] = new PVector(385, random(-30, 0) + 260);
  }
  age = new int[100];
  for (int i = 0; i < 100; i++) {
    age[i] = int(random(50));
  }
}
//size(800, 600);

//fill(50, 25, 0);
//rect(375, 250, 20, 50);
//fill(230, 230, 0);
//rect( 300, 300, 100, 100);
//fill( 140, 255, 20);
//triangle(275, 300, 350, 250, 425, 300);
//fill(200, 100, 20);
//rect(325, 325, 50, 75);
//fill(255, 175, 0);
//ellipse(365, 365, 10, 10);
/*
background(255, 255, 0);
 
 fill(255, 0, 255);
 noStroke();
 square(700, 50, 50);
 ellipse(300, 300, 100, 300);
 rect(300, 300, 200, 100);
 
 stroke(0, 255, 75);
 strokeWeight(10);
 fill(0, 255, 0);
 noFill();
 triangle(0, 0, width - 100, 100, 100, height - 100);
 quad(100, 100, width - 100, 100, width - 100, height - 100, 100, height- 100);
 */
void draw() {
  
  background(255);
  for (int i = 0; i < 100; i++) {
    fill(50);
    age[i]++;
    pos[i].x += random(-1, 1);
    pos[i].y -= random(2);
    ellipse(pos[i].x, pos[i].y, age[i]/2, age[i]/2);
    if (age[i] > 100){
      age[i] = 0;
      pos[i] = new PVector(385, 260);
    }
  }
  fill(50, 25, 0);
  rect(375, 250, 20, 50);
  fill(230, 230, 0);
  rect( 300, 300, 100, 100);
  fill( 140, 255, 20);
  triangle(275, 300, 350, 250, 425, 300);
  fill(200, 100, 20);
  rect(325, 325, 50, 75);
  fill(255, 175, 0);
  ellipse(365, 365, 10, 10);
}
