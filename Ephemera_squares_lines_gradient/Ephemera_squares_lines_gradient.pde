//We want a class that spawns object at a random x,y location. We want more of 
//them to spawn at the edges and less and less as we reach the center circle.
//When the object is spawned, it creates 5 of rectangles around the original location.
//The shading of the rectangles is a random shade of orange, with the alpha being 
//mapped to the x location and goes from orange to red as x increases. 

float x;
float y;
float c1; //0 - 150
float c2; // 0 - 50
void setup(){
  size(1800,1000);
  background(225);
  fill(0,0,0,100);
  ellipse(width/2,height/2,200,200);
  fill(0);
  ellipse(width/2,height/2,100,100);
}

void draw(){
  strokeWeight(1);
  stroke(0);
  x = random(width);
  y = random(height);
  c1 = map(x, 0, 1800, 0, 150);
  c2 = map(x, 0, 1800, 150, 0);
  fill(c1,c2,0,random(90,255)); 
  
  if (x > 1000 || x < 780) { 
  rect(x,y, random(0,50), random(0,50));
  }
  
  if (y > 600 || y < 380){
    rect(x,y, random(0,25), random(0,25));
  }
  
  strokeWeight(0);
  stroke(random(0,255));
  line(x,y,y,x);
  line(y,x,width/2,height/2);
  line(x,y,width/2,height/2);
  fill(0,0,0);
  stroke(0);
  ellipse(width/2,height/2,50,50);
}
