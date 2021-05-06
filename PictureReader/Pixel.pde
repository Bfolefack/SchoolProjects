public class Pixel{
  int x, y;
  color c;
  
  Pixel(String s){
    String xStr, yStr, rStr, gStr, bStr;
    
    xStr = "";
    for(int i = 0; i < s.length(); i++){
      if(s.charAt(i) != ' '){
        xStr += s.charAt(i);
        continue;
      }
      s = s.substring(i + 1, s.length());
      break;
    }
    
    yStr = "";
    for(int i = 0; i < s.length(); i++){
      if(s.charAt(i) != ' '){
        yStr += s.charAt(i);
        continue;
      }
      s = s.substring(i + 1, s.length());
      break;
    }
    
    rStr = "";
    for(int i = 0; i < s.length(); i++){
      if(s.charAt(i) != ' '){
        rStr += s.charAt(i);
        continue;
      }
      s = s.substring(i + 1, s.length());
      break;
    }
    
    gStr = "";
    for(int i = 0; i < s.length(); i++){
      if(s.charAt(i) != ' '){
        gStr += s.charAt(i);
        continue;
      }
      s = s.substring(i + 1, s.length());
      break;
    }
    
    bStr = "";
    for(int i = 0; i < s.length(); i++){
      if(s.charAt(i) != ' '){
        bStr += s.charAt(i);
        continue;
      }
      s = s.substring(i + 1, s.length());
      break;
    }
    
    x = parseInt(xStr);
    y = parseInt(yStr);
    c = color(parseFloat(rStr), parseFloat(gStr), parseFloat(bStr));
  }
  
  void display(){
    strokeWeight(1);
    stroke(c);
    point(x, y);
  }
}
