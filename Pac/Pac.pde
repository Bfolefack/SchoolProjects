int x;
boolean dir;
int[] anim;

void setup(){
  size(600, 600);
  //frameRate(5);
  x = 0;
  dir = true;
  anim = new int[]{4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 10, 11, 13, 15, 10000, 10000, 10000, 10000, 10000, 15, 13, 11, 10, 10, 9, 8, 7, 7, 6, 6, 5, 5, 4, 4, 4};
}


void draw(){
  background(0);
  if(keyPressed){
    if(key == 'd'){
      dir = false;
      x += 5;
    } else if(key == 'a'){
      dir = true;
      x -= 5;
    }
  }
  int s = anim[frameCount % anim.length];
  costume2(x, s, dir);
}


void costume1(int pos){
  push();
  fill(255, 255, 0);
  translate(width/2 + pos, height/2);
  ellipse(0, 0, 50, 50);
  pop();
}

void costume2(int pos, int size, boolean left){
  push();
  fill(255, 255, 0);
  translate(width/2 + pos, height/2);
  if(left){
    rotate(PI);
  }
  arc(0, 0, 50, 50, PI/size, ((size * 2) - 1) * PI/size);
  pop();
}
