class Ship{

  PImage img;
  float xvel,yvel,xcor,ycor;
  
  Ship(int x, int y){
    xcor = x;
    ycor = y;
    xvel = 0;
    yvel  = 0;
    img = loadImage("Battleship1.png");
  }
  
  void update(){
    if (xvel > 2){
      xvel = 2;
    } else if (xvel < -2){
      xvel = -2;
    }
    if (yvel > 2){
     yvel = 2;
    } else if (yvel < -2){
      yvel = -2;
    }
    friction();
    xcor += xvel;
    ycor += yvel;
    image(img,xcor,ycor,150,37);
  }
  
  void friction(){
    if (xvel < 0){
      xvel +=.01;
    } else if (xvel != 0){
      xvel -= .01;
    }
    if (yvel < 0){
      yvel += .01;
    } else if (yvel !=0) {
      yvel -=.01;
    }
  }
}
