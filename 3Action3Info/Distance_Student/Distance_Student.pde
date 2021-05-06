PFont font;
float circleX;
float circleY;

void setup()
{
    size(1000,600);
    font = loadFont("AgencyFB-Bold-48.vlw");
    textFont(font,48);
    
    circleX = random(width);
    circleY = random(height);
    
    
}

void draw()
{
    background(0);
    
    fill(255, 0, 0);
    ellipse(circleX,circleY,10,10);
    
    stroke(255,0,0);
    line(circleX,circleY,mouseX,mouseY);
    
    
    fill(255);
    float distance = distance(circleX, circleY, mouseX, mouseY);
    text(distance,mouseX,mouseY);
    fill(0, 0, 0, 0);
    stroke(255);
    ellipse(circleX, circleY, distance * 2 , distance * 2);
}


float distance(float x1, float y1, float x2, float y2){
 float deltX = abs(x1 - x2);
 float deltY = abs(y1 - y2);
 
  float dist = sqrt(sq(deltX) + sq(deltY));
  return dist;
}
