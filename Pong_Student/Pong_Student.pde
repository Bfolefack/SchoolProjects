//Define global variables to use in setup and draw
Paddle l;
Paddle r;
Ball b;
Scoreboard s;
int paddleSpeed;

void setup() {
  size(800, 600);
  l = new Paddle( 30, height/2, 25, 125, color(255));
  r = new Paddle( width - 30, height/2, 25, 125, color(255));
  b = new Ball(25);
  s = new Scoreboard();
  b.setSpeed();
  paddleSpeed = 10;
  noStroke();
}

void draw() {
  background(0); //clear canvas
  
  l.move();
  r.move();
  b.move();
  
  if(b.hitPaddle(l)){
    b.bounceOffPaddle(l);
  } else if(b.hitPaddle(r)){
    b.bounceOffPaddle(r);
  }
  
  if(b.hitLeftWall()){
    s.increaseRightScore();
    b.reset();
  } else if(b.hitRightWall()){
    s.increaseLeftScore();
    b.reset();
  }
  
  l.display();
  r.display();
  b.display();
  s.showScore();
}

//determines which key was just pressed
//use UP and DOWN for right paddle, and 'w' and 's' for left paddle
void keyPressed() {
  switch( key ){
    case 'o':
      r.setSpeed(-paddleSpeed);
      break;
    case 'l':
      r.setSpeed(paddleSpeed);
      break;
    case 'w':
      l.setSpeed(-paddleSpeed);
      break;
    case 's':
      l.setSpeed(paddleSpeed);
      break;
  }
}
//activates then a key is no longer being pressed
//use UP and DOWN for right paddle, and 'a' and 'z' for left paddle
void keyReleased() {
  switch( key ){
    case 'o':
      r.setSpeed(0);
      break;
    case 'l':
      r.setSpeed(0);
      break;
    case 'w':
      l.setSpeed(0);
      break;
    case 's':
      l.setSpeed(0);
      break;
  }
}
