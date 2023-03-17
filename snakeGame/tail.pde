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
      if (tClr == 0) {
        tail.get(i).setColor(color(50, 50, 50));
      } else {
        tail.get(i).setColor(color(random(255), random(255), random(255)));
      }
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

void growTail() {
  int s = tail.size();
  int x = tail.get(s - 1).posX - (velX * 20);
  int y = tail.get(s - 1).posY - (velY * 20);
 
  tail.add(new Node());
  tail.get(s).setPosition(x, y);
  copyTail.add(new Node());
  copyTail.get(s).setPosition(x, y);
}

void shrinkTail() {
  int s = tail.size() - 1;
  
  tail.remove(s);
  copyTail.remove(s);
}
