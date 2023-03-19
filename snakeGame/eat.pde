void eatFood() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodX, foodY) == true) {
    f = 0;
    score += 1;
    growTail();
  }
}

void eatFoodSuper() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodSX, foodSY) == true) {
    fS = 0;
    foodSX = 0;
    foodSY = 0;
    tSuper.setTime(su);
    score += 10;
    for (int i = 0; i < 3; i++)
      growTail();
  }
}

void eatFoodSpeed() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodSpX, foodSpY) == true) {
    fSp = 0;
    foodSpX = 0;
    foodSpY = 0;
    tSpeed.setTime(sp);
    score += 1;
    if (speed > 0.01)
      speed -= 0.02;
  }
}

void eatFoodSlow() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodSlX, foodSlY) == true) {
    fSl = 0;
    foodSlX = 0;
    foodSlY = 0;
    tSlow.setTime(sl);
    score += 1;
    speed += 0.02;
  }
}

void eatFoodSuperGrow() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodGX, foodGY) == true) {
    fG = 0;
    foodGX = 0;
    foodGY = 0;
    tGrow.setTime(gr);
    score += 1;
    for (int i = 0; i < 10; i++)
      growTail();
  }
}

void eatFoodPoison() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodPX, foodPY) == true) {
    fP = 0;
    life = 1;
  }
}

void eatFoodShrink() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodShX, foodShY) == true) {
    fSh = 0;
    foodShX = 0;
    foodShY = 0;
    tShrink.setTime(sh);
    score += 1;
    for (int i = 0; i < 3; i++) {
      if (tail.size() > 1) {
        shrinkTail();
      } else {
        life = 1;
      }
    }
  }
}

void eatFoodColor() {
  if (hit(tail.get(0).posX, tail.get(0).posY, foodCX, foodCY) == true) {
    fC = 0;
    foodCX = 0;
    foodCY = 0;
    tSuper.setTime(su);
    score += 1;
    if (tClr == 0) {
      tClr = 1;
    } else {
      tClr = 0;
    }
  }
}

void eat() {
  eatFood();
  eatFoodSuper();
  eatFoodSpeed();
  eatFoodSlow();
  eatFoodSuperGrow();
  eatFoodShrink();
  eatFoodPoison();
  eatFoodColor();
}
