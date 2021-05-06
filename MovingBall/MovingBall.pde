PVector pos;

void setup() {
  size(800, 600);
  background(255);
  pos = new PVector(width/2, height/2);
  fill(random(255), random(255), random(255));
  noStroke();
}

void draw() {
  background(255, 255, 255, 0);
  ellipse(pos.x, pos.y, 50, 50);
  if (keyPressed) {
    switch(key) {
    case 'w':
      pos.y -= 3;
      if (pos.y < -25) pos.y = height + 25;
      break;
    case 'a':
      pos.x -= 3;
      if (pos.x < -25) pos.x = width + 25;
      break;
    case 'd':
      pos.x += 3;
      if (pos.x > width + 25) pos.x = -25;
      break;
    case 's':
      pos.y += 3;
      if (pos.y > height + 25) pos.y = -25;
      break;
    }
  }
}
