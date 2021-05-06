class Board {
  int[][] board = new int[3][3];
  boolean turn = true;
  boolean gameOver = false;
  int layer;
  float xPos;
  float yPos;
  float size;

  Board() {
  }

  Board(float _x, float _y, float _s) {
    xPos = _x;
    yPos = _y;
    size = _s;
  }

  void display() {
    push();
    translate(xPos, yPos);
    fill(255);
    strokeWeight(size/50.0);
    rect(0, 0, size, size);
    noFill();
    line(0, size/3, size, size/3);
    line(0, 2 * size/3, size, 2 * size/3);
    line(size/3, 0, size/3, size);
    line(2 * size/3, 0, 2 * size/3, size);
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == 1) {
          drawX(size * (j/3.0), size * (i/3.0));
        } else if (board[i][j] == 2) {
          drawO(size * (j/3.0), size * (i/3.0));
        }
      }
    }
    pop();
  }

  void drawX(float x, float y) {
    line(x + size/15.0, y + size/15.0, x + size/3.0 - size/15.0, y + size/3.0 - size/15.0);
    line(x + size/15.0, y + size/3.0 - size/15.0, x + size/3.0 - size/15.0, y + size/15.0);
  }

  void drawO(float x, float y) {
    circle(x + size/6.0, y + size/6.0, (size/3.0) - (size/10.0));
  }

  Board playMove(int move, float x, float y, float s) {
    int count = 0;
    Board newBoard = new Board(x, y, s);
    newBoard.turn = !turn;
    newBoard.layer = layer + 1;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        newBoard.board[i][j] = board[i][j];
      }
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == 0) {
          if (move == count) {
            if (turn == true) {
              newBoard.board[i][j] = 1;
            } else {
              newBoard.board[i][j] = 2;
            }
          }
          count++;
        }
      }
    }
    return newBoard;
  }

  void getDescendantTree() {
    if (!checkGameOver()) {
      int count = 0;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (board[i][j] == 0)
            count++;
        }
      }
      for (int i = 0; i < count; i++) {
        Board newBoard = playMove(i, xPos + size, yPos + (i * size)/(float)count, (size/(float)count) - size/100.0);
        boards.add(newBoard);
        if (layer < 3)
          newBoard.getDescendantTree();
      }
    }
  }

  boolean checkGameOver() {
    gameOver = false;
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != 0)
        gameOver = true;
      if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != 0)
        gameOver = true;
    }
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0)
      gameOver = true;
    if (board[2][0] == board[1][1] && board[1][1] == board[0][2] && board[2][0] != 0)
      gameOver = true;
    return gameOver;
  }
}
