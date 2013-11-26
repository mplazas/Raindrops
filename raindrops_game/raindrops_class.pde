class oly {
  int headX; 
  int headY;
  color c;

  oly () {
    headX = int (random(1, width-1));
    headY = int (random(1, height-1));
    c = color(random(255), random(255), random(255));
  }

  void display() {

    strokeWeight(1);
    stroke(c);
    fill(255);
    ellipse(headX, headY-110, 8, 8);

    stroke (0);
  }
  void move () {
    headY+= 1;
    if (headY>=height) {
      headY=int(random(1,5));
    }
  }
}

