Pixel[] picture;
String[] lines;
void setup() {
  size(1000, 750);
  
  lines = loadStrings("info.txt");
  picture = new Pixel[lines.length];
  
  for(int i = 0; i < lines.length; i++){
    picture[i] = new Pixel(lines[i]);
    picture[i].display();
  }
  
  save("finalPicture.png");
}
