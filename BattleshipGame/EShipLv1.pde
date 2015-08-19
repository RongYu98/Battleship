class EShipLv1{
  
 boolean visible = true;
 float x,y,xv,yv;
 PImage img;

 EShipLv1(int X, int Y){
    x = X;
    y = Y;
    xv = random(1)*10;
    yv  = random(1)*10;
    img = loadImage("BattleshipLv1.png");
  } 
  
  void RanSpawn(){
    visible = true;
    x = random(1) * 900;
    y = random(1) * 500;
    //xv = random(1)*10;
    xv = 1;
    yv = 1;
    //yv = random(1)*10;
  }
  
  void friction(){
    if (xv < 0){
      xv +=.01;
    } else if (xv != 0){
      xv -= .01;
    }
    if (yv < 0){
      yv += .01;
    } else if (yv !=0) {
      yv -=.01;
    }
  }
  
  void update(){
    //if (visible){
    if (xv > 2){
      xv = 2;
    } else if (xv < -2){
      xv = -2;
    }
    if (yv > 2){
     yv = 2;
    } else if (yv < -2){
      yv = -2;
    }
    //friction();
    x += xv;
    y += yv;
    image(img,x,y,150,37);
  }
  //}
  
}
