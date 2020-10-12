
float x,y,x2,step,step2;

void setup(){
  size(1500,1000);
  background(0);  
  x = 0;
  x2 = width;
  y = 1;
  step = 0;
  step2 = .5;
}

void draw(){
  stroke(255,0,0);
  line(x,y+step,width,y+step);
  line(x+step,y,x+step,height);
  step2 = step2+.08;
  step = step+step2;
  line(width/2,0,0,height);
  line(width/2,0,width,height);
  line(width/2,height,0,0);
  line(width/2,height,width,0);
  //line(width/2,0,width/2,height);
  if (step >= width){
  line(random(0,width), random(0,height),random(0,width), random(0,height));
  line(0,0,random(0,1000),height);
  line(width,0,random(500,1500),height);
  line(0,height,random(0,1000),0);
  line(width,height,random(500,1500),0);
  }


}
