class timer {
  int score;
  timer () {
    score=0;

    textAlign (CENTER);
    textSize(50);
  }

  void display() {
    text("Time:" + millis()/1000, width-150, 50);
// the timer displays the time thats passes in seconds
  }
}
