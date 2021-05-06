void setup(){
   size(800, 600);
   fill(255, 255, 0);
   //noStroke();
   background(0);
   for( int i = 0; i < 100; i++){
      randomStar(); 
   }
}

void randomStar() {
   float xPos; 
   float yPos;
   xPos = random(width);
   yPos = random(height);
  pushMatrix();
  translate(xPos, yPos);
  int[] x = {50, 61, 83, 69, 71, 50, 29, 31, 17, 39};
  int[] y = {18, 37, 43, 60, 82, 73, 82, 60, 43, 37};
  beginShape();
  for (int i=0; i < x.length; i++)
    vertex(x[i], y[i]);
  endShape(CLOSE);
  
 popMatrix();
}
