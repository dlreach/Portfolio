PImage img;
PFont font;
int pointillize = 16;
float xl = 0;
float yl = 0;
float xl2 = 1900;
float yl2= 0;

void setup(){
  size(1900,1060);
  background(0);
  img = loadImage("sky.jpg");
  font = loadFont("picfont.vlw");
  textFont(font);
//for (int i = 1; i < width; i++) {
//  for (int j = 1; j < height; j++) {    
//  } 
//}
}
void draw() {
    //TURN THIS INTO A FUNCTION: x,y,loc,r,g,b, fill, rect
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int x2 = int(random(img.width));
  int y2 = int(random(img.height));
  int x3 = int(random(img.width));
  int y3 = int(random(img.height));
  int x4 = int(random(img.width));
  int y4 = int(random(img.height));
  int x5 = int(random(img.width));
  int y5 = int(random(img.height));
  int x6 = int(random(img.width));
  int y6 = int(random(img.height));
  //loc = it's location in repsect to the pixels
  int loc = x + y*img.width;
  int loc2 = x2 + y2*img.width;
  int loc3 = x3 + y3*img.width;
  int loc4 = x4 + y4*img.width;
  int loc5 = x5 + y5*img.width;
  int loc6 = x6 + y6*img.width;
 
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  float r2 = red(img.pixels[loc2]);
  float g2 = green(img.pixels[loc2]);
  float b2 = blue(img.pixels[loc2]);
  
  float r3 = red(img.pixels[loc3]);
  float g3 = green(img.pixels[loc3]);
  float b3 = blue(img.pixels[loc3]);
  
  float r4 = red(img.pixels[loc4]);
  float g4 = green(img.pixels[loc4]);
  float b4 = blue(img.pixels[loc4]);
  
  float r5 = red(img.pixels[loc5]);
  float g5 = green(img.pixels[loc5]);
  float b5 = blue(img.pixels[loc5]);
  
  float r6 = red(img.pixels[loc6]);
  float g6 = green(img.pixels[loc6]);
  float b6 = blue(img.pixels[loc6]);
  noStroke();

  //// Draw an rectangle at that location with original pixel's color
  fill(r,g,b,100);
  rect(x,y,5,5);
  fill(r2,g2,b2,100);
  rect(x2,y2,5,5);
  fill(r3,g3,b3,100);
  rect(x3,y3,5,5);
  fill(r4,g4,b4,100);
  rect(x4,y4,5,5);
  fill(r5,g5,b5,100);
  rect(x5,y5,5,5);
  fill(r6,g6,b6,100);
  rect(x6,y6,5,5);
  //Ephemera Signature
  fill(150,0,0);
  text("EPHEMERA HOUSE",10,50);  
}
