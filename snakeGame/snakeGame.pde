int mode;
int score = 0;
int life = 0;
int pause = 1;
int restart = 1;
int speed = 20;

void setup() {
  mode = 0;
  size(1200, 800); 
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
}
