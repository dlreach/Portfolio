float shape;
float x = 1;
float y = 1;
float x2 = 1499;
float y2 = 999;
float offsetx = 5;
float offsety = 5;
float offsetx2 = -5;
float offsety2 = -5;
float c1;

void setup(){
  size(1500,1000);
  background(0);
  frameRate(200);
}


void draw(){
  shape = random(3);
  c1 = map(x,0,width,0,255);
  fill(c1,0,0);
  //fill(random(0,255),0,0);
  if (int(shape) == 0){
    ellipse(x,y,5,5);  
  } else if (int(shape) == 1){
    rect(x,y,5,5);
  } else {
    triangle(x,y,x+random(-50,50),y,x+random(-50,50),y+random(-50,50));
  }
  x+=offsetx;
  y+=offsety;
  if (x >= width || y >= height){
    offsetx = random(-10,0);
    offsety = random(-10,0);
  }
   if (x <= 0 || y <= 0){
    offsetx = random(0,10);
    offsety = random(0,10);
  }
  
  shape = random(3);
  c1 = map(x2,0,width,255,0);
  fill(0,c1,c1);
  //fill(random(0,255),0,0);
  if (int(shape) == 0){
    ellipse(x2,y2,5,5);  
  } else if (int(shape) == 1){
    rect(x2,y2,5,5);
  } else {
    triangle(x2,y2,x2+random(-50,50),y2,x2+random(-50,50),y2+random(-50,50));
  }
  x2+=offsetx2;
  y2+=offsety2;
  if (x2 >= width || y2 >= height){
    offsetx2 = random(-10,0);
    offsety2 = random(-10,0);
  }
   if (x2 <= 0 || y2 <= 0){
    offsetx2 = random(0,10);
    offsety2 = random(0,10);
  }
}
