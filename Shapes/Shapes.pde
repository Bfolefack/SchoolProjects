int step;

void setup() {
  step = 0;
  size(1000, 800);
  noiseDetail(8, 0.6);
  noStroke();
}

void draw() {
  background(0);
  switch(step) {
  case 0:
    horizon();
    break;
  case 1:
    vert();
    break;
  case 2:
    diagonal();
    break;
  case 3:
    brachistochrone();
    break;
  case 4:
    circles();
    break;
  case 5:
    fade(true, 0);
    break;
  case 6:
    fade(false, 0);
    break;
  case 7:
    fadeDown();
    break;
  case 8:
    checkers();
    break;
  case 9:
    custom();
    break;
  default:
    fill(255);
    textSize(50);
    text("end", width/2, height/2);
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    step++;
    println(step);
  }
}

void horizon() {
  for (int i = 0; i < 10; i++) {
    stroke(255);
    line(0, i/10f * height, width, i/10f * height);
  }
}

void vert() {
  for (int i = 0; i < 8; i++) {
    stroke(255);
    line(i/8f * width, 0, i/8f * width, height);
  }
}

void diagonal() {
  for (int i = 0; i < 50; i++) {
    stroke(255);
    line(i/25f * width, 0, 0, height * i/25f);
  }
}

void brachistochrone() {
  push();
  for (int i = 0; i < 20; i++) {
    stroke(255);
    line(i/20f * width, 0, 0, height - height * i/20f);
  }
  pop();
}

void circles() {
  for (int i = 0; i < 100; i++) {
    noFill();
    stroke(255);
    circle(width/2, height/2, i/100f * width);
  }
}

void fade(boolean b, float y) {
  noStroke();
  for (int i = 0; i < 15; i++) {
    float num1 = 255 * i/15;
    float num2 = 255 - 255 * i/15;
    if (b) {
      fill(num1, 0, num2);
    } else {
      fill(num2, 0, num1);
    }
    rect((i/15.0) * width, y, width/15.0 + 1, height/10.0);
  }
}

void fadeDown() {
  for (int i = 0; i < 10; i++) {
    fade((i % 2 == 0), i/10.0 * height);
  }
}

void checkers() {
  for (int i = 0; i < 8; i++) {
    for ( int j = 0; j < 8; j++) {
      if ((i + j) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(j * height/8.0, i * height/8.0, height/8.0, height/8.0);
    }
  }
}

void custom() {
  for (int i = 0; i < height/5; i++) {
    for (int j = 0; j < width/5; j++) {
      fill(noise(j * 0.01, i *0.01, frameCount * 0.001) * 255);
      rect( j * 5, i * 5, 5.0 , 5.0);
    }
  }
}
