int i = 1;

void setup(){
  size(600,600);
  background(0);
}

void draw(){
  fill(0,255,0);
  ellipse(300,300,10,10);
  fill(0,255,0);
  ellipse(300+i,300,10,10);
  ellipse(300,300+i,10,10);
  ellipse(300*i,300*i,10,10);
  ellipse(300-i,300,10,10);
  ellipse(300,300-i,10,10);
  fill(159,2,0);
  translate(width/2, height/2);  
  rotate(PI*2+i);
  rect(100, 200,500,50);
  fill(0,255,0);
  ellipse(300,300,10,10);
  fill(0,255,0);
  ellipse(300+i,300,10,10);
  ellipse(300,300+i,10,10);
  ellipse(300*i,300*i,10,10);
  ellipse(300-i,300,10,10);
  ellipse(300,300-i,10,10);
   ellipse(150+i,150,10,10);
  ellipse(150,150+i,10,10);
  ellipse(150*i,150*i,10,10);
  ellipse(150-i,150,10,10);
  ellipse(150,150-i,10,10); 
  i++;
}
