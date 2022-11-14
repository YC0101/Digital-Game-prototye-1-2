class Player{
  float w,h,x, y, vx, vy;
  long invincibleTimer;
  
  float gravity;
  //boolean onGround;
  float jumpForce;
  
  //float halfw, halfh;
  ///String collisionSide;
  boolean stopcount;
  int hittime;
  
  Player(){
    w = 30;
    h = 35;
    x = 150;
    y = 200;
    vx = 0;
    vy = 0;
    //accelX = 0;
    //accelY = 0;
    hittime = 0;
    jumpForce = -2.9;
    stopcount = false;
    gravity = 1.2;
    invincibleTimer = 20;
  }
  
  float getTop(){
    return y;
  }
 
  float getBottom(){
    return (y+h);
  }
  
  float getLeft(){
    return x;
  }
  
  float getRight(){
    return (x+w);
  }
  
  void jump(){
    if(space){
      vy += jumpForce;
    }
  }
  
  void update(){
    vy += gravity;
    vy = 0.9*vy;
    y += vy;
    
    if(y > 330){
      y = 330;
      vy = 0;
    }
    if(y < 100){
      y = 100;
      vy = 0;
    }
    
    if(space){
      vy += jumpForce;
    }   
    if(stopcount){
      invincibleTimer--;
      if(invincibleTimer < 0){
        stopcount = false;
        invincibleTimer = 20;
      }
    }
  }
  
  void display(){
   fill(67,35,272,128);
   noStroke();
   
   rect(x,y,w,h);
  }
  
  void displayRed(){
   fill(255,0,0,128);
   noStroke();
   rect(x,y,w,h);
  }
}
