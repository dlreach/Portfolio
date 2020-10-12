Drop[] drops = new Drop[8000];
float x1 = 750;
float y1 = 500;

void setup() {  
   size(1500, 1000); 
   background(230, 230, 250);
   //colorMode(HSB);
   for (int i = 0; i < drops.length; i++) {
     drops[i] = new Drop();
     drops[i].move1 = random(-1,1);
   }
}


void draw() {
  
for (int i = 0; i < drops.length; i++) {
   drops[i].move();
   drops[i].show();
 }
 
for (int i = 0; i < drops.length; i++) {
   if (drops[i].x > width )
   {
     strokeWeight(1);
     stroke(random(0,255),0,0);
     line(drops[i].x,drops[i].y,width/2,height/2);
   }   
 }
 
for (int i = 0; i < drops.length; i++) {
   if (drops[i].x < 0 )
   {
     strokeWeight(1);
     stroke(random(0,255),0,0);
     line(drops[i].x,drops[i].y,width/2,height/2);
   }   
 }
 
for (int i = 0; i < drops.length; i++) {
   if (drops[i].y > height )
   {
     strokeWeight(1);
     stroke(random(0,255),0,0);
     line(drops[i].x,drops[i].y,width/2,height/2);
   }   
 }
 
 for (int i = 0; i < drops.length; i++) {
   if (drops[i].y < 0 )
   {
     strokeWeight(1);
     stroke(random(0,255),0,0);
     line(drops[i].x,drops[i].y,width/2,height/2);
   }   
 }
}
