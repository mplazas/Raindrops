//oly[] snow = new oly[500] ;
//catcher a;
//timer time;
//int index;
//int oldTime;
//int score;
//
//void setup() {
//  size (displayWidth, displayHeight);
//  for (int i = 0; i<snow.length;i++) {
//    snow[i] = new oly();
//  }
//  a= new catcher();
//  index = 0;
//  oldTime=0;
//  time = new timer();
//}
//
//void draw () {
//  background (0, 0, 255);
//  time.display();
//  text("Score:" + score, 100,50);
//  for (int i = 0;i<index;i++) {
//    snow[i].display();
//    snow[i].move();
//    a.catchDrop(snow[i]);
//  }
//  if (millis()-oldTime >= 1000) {
//    index++;
//    oldTime=millis();
//  }  
//  a.display();
//}

rainGame g1;
menu m1;
boolean gameStart;
void setup () {
  size (displayWidth, displayHeight);
  g1 = new rainGame();
  m1 = new menu();
  gameStart= false;
}

void draw () {

  background (159,190,222);
  if (gameStart) {
    g1.run();
  }
  else {
    m1.display();
  }
}
void mousePressed() {  
  if (dist((width/2)-250, 2*height/3, mouseX, mouseY) <= m1.w/2) {
    gameStart= true;
  }
}

