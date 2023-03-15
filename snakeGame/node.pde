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
