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
  text("Press 'm' to go to the menu", 880, 60);
  text("Press 'r' to restart the game", 880, 100);
  text("Press 'p' to pause the game", 880, 140);
}

void pauseGame() {
  if (pause == -1) {
    fill(200);
    textSize(100);
    text("PAUSE", 470, 450);
  }
}

void gameOver() {
  fill(255, 0, 0);
  textSize(100);
  text("GAME OVER", 370, 450);
}

void allFood() {
  food();
}

void game() {
  allFood();
 
  if (restart == 2)
    restartGame();

  if (life == 0) {
    if (pause == 1) {
      eat();
      if (frameCount % speed == 0) {
        move();
        offset = frameCount;
      }
      colorTail();
    }
  } else {
    gameOver();
  }
  
  drawTail();
  
  pauseGame();
  
  grill();
  
  header();
}
