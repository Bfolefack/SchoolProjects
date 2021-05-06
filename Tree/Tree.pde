size(1000, 700);
background(0);
noStroke();

PVector pos = new PVector(random(width), random(200 , height));
PVector offset;
float size = random(10, 100);
float truSize;
fill(70, 40, 0);
  rect(pos.x, pos.y, size, size  * -4);
  fill(15, 150, 50);
  for(int i = 0; i < 300; i++){
    offset = new PVector(random(-1, 1), random(-1, 1));
    offset.setMag(random(size * 1.5));
    truSize = random(size/10, size);
   ellipse(pos.x + size/2 + offset.x, pos.y - size * 4 + offset.y, truSize, truSize); 
  }

//for(int j = 0; j < 10; j++){
//  pos = new PVector(random(width), random(200 , height));
//  size = random(10, 100);
//  fill(70, 40, 0);
//  rect(pos.x, pos.y, size, size  * -4);
//  fill(15, 150, 50);
//  for(int i = 0; i < 300; i++){
//    offset = new PVector(random(-1, 1), random(-1, 1));
//    offset.setMag(random(size));
//    truSize = random(size/10, size);
//   ellipse(pos.x + size/2 + offset.x, pos.y - size * 4 + offset.y, truSize, truSize); 
//  }
//}
//ellipse(pos.x + size/2, pos.y - size * 4, size * 4, size * 4);


//int current = 0;
//int x = int(random(width));
//int y = int(random(height));
//int size = int(random(25, 500));
//char letter = 97;
//int val = 97;
//float bob = 97;
//String name = "Mr. Barbe";
//println(val);
//println(letter);
//println(bob);
//println(name);
//size(1000, 700);
//background(0);
//rect(x, y, size/2, size);
//rect(x + size, y, size/2, size);

//println(frameCount);
//textSize(48);
//for(int i = 2; i < 1000; i *= 1.5){
//  textSize(i);
//  current += i;
//  text("Beans", width/2, current);
//}
//fill(random(255), random(255), random(255));
//circle(width/2, height/2, random(255));

//println( day() );
//println( month() );
//println( year() );
