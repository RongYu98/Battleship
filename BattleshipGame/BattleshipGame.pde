PImage img;
Ship Player;
//Bullet[] Bullets = new Bullet[1];
Bullet B;

void setup() {
  size(1800, 1000);
  Player = new Ship(200,300);
  B = new Bullet(0,0,0,0);
  //img = loadImage("HELLHOUND.png"); //200-100
  //img = loadImage("Battleship1.png"); //300-100
}
void draw() {
  background(255);
  Player.update();
  B.update();
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
void mousePressed(){
  float angle = atan((mouseY-Player.ycor) / (mouseX-Player.xcor));
  if (mouseX > Player.xcor){
    B.Begin(Player.xcor,Player.ycor,10*cos(angle),10*sin(angle));
  } else {
    B.Begin(Player.xcor,Player.ycor,-10*cos(angle),-10*sin(angle));
  } 
}
