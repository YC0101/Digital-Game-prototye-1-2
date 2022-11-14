class Ground{
  float w,h,x, y,w2,h2,x2,y2;
  
  Ground(){
    w = 1000;
    h = 300;
    x = 0;
    y = 365;
    
    w2 = 1000;
    h2 = 100;
    x2 = 0;
    y2 = 0;
  }
  
  void display(){
    fill(50);
    noStroke();
    rect(x,y,w,h);
    rect(x2,y2,w2,h2);
  }
}
