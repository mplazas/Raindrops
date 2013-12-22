class timer {
  int score;
  timer () {
    score=0;

    textAlign (CENTER);
    textSize(50);
  }

  void display() {
    fill(255);
    text("Time:" + millis()/1000, width-150, 100);
    // the timer displays the time thats passes in seconds
  }
}

