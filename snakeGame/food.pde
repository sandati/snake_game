int foodX, foodY, f = 0;
int foodSX, foodSY, fS = 0;
int foodSpX, foodSpY, fSp = 0;
int foodSlX, foodSlY, fSl = 0;
int foodGX, foodGY, fG = 0;
int foodShX, foodShY, fSh = 0;
int foodPX, foodPY, fP = 0;
int foodCX, foodCY, fC, tClr = 0;

Timer tSpeed = new Timer(18);
Timer tSlow = new Timer(16);
Timer tSuper = new Timer(20);
Timer tGrow = new Timer(23);
Timer tShrink = new Timer(27);
Timer tPoison = new Timer(35);
Timer tColor = new Timer(30);

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
  float time = tSuper.getTime();
  
  tSuper.countDown();
  if (fS == 0 && time <= 0.0) {
    fS = 1;
    tSuper.setTime(10);
  }
  if (fS == 1) {
    foodSX = int(random(20, 1161));
    foodSY = int(random(20, 761));
    fS = 2;
  }
  if (fS == 2) {
    node(foodSX, foodSY, color(255, 255, 0));
    time = tSuper.getTime();
  }
  if (fS == 2 && time <= 0.0) {
    foodSX = 0;
    foodSY = 0;
    fS = 0;
    tSuper.setTime(20);
  }
}

// grow (3)
void foodSuperGrow() {
  float time = tGrow.getTime();
  
  tGrow.countDown();
  if (fG == 0 && time <= 0.0) {
    fG = 1;
    tGrow.setTime(10);
  }
  if (fG == 1) {
    foodGX = int(random(20, 1161));
    foodGY = int(random(20, 761));
    fG = 2;
  }
  if (fG == 2) {
    node(foodGX, foodGY, color(255, 120, 0));
    time = tGrow.getTime();
  }
  if (fG == 2 && time <= 0.0) {
    foodGX = 0;
    foodGY = 0;
    fG = 0;
    tGrow.setTime(23);
  }
}

// shrink (4)
void foodShrink() {
  float time = tShrink.getTime();
  
  tShrink.countDown();
  if (fSh == 0 && time <= 0.0) {
    fSh = 1;
    tShrink.setTime(10);
  }
  if (fSh == 1) {
    foodShX = int(random(20, 1161));
    foodShY = int(random(20, 761));
    fSh = 2;
  }
  if (fSh == 2) {
    node(foodShX, foodShY, color(0, 0, 255));
    time = tShrink.getTime();
  }
  if (fSh == 2 && time <= 0.0) {
    foodShX = 0;
    foodShY = 0;
    fSh = 0;
    tShrink.setTime(27);
  }
}

// change color (5)
void foodColor() {
  float time = tColor.getTime();
  
  tColor.countDown();
  if (fC == 0 && time <= 0.0) {
    fC = 1;
    tColor.setTime(10);
  }
  if (fC == 1) {
    foodCX = int(random(20, 1161));
    foodCY = int(random(20, 761));
    fC = 2;
  }
  if (fC == 2) {
    nodeColor(foodCX, foodCY);
    time = tColor.getTime();
  }
  if (fC == 2 && time <= 0.0) {
    foodCX = 0;
    foodCY = 0;
    fC = 0;
    tColor.setTime(30);
  }
}

// dead (6)
void foodPoison() {
  float time = tPoison.getTime();
  
  tPoison.countDown();
  if (fP == 0 && time <= 0.0) {
    fP = 1;
    tPoison.setTime(10);
  }
  if (fP == 1) {
    foodPX = int(random(20, 1161));
    foodPY = int(random(20, 761));
    fP = 2;
  }
  if (fP == 2) {
    node(foodPX, foodPY, color(255, 0, 0));
    time = tPoison.getTime();
  }
  if (fP == 2 && time <= 0.0) {
    foodPX = 0;
    foodPY = 0;
    fP = 0;
    tPoison.setTime(35);
  }
}

// speed (7)
void foodSpeed() {
  float time = tSpeed.getTime();
 
  tSpeed.countDown();
  if (fSp == 0 && time <= 0.0) {
    tSpeed.setTime(10);
    fSp = 1;
  }
  if (fSp == 1) {
    foodSpX = int(random(20, 1161));
    foodSpY = int(random(20, 761));
    fSp = 2;
  }
  if (fSp == 2) {
    node(foodSpX, foodSpY, color(0, 255, 0));
    time = tSpeed.getTime();
  }
  if (fSp == 2 && time <= 0.0) {
    foodSpX = 0;
    foodSpY = 0;
    fSp = 0;
    tSpeed.setTime(18);
  }
}

// slow (8)
void foodSlow() {
  float time = tSlow.getTime();
 
  tSlow.countDown();
  if (fSl == 0 && time <= 0.0) {
    tSlow.setTime(10);
    fSl = 1;
  }
  if (fSl == 1) {
    foodSlX = int(random(20, 1161));
    foodSlY = int(random(20, 761));
    fSl = 2;
  }
  if (fSl == 2) {
    node(foodSlX, foodSlY, color(16, 777, 216));
    time = tSlow.getTime();
  }
  if (fSl == 2 && time <= 0.0) {
    foodSlX = 0;
    foodSlY = 0;
    fSl = 0;
    tSlow.setTime(16);
  }
}
