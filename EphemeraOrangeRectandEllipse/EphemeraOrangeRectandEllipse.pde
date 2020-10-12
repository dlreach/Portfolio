float x,y;
float a,b;
float n = 600;
float m = 600;
String s = "EPHEMERA";

void setup(){
  size(600,600);
  background(0);
  textAlign(CENTER);
  textSize(20);
  a = 500;
  b = 400;
}



void draw(){ 
  fill(x,y,a);
  ellipse(x*1.5,y*1.5,x,y);   
  fill(204, 102, 0);
  rect(x,a,y,150);
  fill(204, 102, 0);
  rect(x+50,a,y,150); 
  fill(204, 102, 0);
  rect(x+100,a,y,150); 
  fill(204, 102, 0);
  rect(x+150,a,y,150); 
  fill(204, 102, 0);
  rect(x+200,a,y,150); 
  fill(204, 102, 0);
  rect(x+250,a,y,150); 
  fill(204, 102, 0);
  rect(x+300,a,y,150);  
  fill(204, 102, 0);
  rect(x+350,a,y,150);  
  fill(204, 102, 0);
  rect(x+400,a,y,150); 
  fill(204, 102, 0);
  rect(x+450,a,y,150); 
  x = x + 1;
  y = y + 2;
  a = a - 10;
  b = b - 10; 
  fill(x,y,a);
  text(s, 60, 50);
  fill(y,x,b);
  //ellipse(y+100,x+100,y,x);
  line(0,50,600,50);
  line(0,51,600,51);
  line(0,52,600,52);

  if (x > 100){
    fill(n,m,x);
    text(s, n, m);
    n =random(0,600);
    m = random(0,600);
  }
  
  //if (x > 200){
    //line(n,m,m,n);
    //line(m,n,m,n);
    //n =random(0,600);
    //m = random(0,600);
  //}
}
