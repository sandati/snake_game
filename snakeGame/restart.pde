void restartGame() {
  tail.clear();
  copyTail.clear();
  score = 0;
  life = 0;
  pause = 1;
  restart = 1;
  speed = 0.1;
  velX = 0;
  velY = 0;
  back = 0;
  initTail();
  start = 0;
  time.setTime(speed);
}
