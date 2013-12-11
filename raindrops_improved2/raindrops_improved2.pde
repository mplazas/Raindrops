rainGame g1;
menu m1;
boolean gameStart;

void setup () {
  size (displayWidth, displayHeight);
  g1 = new rainGame();
  m1 = new menu();
  gameStart= false;
}
// gamestart is false because there will be a start menu, there you will have the option to start a "rainGame"

void draw () {

  background (159,190,222);
  if (gameStart) {
    g1.run();
  }
  else {
    m1.display();
  }
// if gameStart is true then the rainGame will start, if it is false (as it is as the beginning) then the start menu will display
// refer to "game_menu" for more information about the start menu
}
void mousePressed() {  
  if (dist((width/2)-250, 2*height/3, mouseX, mouseY) <= m1.w/2) {
    gameStart= true;
// if the mouse is clicked within bounds of the start button, the game will start
// refer to "score_class" for more information about the raindrop game
  }
}

