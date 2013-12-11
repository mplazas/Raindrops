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
    // the object that will be catching the raindrops is drawn
  }


  void catchDrop(oly drop, timer t) {
    if (dist(x, y, drop.x, drop.y) < d/2 + drop.d/2) { 
      drop.remove();
      t.score+=1;
      // if the raindrop is touching the catcher, then catcher will remove the raindrop off of the screen
      // refer to "score_class" for more information about how the raindrop is removed 
      // if the raindrop is touching the catcher, then 1 point will be added to the score
      // refer to "timer_class" for more infromation on how the score is kept
    }
  }
}

