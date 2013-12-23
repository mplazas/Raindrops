rainGame g1;
menu m1;
instructions n1;
boolean gameStart;
boolean inst;
PImage blizzard;

void setup () {

  g1 = new rainGame();
  m1 = new menu();
  n1 = new instructions();
  gameStart= false;
  inst= false;
  blizzard = loadImage("snow background.jpg");
  size (blizzard.width, blizzard.height);
}
// gamestart is false because there will be a start menu, there you will have the option to start a "rainGame"

void draw () {

  background (blizzard);
  if (inst) {
    n1.display();
  }
  else if (gameStart) {
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
    // refer to "rainGame_class" for more information about the raindrop game
  }
  if (dist((width/2)+250, 2*height/3, mouseX, mouseY) <= m1.w/2) {
    inst=true;
     // if the mouse is clicked within bounds of the instructions button, the instructions will be shown
    // refer to "instructions" for more information about the raindrop game
  }
}
