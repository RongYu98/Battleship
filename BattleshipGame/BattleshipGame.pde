PImage img;
Ship Player;
void setup() {
  size(1800, 1000);
  Player = new Ship(200,300);
  //img = loadImage("HELLHOUND.png"); //200-100
  //img = loadImage("Battleship1.png"); //300-100
}
void draw() {
  background(255);
  Player.update();
}
void keyPressed(){
 if (key == 'w'){ //w
   Player.yvel-=.1;
 } else if (key == 'a'){ // a
   Player.xvel -= .1;
 } else if (key == 's'){ //s
   Player.yvel+=.1;
 } else if (key == 'd'){ //d
   Player.xvel+=.1;
 }
}

