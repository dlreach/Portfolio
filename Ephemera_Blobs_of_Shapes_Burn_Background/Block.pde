class Block {
  
  float xloc, yloc, amount;
  
  Block(float x, float y, float a){
    xloc = x;
    yloc = y;
    amount = a;
    
  }
  
   
  void display() {
      
    for (int i = 0; i < amount; i++) {
      float r = random(20);
      float flip = random(0,1);
      fill(0,0,random(0,255),random(0,155));
      if (flip <= 0.5){
     ellipse(xloc + random(-50,50), yloc+random(-50,50), r, r);
    } else {rect(xloc + random(-50,50), yloc+random(-50,50), r, r); }  
    }
  }
   
  void update(){
    xloc = xloc+random(-250,250);
    yloc = yloc+random(-250,250);
    fill(random(0,255),0,0,random(0,255));
  } 
   
}
