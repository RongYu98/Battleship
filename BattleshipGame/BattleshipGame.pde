PImage img;
float xcor=0;
float ycor=200;
battleship myShip;
void setup() {
  size(1800, 1000);
  //myShip = new battleship();
  //img = loadImage("HELLHOUND.png"); //200-100
  img = loadImage("Battleship1.png"); //300-100
}
void draw() {
  background(255);
  // Draw the image to the screen at coordinate (0,0)
  
  image(img,xcor,ycor,300,75);}/*
  if (mousePressed) {
    if (xcor<mouseX){
      xcor+=1;}
    else {xcor-=1;}
    if (ycor<mouseY){
      ycor+=1;}
    else {ycor-=1;}
  }*/
   void keyPressed(){
   if (key == 119){ //w
     ycor-=.5;
   } else if (key == 97){ // a
     xcor-=5;
   } else if (key == 115){ //s
     ycor+=5;
   } else if (key == 100){ //d
     xcor+=5;
   }
 }

