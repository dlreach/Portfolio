//We want a class that spawns object at a random x,y location. We want more of 
//them to spawn at the edges and less and less as we reach the center circle.
//When the object is spawned, it creates 5 of rectangles around the original location.
//The shading of the rectangles is a random shade of orange, with the alpha being 
//mapped to the x location and goes from orange to red as x increases. 

float x;
float y;
float x1;
float y1;
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
  //strokeWeight(1);
  noStroke();
  x = random(width);
  y = random(height);
  c1 = map(x, 0, 1800, 0, 150);
  c2 = map(x, 0, 1800, 150, 0);
  
  if (x < width/2){
    x1 = map (x, 0, 1800, 0, 100);
  }
  if (x > width/2){
    x1 = map (x, 0, 1800, 100, 0);
  }  
  if (y < height/2){
    y1 = map (y, 0, 1000, 0, 100);
  }
    if (y > height/2){
    y1 = map (y, 0, 1000, 100, 0);
  }
  
  fill(c1,c2,0,random(90,255));  
  
  if (x > 1000 || x < 780) { 
    ellipse(x,y, random(0,50),random(0,50));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,100));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,150));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,200));
  } 
  
  if (y > 600 || y < 380){
    fill(c1,c2,0,random(90,255)); 
    ellipse(x,y, random(0,50),random(0,50));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,100));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,150));
    fill(c1,c2,0,random(0,50)); 
    ellipse(x,y, random(0,50),random(0,200));
  }
  
  fill(0,0,0);
  stroke(0);
  ellipse(width/2,height/2,50,50);
}
