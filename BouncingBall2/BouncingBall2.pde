float posX;
float posY;
float velX;
float velY;


void setup() {
  size(800, 600);
  posX = width/2;
  posY = height/2;
  velX = 5;
  velY = 4;
  noStroke();
  background(0);
  fill(random(255), random(255), random(255));
}


void draw() {
  background(0);
  posX += velX;
  posY += velY;
  ellipse(posX, posY, 50, 50);
  bounce();
}

void bounce() {
  switch(offScreen()) {
  case "x":
    velX *= -1;
    velX += random(-.3, .3);
    velY += random(-.3, .3);
    break;
  case "y":
    velY *= -1;
    velX += random(-.3, .3);
    velY += random(-.3, .3);
    break;
  case "none":
    break;
  }
}


String offScreen() {
  if ( posX > width) {
    return "x";
  } else if (posX < 0) {
    return "x";
  }

  if ( posY > height) {
    return "y";
  } else if (posY < 0) {
    return "y";
  }

  return "none";
}
