class oly {
  int x; 
  int y;
  color c;
  int d;

  oly () {
    x = int (random(1, width-1));
    y = 0;
    c = color(random(255), random(255), random(255));
    d = 8;
  }

  void display() {

    strokeWeight(1);
    stroke(c);
    fill(255);
    ellipse(x, y, d, d);

    stroke (0);
  }
  void move () {
    y+= 1;
  }
  void remove () {
    y=2*height;
  }
}

