PImage img;
PImage glassImg;
int imgCount;
PVector mouse;

public void setup()
{
  size(800, 600);
  background(0);
  img = loadImage("cherry.jpg");
}


public void draw()
{
  mouse = new PVector(mouseX, mouseY);
  switch(imgCount) {
  case 1:
    image(filterRGB(img, 0, 1, 1), 0, 0);
    break;
  case 2:
    image(filterRGB(img, 1, 0, 1), 0, 0);
    break;
  case 3:
    image(filterRGB(img, 1, 1, 0), 0, 0);
    break;
  case 4:
    image(solarize(img, 400), 0, 0);    
    break;
  case 5:
    image(spotlight(img, 50), 0, 0);    
    break;
  case 6:
    image(invert(img), 0, 0);    
    break;
  case 7:
    image(edgeDetection(img, 0), 0, 0);    
    break;  
  case 8:
    image(glass(img, 5, false), 0, 0);    
    break;  
  default:
    image(img, 0, 0);
    break;
  }
}

public void mousePressed() {
  if (mouseButton == LEFT) {
    imgCount++;
  } else {
    imgCount--;
  }
}

public PImage  filterRGB (PImage image, float r, float g, float b) {
  PImage p = image.copy();
  for (int i=0; i < p.pixels.length; i++)
  {
    //pixels[i] = color( random(255), random(255), random(255) );
    color pixel = p.pixels[i];
    float red = red(pixel);
    float green = green(pixel);
    float blue = blue(pixel);
    p.pixels[i] = color (red * r, green * g, blue * b);
  }
  return p;
}

public PImage solarize (PImage image, int solar) {
  PImage p = image.copy();
  for (int i=0; i < p.pixels.length; i++)
  {
    //pixels[i] = color( random(255), random(255), random(255) );
    color pixel = p.pixels[i];
    float red = red(pixel);
    float green = green(pixel);
    float blue = blue(pixel);
    if (red + green + blue < solar) {
      p.pixels[i] = color(255 - red, 255 - green, 255 - blue);
    } else {
      p.pixels[i] = color(red, green, blue);
    }
  }
  return p;
}

public PImage spotlight (PImage image, int spot) {
  PImage p = image.copy();
  for (int i=0; i < p.pixels.length; i++)
  {
    PVector pos = getXY(i);
    if (PVector.dist(pos, mouse) > spot) {
      p.pixels[i] = color(0);
    }
  }
  return p;
}

public PImage invert(PImage image) {
  PImage p = image.copy();
  PImage temp = p.copy();
  for (int i = 1; i < p.pixels.length; i++)
  {
    temp.pixels[i] = p.pixels[p.pixels.length - i];
  }
  return temp;
}

public PImage edgeDetection(PImage image, int sense) {
  PImage p = image.copy();
  for (int i = 1; i < p.pixels.length; i++)
  {
    PVector pos = getXY(i);
    float dl = avgColor(p.pixels[i], image.pixels[getIndex(new PVector(pos.x - 1, pos.y))]);
    float dr = avgColor(p.pixels[i], image.pixels[getIndex(new PVector(pos.x + 1, pos.y))]);
    float du = avgColor(p.pixels[i], image.pixels[getIndex(new PVector(pos.x, pos.y - 1))]);
    float dd = avgColor(p.pixels[i], image.pixels[getIndex(new PVector(pos.x, pos.y + 1))]);
    float max = getMax(dl, dr, du, dd);
    if (max > sense) {
      p.pixels[i] = color(max);
    } else {
      p.pixels[i] = color(0);
    }
  }
  return p;
}

public PImage  glass(PImage image, int glass, boolean animate) {
  if (glassImg == null || animate) {
    PImage p = image.copy();
    for (int i=0; i < p.pixels.length; i++)
    {
      PVector pos = getXY(i);
      p.pixels[i] = image.pixels[getIndex(new PVector(pos.x + (int)random(-glass, glass), pos.y + (int)random(-glass, glass)))];
    }
    glassImg = p.copy();
  }
  return glassImg;
}

public PVector getXY (int index) {
  int y = index/width;
  int x = index - (y * width);
  return new PVector(x, y);
}

public int getIndex(PVector pos) {
  if(pos.x >= width){
    pos.x =  width - 1;
  }
  if(pos.x < 0){
    pos.x =  0;
  }
  if(pos.y >= height){
    pos.y =  height - 1;
  }
  if(pos.y < 0){
    pos.y =  0;
  }
  int index = (int) (pos.y * width + pos.x);
  return index;
}

public float avgColor(color b, color c) {
  return (Math.abs(red(b) - red(c)) + Math.abs(blue(b) - blue(c)) + Math.abs(green(b) - green(c)))/3.0;
}

public float getMax(float a, float b, float c, float d) {
  float max = Integer.MIN_VALUE;
  if (a > max) {
    max = a;
  }
  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }
  if (d > max) {
    max = d;
  }
  return max;
}
