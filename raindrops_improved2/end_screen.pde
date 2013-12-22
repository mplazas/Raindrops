class endScreen {
  PImage lose;
  endScreen () {
    lose = loadImage("stuck.jpg");
  }

  void display () {
    background (204, 226, 229);
    fill(0);
    text("LOOKS LIKE YOU'RE STUCK!", width/2, height/5);
    imageMode(CENTER);
    image (lose, width/2, height/2);
  }
}

