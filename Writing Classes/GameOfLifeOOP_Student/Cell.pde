class Cell {
  int state;
  int previous;
  int xPos;
  int yPos;
  int size;

  Cell(int _x, int _y, int _s) {
    xPos = _x;
    yPos = _y;
    size = _s;
    state = (int) random(2);
    previous = state;
  }

  void display() {
    if (previous < state) {
      fill(0, 0, 255);
      rect(xPos, yPos, size, size);
    } else if (previous > state) {
      fill(255, 0, 0);
      rect(xPos, yPos, size, size);
    } else if (state + previous > 1) {
      fill(0);
      rect(xPos, yPos, size, size);
    } else if (state + previous < 1) {
      fill(255);
      rect(xPos, yPos, size, size);
    }
  }

  void savePrevious() {
    previous = state;
  }

  void newState(int n) {
    state = n;
  }
}
