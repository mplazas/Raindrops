oly[] snow = new oly[500] ;
catcher a;
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
}

void draw () {
  background (0, 0, 255);
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
  //    a.sCatch();
}

