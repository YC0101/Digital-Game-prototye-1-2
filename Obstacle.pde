class Obstacle{
  float w,h,x,y,speed;
  boolean warning;

  
  Obstacle(){
    w = 30;
    h = 50;
    x = 800;
    y = 355;
    speed = 3;
    warning = false;

  }
  
  void display(){
    fill(5);
    if (warning){
      fill(100,100,0);
    }
    noStroke();
    rect(x,315,w,h);
    rect(x,100,w,h);
  }  
  
  boolean hits(Player p){
    if (( (p.getRight()) >= x) && (p.getLeft() <= (x+w)) && ((p.y - p.h/2) < (100+h) || (p.y + p.h) > 315)){
      warning = true;
      if(!p.stopcount){
        p.hittime++;
        p.stopcount = true;
      }
      return true;
    }
    else{
      warning = false;
      return false;
    }
  }
  
  void update(){
   x -= speed; 
  }
}
