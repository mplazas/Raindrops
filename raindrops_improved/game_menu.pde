class menu {
  int w;
  int h;

  menu () {
    h=400;
    w=400;
  }

  void display () {
    background (47, 124, 203);
    fill (0);
    text ("Raindrop Frenzy", width/2, height/3);
    fill(255);
    rectMode(CENTER);
    rect((width/2)-250, 2*height/3, w, h);
    rect((width/2)+250, 2*height/3, w, h );
    textAlign(CENTER);
    fill(0);
    text ("start game", (width/2)-250, 2*height/3) ;
    text ("instructions", (width/2)+250, 2*height/3);
  }
}

