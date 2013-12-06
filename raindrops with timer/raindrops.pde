oly[] snow = new oly[500] ;
catcher a;
timer time;
int index;
int oldTime;

void setup() {
  size (displayWidth, displayHeight);
  for (int i = 0; i<snow.length;i++) {
    snow[i] = new oly();
  }
  a= new catcher();
  index = 0;
  oldTime=0;
  time = new timer();
}

void draw () {
  background (0, 0, 255);
  time.display();
  for (int i = 0;i<index;i++) {
    snow[i].display();
    snow[i].move();
    a.catchDrop(snow[i]);
  }
  if (millis()-oldTime >= 1000) {
    index++;
    oldTime=millis();
  }  
  a.display();
}

