oly[] snow = new oly[500] ;
catcher a;
void setup() {
  size (displayWidth, displayHeight);
  for (int i = 0; i<snow.length;i++) {
    snow[i] = new oly();
  }
  a= new catcher();
}

void draw () {
  background (118, 118, 118);
  for (int i = 0;i<snow.length;i++) {
    snow[i].display();
    snow[i].move();
  }
  a.display();
  a.sCatch();
}
