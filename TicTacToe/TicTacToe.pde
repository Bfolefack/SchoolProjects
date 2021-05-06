ArrayList<Board> boards = new ArrayList<Board>();
Board orig = new Board(4 - 900, 50, 900);

void setup() {
  size(6000, 48000);
  //boards.add(orig);
  orig = new Board(-(height - 100) + 2, 50, height - 100);
  orig.getDescendantTree();
}

void draw() {
  int count = 0;
  for (Board b : boards) {
    b.display();
    count++;
  }
  println(count);
  save("TicTacToe" + width + "x" + height + ".png");
  exit();
}
