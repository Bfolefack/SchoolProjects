PImage grayscaleImage;
PImage unGrayscaledImage;

void setup()     
{ 
  unGrayscaledImage = loadImage("dragon.jpeg");
  grayscaleImage = loadImage("dragon.jpeg");
  size(800, 730);
  //img = loadImage("lantern.jpg");
  println(grayscaleImage.width + "," + grayscaleImage.height);
}

void draw() 
{ 
  image(grayscaleImage, 0, 0);
}

void mouseClicked()
{
    grayscaleImage = grayscale(grayscaleImage);
}

PImage grayscale(PImage img) {
  img.loadPixels();
  for (int i=0; i<img.pixels.length; i++)
  {
    color c= img.pixels[i];
    int grayscale = (int(red(c)) + int(green(c)) + int(blue(c)))/3;
    c = color(grayscale);
    img.pixels[i] = c;
  }
  img.updatePixels();
  return img;
}
