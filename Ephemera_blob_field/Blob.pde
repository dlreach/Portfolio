class Blob {
    
  float x;
  float y;
  float z;
  
  float pz;

  Blob(){
   
    x = random(-width/2,width/2);
    y = random(-height/2,height/2);
    z = random(width/2*10);  
    pz = z;
  }
  
  
  void update(){
  z = z - 20;
  if (z < 1) {
    x = random(-width/2,width/2);
    y = random(-height/2,height/2);
    z = width/2*10; 
    pz = z;
  }
}
  
  
  void show(){
    float c1 = map(x / z, 0, 1, 0, 255);
    float c2 =  map(y / z, 0, 1, 0, 255);
    float c3 =  map((x*y) / z, 0, 1, 0, 255);
    fill(c1,c2,c3);
    noStroke();
    
     //dividing by z, which gets smaller so value gets larger
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);
    
    float r = map(z, 0, width/2, 16, 0);
    ellipse(sx,sy,r,r);
   
    float px =  map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
    
    pz = z;
    
    stroke(c1,c2,c3);
    line(px,py,sx,sy);
   
  
  }
  
}
