int i = 1;

void setup(){
  size(600,600);
  background(0);
}

void draw(){
  fill(159,2,0);
  translate(width/2, height/2);
  rotate(PI*2+i);
  rect(100, 200,500,50);
  fill(15,2,200);
  translate(width/2, height/2);
  rotate(PI);
  rect(300, 300,50,50);
  fill(9,200,5);
  translate(50,50);
  rotate(PI*2);
  rect(300, 300,50,50);
  fill(119,20,115);
  translate(50,50);
  rotate(PI*2);
  rect(300, 300,50,50);
  i++;
}
