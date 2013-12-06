class scoreKeeper {
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
     
