void grill() {
  fill(0, 0, 0, 0);
  stroke(255);
  strokeWeight(20);
  rect(10, 10, 1180, 780);
}

void header() {
  fill(255);
  textSize(25);
  text("Score: " + score, 40, 60);
  text("Press 'p' to go to the menu", 880, 60);
  text("Press 'r' to restart the game", 880, 100);
}

void game() {
  node(300, 100, color(60, 65, 177, 255));
  
  grill();
  
  header();
}
