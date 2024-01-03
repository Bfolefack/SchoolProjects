import java.util.*;

  String alphabet = "abcdefghijklmnopqrstuvwyz";
  ArrayList<Character> characters = new ArrayList<Character>();
  boolean stopped = false;
  char letter = 'a';
  int time = 0;
  
  
void setup() {
    fullScreen();
    alphabet = alphabet.toUpperCase();
    for (char c : alphabet.toCharArray())
      characters.add(c); 
    frameRate(30);
 }
 
 char getLetter(){
    Collections.shuffle(characters);
    char c = characters.get(0); 
    characters.remove(0); 
    return c;
 }
 
 void draw(){
   background(0);
   textAlign(CENTER, CENTER);
   textSize(500);
   if(characters.size() == 0)
     text("FIN", width/2, height/2);
   else{
     if(!stopped)
     text(characters.get((int)(random(characters.size()))), width/2, height/2);
    else
     text(letter, width/2, height/2);
   }
   if(time > 0 && frameCount % 30 == 0)
     time--;
   textSize(100);
   text((time / 60) + ":" +((time % 60)/10 > 0 ? time % 60 : "0" + (time % 60)), width/2, 100);
   text((26 - characters.size()) + "/26", width/2, height - 100);
 }
 
 void keyPressed(){
   if(key == ' '){
      stopped = !stopped; 
      if(stopped){
         letter = getLetter(); 
         time = 120;
      }
   }
 }
