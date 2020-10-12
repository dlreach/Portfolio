float x = 450;
float y = 400;
float z = 500;

class Ball {

  
  Ball() {
 
  ellipse(x,x,20,20);
  ellipse(y,x,12,12);
  ellipse(z,x,12,12);
  ellipse(x,y,12,12);
  ellipse(x,z,12,12);
    
  }
  
  void display(){
  fill(random(255),random(255),random(255));
  x = x + random(-5,5);
  y = y + random(-5,5);
  z = z + random(-5,5);
  
  }
  
}
