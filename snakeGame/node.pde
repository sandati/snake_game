void node(int x, int y, color colour) {
  fill(colour);
  noStroke();
  rect(x, y, 20, 20);
}

void nodeColor(int x, int y) {
  noStroke();

  fill(255, 0, 0);
  rect(x, y, 20, 20);

  fill(0, 255, 0);
  rect(x + 4, y + 4, 12, 12);

  fill(255, 255, 0);
  rect(x + 8, y + 8, 4, 4);
}

class Node {
  int posX = 0;
  int posY = 0;
  color colour;

  Node() {
    posX = 0;
    posY = 0;
    colour = color(0);
  }

  void node() {
    fill(colour);
    noStroke();
    rect(posX, posY, 20, 20);
  }

  void setPosition(int x, int y) {
    posX = x;
    posY = y;
  }

  void setColor(color clr){
    colour = clr;
  }
}
