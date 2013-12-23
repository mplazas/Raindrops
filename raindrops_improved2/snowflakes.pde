class oly {
  int x; 
  int y;
  int d;
  int ySpeed;
  PImage snow;

  oly () {
    x = int (random(1, 1279));
    y = 0;
    d = 25;
    ySpeed=3;
    snow = loadImage("snowflake.png") ;
    //snowflakes are being displayed
  }

  void display() {

    image(snow, x, y,d,d);
    //    ellipse(x, y, d, d);
    //the snowflakes themselves are being drawn
  }
  void move () {
    y+= ySpeed;
    // the snowflakes are being moved down the screen three pixels each frame
  }
  void remove () {
    y=-2*height;
    ySpeed=0;

    //the snowflakes are removed by offsetting their position to double the height of the screen, therefore they are not visible
  }
}

