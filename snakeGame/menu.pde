void sentence(String text, int x, int y) {
   fill(250);
   textSize(30);
   text(text, x, y);
}

void optionFood() {
  // food (1)
  node(350, 250, color(255));
  sentence("Food", 390, 270);
  
  // super food (2)
  node(350, 290, color(255, 255, 0));
  sentence("Super Food", 390, 310);
  
  // speed food (3)
  node(350, 330, color(0, 255, 0));
  sentence("Speed Food", 390, 350);
  
  // slow food (4)
  node(350, 370, color(16, 777, 216));
  sentence("Slow Food", 390, 390);
  
  // super grow food
  node(600, 250, color(255, 120, 0));
  sentence("Super Grow Food", 640, 270);
  
  // shrink food
  node(600, 290, color(0, 0, 255));
  sentence("Shrink Food", 640, 310);
  
  // poison food
  node(600, 330, color(255, 0, 0));
  sentence("Poison Food", 640, 350);
  
  // color food
  nodeColor(600, 370);
  sentence("Color Food", 640, 390);
}

void menu() {
  fill(250);
  textSize(100);
  text("Snake game", 350, 100);
  
  optionFood();
  
  // instruction
  textSize(40);
  text("Press 'enter' to start the game", 370, 560);
  text("Press 'escape' to quit the game", 360, 610);
  
  // snake
  fill(50, 50, 50);
  noStroke();
  rect(360, 700, 500, 20);
  fill(200, 200, 200);
  noStroke();
  rect(860, 700, 20, 20);
}
