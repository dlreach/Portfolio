class Bubble {
  float x = random(width);
  float y = random(-500, -100);
  float z = random(0, 20);
  float len = map(z, 0, 20, -10, 10);
  float yspeed = map(z, 0, 20, 1, 20);
  float c1 = 138;
  float c2 = 43;
  float c3 = 226;
  
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.9);
    yspeed = yspeed + grav;
   
    if (y >= height){   
     y = random(-200,-100);
     x = random(width);
     yspeed = map(z, 0, 20, 4, 10);
     c1 =(random(0, 138));
     c2 =(random(0, 43));
     c3 =(random(0, 226));
    }
    
  }
  
  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(138, 43, 226); 
    stroke(c1,c2,c3);
    ellipse(x,y,2,2);
   
  }
  
  
  
  
  
}
