
PImage img;

public void setup()
{

}


public PImage filterRGB (PImage p, float r, float g, float b){
  for(int i=0; i < p.pixels.length; i++)
   {
      //pixels[i] = color( random(255), random(255), random(255) );
      color pixel = p.pixels[i];
      float red = red(pixel);
      float green = green(pixel);
      float blue = blue(pixel);
      float avg = (red + green + blue)/3;
      p.pixels[i] = color (red * r, green * g, blue * b);
   }
   return p;
}

//public PImage filterRGB (PImage p, int r, int g, int b){
//  for(int i=0; i < img.pixels.length; i++)
//   {
//      //pixels[i] = color( random(255), random(255), random(255) );
//      color pixel = p.pixels[i];
//      float red = red(pixel);
//      float green = green(pixel);
//      float blue = blue(pixel);
//      float p = (red + green + blue)/3;
//      img.pixels[i] = color (green, blue, red);
//   }
//   return p;
//}
