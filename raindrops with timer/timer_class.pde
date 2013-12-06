class timer {
  timer () {

    textAlign (CENTER);
    textSize(50);
  }

  void display() {
    text(millis()/1000, width/2, height/2);
  }
}
