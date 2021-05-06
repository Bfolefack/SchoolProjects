float x;
float y;
void setup() {
  size(800, 600);
  background(0);
  x = random(width - 100);
  y = random(height - 100);
  fill(random(255), random(255), random(255));
}

void draw() {
  background(0);
  rect(x, y, 100, 100);
  if (!mousePressed) {
    x += 3;
    y += 5;
    if (x > width)
      x = -100;
    if (y > height) {
      fill(random(255), random(255), random(255));
      y = -100;
    }
  } else {
    x -= 3;
    y -= 5;
    if (x < -100)
      x = width;
    if (y < -100) {
      fill(random(255), random(255), random(255));
      y = height;
    }
  }
}
