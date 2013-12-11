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
//the raindrops themselves are being drawn
  }
  void move () {
    y+= 3;
// the raindrops are being moved down the screen three pixels each frame
  }
  void remove () {
    y=2*height;
//the raindrops are removed by offsetting their position to double the height of the screen, therefore they are not visible
  }
}

