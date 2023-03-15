int mode;
int score = 0;

void setup() {
  mode = 0;
  size(1200, 800); 
  background(0,50,100);
}

void draw() {
  background(0,50,100); // to clear
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
  if (key == 'p' || key == 'P') {
    mode = 0;
  }
}
