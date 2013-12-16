class oly {
  int x; 
  int y;
  color c;
  int d;
  int ySpeed;

  oly () {
    x = int (random(1, width-1));
    y = 0;
    c = color(random(255), random(255), random(255));
    d = 8;
    ySpeed=3;
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
    y+= ySpeed;
    // the raindrops are being moved down the screen three pixels each frame
//    if (y >= height) {
//      y = 0;
//      x= int(random (1, width-1));
//    }
  }
  void remove () {
    y=-2*height;
    ySpeed=0;

    //the raindrops are removed by offsetting their position to double the height of the screen, therefore they are not visible
  }
}

