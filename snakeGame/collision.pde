boolean collision() {
  boolean ret = false;
  if (tail.isEmpty() == false) {
    Node node = tail.get(0);
    if (node.posX <= 19 || node.posY <= 19) {
      ret = true;
    }
    if (node.posX >= 1161 || node.posY >= 761) {
      ret = true;
    }
  }
  for (int i = 1; i < tail.size(); i++) {
    if (tail.get(0).posX == tail.get(i).posX && tail.get(0).posY == tail.get(i).posY) {
      life = 1;
      return true;
    }
  }
  if (ret == true)
    life = 1;
  return ret;
}

boolean hit(int x, int y, int pX, int pY) {
  if (x + 20 > pX && y + 20 > pY && x - 14 < pX + 14 && y - 14 < pY + 14)
    return true;
  return false;
}
