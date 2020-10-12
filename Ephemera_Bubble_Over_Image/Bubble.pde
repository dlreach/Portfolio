class Bubble {
  float x = random(width);
  float y = random(height);
  float z = random(0,20);
  float len = map(z, 0, 20, -10, 10);
  float yspeed = map(z,0, 20, 1, 20);
  float c1;
  float c2 = 43;
  float c3 = 226;
  float xs = 1;
  float ys = 1;
  float alpha;

  void move() {
    y = y + random(-10,10);
    x = x + random(-10,10);
    ys = ys + random(-10,10);
    xs = xs + random(-10,10);
    }
    // float grav = map(z, 0, 20, 0, 0.9);
    //  yspeed = yspeed +grav;
   
    //if (y>=height){   
    // y = random(-200,-100);
    // x = random(width);
    // yspeed = map(z,0, 20, 4, 10);
    //  c1 =(random(0,150));
    //c2 =(random(0,150));
    // c3 =(random(0,150));     

  
  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(150, 150, 150); 
    fill(c1,150,150,alpha);
    //stroke(random(0,255),random(0,255),random(0,255));
    // alpha(int(random(0,255)));
    // stroke(c1,c2,c3);
    ellipse(x,y,xs,ys);
    
   
  }
  


  

  
  
}
