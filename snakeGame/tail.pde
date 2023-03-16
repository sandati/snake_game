ArrayList<Node> tail = new ArrayList<Node>();
ArrayList<Node> copyTail = new ArrayList<Node>();

void initTail() {
  int x = 600;
  int y = 400;
  
  for (int i = 0; i < 5; i++) {
    tail.add(new Node());
    tail.get(i).setPosition(x, y);
    copyTail.add(new Node());
    copyTail.get(i).setPosition(x, y);
    x -= 20;
  }
}

void colorTail() {
  for(int i = 0; i < tail.size(); i++) {
    if (i == 0) {
      tail.get(i).setColor(color(200, 200, 200));
    } else {
      tail.get(i).setColor(color(50, 50, 50));
    }
  }
}

void drawTail() {
  // tail.get(0).node(400, 800, color(200, 200, 200));
  for (int i = 0; i < tail.size(); i++) {
    // println("tail");
    tail.get(i).node();
  }
}
