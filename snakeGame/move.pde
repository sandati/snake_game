//int sp = speed;

void copyPosTail() {
  for(int i = 0; i < tail.size(); i++) {
      copyTail.get(i).posX = tail.get(i).posX;
      copyTail.get(i).posY = tail.get(i).posY;
  }
}

void move() {
  boolean wall = collision();
  int j = 0;
  int x = 20 * velX;
  int y = 20 * velY;
  if (wall == false && start == 1) {
    tail.get(0).posX += velX + x;
    tail.get(0).posY += velY + y;
    for (int i = 1; i < tail.size(); i++) {
      tail.get(i).posX = copyTail.get(j).posX;
      tail.get(i).posY = copyTail.get(j).posY;
      j++;
    }
    
  }
  copyPosTail();
  time.setTime(speed);
  //if (speed == offset)
    //speed = sp;
}
