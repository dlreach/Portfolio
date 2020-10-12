PImage img;
Bubble[] bubbles = new Bubble[1000];
float x1 = 750;
float y1 = 500;
void setup() {
 size(1920, 1080); 
 img = loadImage("sky.jpg");
 //background(230, 230, 250);
 //background(0);
 //colorMode(HSB);
 for (int i = 0; i < bubbles.length; i++) {
   
   bubbles[i] = new Bubble();
  // fill(random(0,150),random(0,150),150,random(0,255));
  bubbles[i].alpha = random(0,100);
  bubbles[i].c1 = random(0,255);
   

 }

}


void draw() {
  background(img);
//background(0);
//background(230, 230, 250);
for (int i = 0; i < bubbles.length; i++) {
   bubbles[i].move();
   bubbles[i].show();
 }


}
