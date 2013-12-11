class rainGame {
  oly[] snow = new oly[500] ;
  catcher a;
  timer time;
  int index;
  int oldTime;
  int score;

  rainGame ( ) {

    for (int i = 0; i<snow.length;i++) {
      snow[i] = new oly();
    }
    a= new catcher();
    index = 0;
    oldTime=0;
    time = new timer();
  }

  void run () {

    time.display();
    // the timer is displayed during the game
    text("Score:" + time.score, 100, 50);
    // the score is displayed during the game
    for (int i = 0;i<index;i++) {
      snow[i].display();
      snow[i].move();
      a.catchDrop(snow[i], time);
    }
    if (millis()-oldTime >= 1000) {
      index++;
      oldTime=millis();
    }  
//    if (snow.y>=height && snow.y <=height*2) {
//      background(0);
//    }
    //after every 1000 milliseconds (approximately) more raindrops will fall
    a.display();
    //the cathcer is displayed during the game
  }
}

