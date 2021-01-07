float x, y, r;
float x2,y2,r2;
float x3,y3,r3;
float x4,y4,r4;
float x5,y5,r5;
float x6,y6,r6;

void setup() {
  fullScreen();
 // size(1500,900);
  background(51);
  x = 100;
  y = 100;
  r = 100;
  x2 = 75;
  y2 = height;
  r2 = 20;
  x3 = 500;
  y3 = 300;
  r3 = 100;
  x4 = 900;
  y4 = -100;
  r4 = 80;
  x5 = 400;
  y5 = 1;
  r5 = 2000;
  x6 = -100;
  y6 = -200;
  r6 = 100;
}


void draw() {
  //background(51);
  fill(random(150,255),139,random(150,255));
  ellipse(x5+400,y5+400,r5*3,r5*3);
  fill(random(150,255),139,random(150,255));
  ellipse(x5+random(350,450),y5+400,r5*2,r5*2);
  fill(0,0,0);
  ellipse(x5+400,y5+random(350,450),r5,r5);
  fill(255,139,255);
  ellipse(x5+400,y5+400,r5/2,r5/2);
  x5 = x5 + random(-10,10);
  y5 = y5 + random(-10,10);
  r5 = r5 / 1.01;
 
   if (r5 < 200){
 
 
  fill(random(150,255),0,0);
  ellipse(x+400,y+400,r*3,r*3);
  fill(random(150,255),random(150,255),0);
  ellipse(x+random(350,450),y+400,r*2,r*2);
  fill(0,0,0);
  ellipse(x+400,y+random(350,450),r,r);
  fill(255,0,0);
  ellipse(x+400,y+400,r/2,r/2);
  
  //Little bubbles spawning up from bottom and getting smaller
  //ellipse(x2,y2,r2*1.5,r2*1.5);
  //fill(random(150,255),0,0);
  //ellipse(x2,y2,r2,r2);
  //fill(255,0,0);
  //ellipse(x2+random(45,50),y2,r2*1.5,r2*1.5);
  //fill(random(150,255),0,0);
  //ellipse(x2+random(45,50),y2,r2,r2);
  x2 = x2 + random(0,5);
  y2 = y2 - random(5,10);
  r2 = r2 / random(1,1.5);
  r = r / 1.01;
  x = x + random(-10,10);
  y = y + random(-10,10);
 
 
  fill(random(150,255),0,0);
  ellipse(x3+400,y3+400,r3*3,r3*3);
  fill(random(150,255),random(150,255),0);
  ellipse(x3+random(350,450),y3+400,r3*2,r3*2);
  fill(0,0,0);
  ellipse(x3+400,y3+random(350,450),r3,r3);
  fill(255,0,0);
  ellipse(x3+400,y3+400,r3/2,r3/2);
  x3 = x3 + random(-10,10);
  y3 = y3 + random(-10,10);
  r3 = r3 / 1.01;
  
  fill(random(150,255),0,0);
  ellipse(x4+400,y4+400,r4*3,r4*3);
  fill(random(150,255),random(150,255),0);
  ellipse(x4+random(350,450),y4+400,r4*2,r4*2);
  fill(0,0,0);
  ellipse(x4+400,y4+random(350,450),r4,r4);
  fill(255,0,0);
  ellipse(x4+400,y4+400,r4/2,r4/2);
  x4 = x4 + random(-20,20);
  y4 = y4 + random(-20,20);
  r4 = r4 / 1.01;
  
   fill(0,0,random(150,255));
  ellipse(x6+400,y6+400,r6*3,r6*3);
  fill(0,random(150,255),random(150,255));
  ellipse(x6+random(350,450),y6+400,r6*2,r6*2);
  fill(0,0,0);
  ellipse(x6+400,y6+random(350,450),r6,r6);
  fill(0,0,250);
  ellipse(x6+400,y6+400,r6/2,r6/2);
  x6 = x6 + random(-20,21);
  y6 = y6 + random(-20,21);
  r6 = r6 / 1.01;

   }

    
     
}
