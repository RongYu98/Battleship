class battleship{
 PImage img;
 float x=0;
 float y=200;
 
 void setup(){
   img = loadImage("Battleship1.png"); //300-100
   size(1800, 1000);
 }
 
 void draw(){
   image(img,x,y,300,75);
 }

 void keyPressed(){
   if (key == 119){ //w
     y+=5;
   } else if (key == 65){ // a
     x-=5;
   } else if (key == 83){ //s
     y-=5;
   } else if (key == 68){ //d
     x+=5;
   }
 }
} 
  
