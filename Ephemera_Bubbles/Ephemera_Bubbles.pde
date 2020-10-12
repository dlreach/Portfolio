
Bubble[] bubbles = new Bubble[8000];
float x1 = 750;
float y1 = 500;
void setup() {
   size(1500, 1000); 
 //background(230, 230, 250);
 //background(0);
 //colorMode(HSB);
 for (int i = 0; i < bubbles.length; i++) { 
   bubbles[i] = new Bubble();
   bubbles[i].alpha = random(0,255);
 }
}

void draw() {
//background(0);
  background(230, 230, 250);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].move();
    bubbles[i].show();
  }
}
