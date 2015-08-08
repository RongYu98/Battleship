class Bullet{

 PImage img;
 float x,y,xv,yv;
 boolean visible=true;
 
 Bullet(float X, float Y,float XV, float YV){
   x=X;
   y=Y;
   xv=XV;
   yv=YV;
   img = loadImage("Sphere.png");
   visible = true;
 }

 void Begin(float X, float Y,float XV, float YV){
   x=X;
   y=Y;
   xv=XV;
   yv=YV;
   image(img,x,y,30,30);
   visible = true;
 }
  
 void update(){
   if (visible){
     x+=xv;
     y+=yv;
     image(img,x,y,10,10);
   }
 }
  
}
