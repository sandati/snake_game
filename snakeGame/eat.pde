void eatFood() {
  int s = tail.size();
  int x = tail.get(s - 1).posX - (velX * 20);
  int y = tail.get(s - 1).posY - (velY * 20);
  
  if (hit(tail.get(0).posX, tail.get(0).posY, foodX, foodY) == true) {
    f = 0;
    score += 1; 
    tail.add(new Node());
    tail.get(s).setPosition(x, y);
    copyTail.add(new Node());
    copyTail.get(s).setPosition(x, y);
  }
}

void eat() {
  eatFood();
}
