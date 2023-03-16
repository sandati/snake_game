int s = speed;

void copyPosTail() {
  for(int i = 0; i < tail.size(); i++) {
      copyTail.get(i).posX = tail.get(i).posX;
      copyTail.get(i).posY = tail.get(i).posY;
  }
}

void move() {
  boolean wall = collision();
  int j = 0;
  int x = 15 * velX;
  int y = 15 * velY;
  if (wall == false && start == 1) {
    tail.get(0).posX += (velX * speed) + x;
    tail.get(0).posY += (velY * speed) + y;
    for (int i = 1; i < tail.size(); i++) {
      tail.get(i).posX = copyTail.get(j).posX;
      tail.get(i).posY = copyTail.get(j).posY;
      j++;
    }
    
  }
  copyPosTail();
  if (speed == offset)
    speed = s;
}
