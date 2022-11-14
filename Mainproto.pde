Player p;
Ground g;
Obstacle[] obs;
int idx;
PFont f;
boolean space;
End1 e;

void setup(){
  size(800,600);
  obs = new Obstacle[100];
  space = false;
  f = createFont("Arial",16,true);
  p = new Player();
  g = new Ground();
  e = new End1();
  idx = 0;
  
  obs[idx] = new Obstacle();
  idx++;
  
}

void draw(){
  if(p.hittime <= 5){
     background(255);
     
     textFont(f,16); 
     fill(0);
     text(("HIT: "+ p.hittime), 100, 200);
     
     
     for(int x = idx -1; x >= 0; x--){
        obs[x].display();
        obs[x].update();  
        
        if (obs[x].hits(p)){
          p.displayRed();
          print("HIT!");
        }
      }
     
     
     p.update();
     p.display();
     g.display();
     
    
     if(frameCount %80 == 0){
      obs[idx] = new Obstacle();
      idx++;
     }
  }
  else{
    e.display();
    p.displayRed();
  }
 

}

void keyPressed() {
  switch(keyCode){
    case 32:
      space = true;
      //print("Space ");
      break;
  }
}

void keyReleased(){
    switch(keyCode){
    case 32:
      space = false;
      break;
  }
}
