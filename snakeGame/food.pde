int foodX, foodY, f = 0;

Timer tSpeed = new Timer(10);

// add 1 to score (1)
void food() {
  if (f == 0) {
    foodX = int(random(20, 1161));
    foodY = int(random(20, 761));
    f = 1;
  }
  node(foodX, foodY, color(255));
}

// add 10 to score (2)
void foodSuper() {
  
}

// grow (3)
void foodSuperGrow() {
  
}

// shrink (4)
void foodShrink() {
  
}

// change color (5)
void foodColor() {
  
}

// dead (6)
void foodPoison() {
  
}

// speed (7)
void foodSpeed() {
  float time = tSpeed.getTime();
 
  tSpeed.countDown();
  if (time <= 0.0) {
    tSpeed.setTime(10); 
  }
}

// slow (8)
void foodSlow() {
  
}
