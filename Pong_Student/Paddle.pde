public class Paddle {

  /*INSTANCE VARIABLES*/
  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  color c;
  /*INSTANCE VARIABLES*/

  /*CONSTRUCTOR*/
  Paddle(float tempX, float tempY, float tempW, float tempH, color col) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c= color(col);
  }
  /*CONSTRUCTOR*/


  /*METHODS*/
  //set current speed of the paddle  
  void setSpeed(float spd)
  {
    speedY = spd;
  }

  //cause the paddle to move according to its current speed
  void move() {
    y += speedY;
    x += speedX;
    if (bottom() > height) {
      y = height-h/2;
    }

    if (top() < 0) {
      y = h/2;
    }
  }

  //make the paddle appear on the screen
  void display() {
    fill(c);
    rect(x-w/2, y-h/2, w, h);
  } 

  //helper functions do not call
  float left() {
    return x-w/2;
  }
  float right() {
    return x+w/2;
  }
  float top() {
    return y-h/2;
  }
  float bottom() {
    return y+h/2;
  }
  /*METHODS*/
}
