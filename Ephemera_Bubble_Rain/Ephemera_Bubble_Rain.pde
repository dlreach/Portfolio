Bubble[] bubbles = new Bubble[1000];
float x1 = 750;
float y1 = 500;

void setup() {
 size(1500, 1000); 
 background(230, 230, 250);
 //colorMode(HSB);
 for (int i = 0; i < bubbles.length; i++) {
   bubbles[i] = new Bubble();
 }
}


void draw() {
//background(230, 230, 250);
for (int i = 0; i < bubbles.length; i++) {
   bubbles[i].fall();
   bubbles[i].show();
 }


}
