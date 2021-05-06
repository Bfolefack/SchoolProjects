class Team {
  ArrayList<String> names;
  color c;
  boolean whiteText;
  PVector pos;
  Team() {
    pos = new PVector(0, 0);
    names = new ArrayList<String>();
    c = color(random(255), random(255), random(255));
    whiteText = brightness(c) < 255/2;
  }

  void addName(String s) {
    names.add(s);
  }

  void display(float size) {
    int count = 0;
    fill(c);
    ellipse(pos.x,pos.y, size * 2, size);
    if (whiteText) {
      fill(255);
    } else { 
      fill(0);
    }
    textSize((size/3)/(1 + names.size()));
    for (String s : names) {
      text(s, pos.x,pos.y + (count) * ((size/1.5)/(1 + names.size())));
      count++;
    }
  }
}
