PImage flattenImage;
PImage unFlattenedImage;

void setup()     
{ 
  unFlattenedImage = loadImage("lantern.jpg");
  flattenImage = loadImage("lantern.jpg");
  size(800, 533);
  //img = loadImage("lantern.jpg");
  println(flattenImage.width + "," + flattenImage.height);
}

void draw() 
{ 
  image(flattenImage, 0, 0);
}

void mouseClicked()
{
  flattenImage = flatten(flattenImage, 70);
}

PImage flatten(PImage img, int flattenScale) {
  img.loadPixels();
  for (int i=0; i<img.pixels.length; i++)
  {
    color c= img.pixels[i];
    c = color(int(red(c))/flattenScale * flattenScale, int(green(c))/flattenScale * flattenScale, int(blue(c))/flattenScale * flattenScale);
    img.pixels[i] = c;
  }
  img.updatePixels();
  return img;
}
