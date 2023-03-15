void menu() {
  fill(250);
  textSize(100);
  text("Snake game", 350, 100);
  
  textSize(40);
  text("Press 'enter' to start the game", 370, 360);
  text("Press 'escape' to quit the game", 360, 410);
  
  // snake
  fill(60);
  noStroke();
  rect(360, 600, 500, 20);
  fill(100);
  noStroke();
  rect(860, 600, 20, 20);
}
