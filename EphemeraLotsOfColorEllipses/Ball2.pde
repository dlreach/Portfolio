float x2 = random(900);
float y2 = random(900);


class Ball2 {
float x2 = random(900);
float y2 = random(900);

  Ball2() {

 
  
    
  }
  
  void display(){
  fill(random(255),random(255),random(255));
  ellipse(x2,y2,12,12);
  
  }
  
  void update(){
  x2 = x2 + random(-5,5);
  y2 = y2 + random(-5,5);
}
  
}
