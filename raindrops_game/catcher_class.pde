class catcher {
  int x; 
  int y;

  catcher () {
    x = mouseX;
    y = height-25;
  }

  void display() {

    strokeWeight(1);
    stroke(0);
    fill(0);
    ellipse(x, y, 50, 50);

    stroke (0);
  }
  void sCatch () {
    for (int i = 0;i<snow.length;i++) {
      if (snow[i].x >= x-25 && snow[i].x < x+25 && snow[i].y >= y) {
        snow[i].x =y;
      }
    }
  }

