class catcher {
  int x;
  int y;
  int d;

  catcher () {
    d = 50;
    y = height-25;
  }

  void display() {
    x = mouseX;
    strokeWeight(1);
    stroke(0);
    fill(0);
    ellipse(x, y, d, d);

    stroke (0);
  }


  void catchDrop(oly drop) {
    if (dist(x, y, drop.x, drop.y) < d/2 + drop.d/2) { 
      drop.remove();
    }
  }
}
