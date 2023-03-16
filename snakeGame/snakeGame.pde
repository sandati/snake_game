int mode;
int score = 0;
int life = 0;
int pause = 1;
int restart = 1;
int speed = 10;
int offset = 5;
int velX = 0;
int velY = 0;
int back = 0;
int start = 0;

void setup() {
  mode = 0;
  size(1200, 800); 
  initTail();
  background(100, 110, 230);
}

void draw() {
  background(100, 110, 230); // to clear
  if (mode == 0) {
    menu();
  }
  if (mode == 1) {
    game();
  }
  if (speed > offset)
    speed--;
  //clear();
}

void keyPressed() {
  if (keyCode == ENTER) {
    mode = 1;
  }
  if (key == 'm' || key == 'M') {
    mode = 0;
  }
  if (key == 'p' || key == 'P') {
    pause *= -1;
  }
  if (key == 'r' || key == 'R') {
    restart = 2;
  }
  if (keyCode == UP && back != 1) {
    velX = 0;
    velY = -1;
    back = 1;
    start = 1;
  }
  if (keyCode == DOWN && back != 1) {
    velX = 0;
    velY = 1;
    back = 1;
    start = 1;
  }
  if (keyCode == LEFT && back == 1) {
    velX = -1;
    velY = 0;
    back = 2;
    start = 1;
  }
  if (keyCode == RIGHT && back != 2) {
    velX = 1;
    velY = 0;
    back = 2;
    start = 1;
  }
}
