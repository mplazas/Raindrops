//this will display at the beginning of the programming (it is a start screen)
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
// the title of the game is displayed on the screen    
    fill(255);
    rectMode(CENTER);
    rect((width/2)-250, 2*height/3, w, h);
    rect((width/2)+250, 2*height/3, w, h );
    textAlign(CENTER);
    fill(0);
    text ("start game", (width/2)-250, 2*height/3) ;
    text ("instructions", (width/2)+250, 2*height/3);
//two potential buttons are drawn
//one nbutton will start the game when clicked on
//the other button will acces a list of instructions for the raindrop game

  }
}

