class End1{
  String s ="QWQ";
  PFont f;
  
   End1(){
     
    s ="QWQ,Fail!";
    f = createFont("Arial",60,true);
  }
  
  void display(){
    //fill(0);
    //noStroke();
    textFont(f,60); 
    fill(200,200,0);
    text((s), 260, 260);
    
  }
}
