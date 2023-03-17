class Timer {
  float time;

  Timer(float t) {
    time = t;
  }

  float getTime() {
    return time;
  }

  void setTime(float t) {
    time = t;
  }

  void countUp() {
    time += 1 / frameRate;
  }

  void countDown() {
    time -= 1 / frameRate;
  }
}
