class Ball {
  /*INSTANCE VARIABLES*/
  float x;
  float y;
  float speedX;
  float speedY;
  float diameter;
  color c;
  /*INSTANCE VARIABLES*/

  /*CONSTRUCTOR*/
  Ball(float tempDiameter) {
    x = width/2;
    y = height/2;
    diameter = tempDiameter;
    speedX = 0;
    speedY = 0;
    c = color(225);
  }
  /*CONSTRUCTOR*/


  /*METHODS*/
  //used to set the speed of the ball
  public void setSpeed()
  {
    if (random(10) < 5)
      speedX = random(4, 6); // Giving the ball speed in x-axis
    else
      speedX = -random(4, 6);
    speedY = random(-3, 3); // Giving the ball speed in y-axis
  }

  //used to move the ball back to the middle of the screen and reset the speed
  public void reset()
  {
    x = width/2;
    y = height/2;
    setSpeed();
  }

  //moves the ball on the screen. 
  public void move() {
    y = y + speedY;
    x = x + speedX;
    if (y+diameter/2 > height) {
      speedY = -speedY;
    }
    if (y-diameter/2 < 0) {
      speedY = -speedY;
    }
  }

  //draws the ball on the screen
  public void display() {
    fill(c); //set the drawing color
    ellipse(x, y, diameter, diameter); //draw a circle
  }

  //returns true if the ball has hit the left wall, otherwise false.
  public boolean hitLeftWall()
  {
    if (x-diameter/2 < 0) {
      return true;
    }
    return false;
  }
  //returns true if the ball has hit the right wall, otherwise false.
  public boolean hitRightWall()
  {
    if ( x+diameter/2 > width) {
      return true;
    }
    return false;
  }

  //returns true if the paddle sent to it has collied with the ball
  boolean hitPaddle(Paddle p)
  {
    
    if (x<width/2 && p.right() < width / 2) 
    {
      
      if ( left() < p.right() && y > p.top() && y < p.bottom()) 
        return true;
      else
        return false;
    } 
    else if(p.left() > width/2)
    {
        
      if ( right() > p.left() && y > p.top() && y < p.bottom()) 
        return true;
      else 
      return false;
    }
    return false;
  }
  
  //will cause the ball to reverse its direction
  //only use if a ball has hit a paddle
  void bounceOffPaddle(Paddle p)
  {
      speedX = -speedX;
      speedY = map(y - p.y, -p.h/2, p.h/2, -10, 10);
  }

//internal functions to help with collision detection ***DO NOT CALL***
  float left() {
    return x-diameter/2;
  }
  float right() {
    return x+diameter/2;
  }
  float top() {
    return y-diameter/2;
  }
  float bottom() {
    return y+diameter/2;
  }
  
  /*METHODS*/
}
