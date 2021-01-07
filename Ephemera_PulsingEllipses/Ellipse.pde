class Ellipser {
  float x, y, r, a, i;
  float c1;
  float c2 = 0;
  float c3 = 0;
  
  Ellipser(float xx, float yy, float rr, float aa, float ii, float cc1){
    x = xx;
    y = yy;
    r = rr;
    a = aa;
    i = ii;
    c1 = cc1;
  }
  
  void display(){
    noStroke();
    fill(c1,c2,c3,a);
    ellipse(x,y,r,r); 
  }
  
  void update(){
    x = x + random(-1,1);
    y = y + random(-1,1);
   // a = a + random(-1,1);
    c1 = random(0,255);
    r = r+i;
    if(r>1000) {i=i*-1; c2 = random(0,255);}  //max ellipse size
    if(r<3) {i=+1; c3 = random(0,255);}            //min ellipse size
   
  }
}
