float x = 450;
float y = 450;
float r = 10;
float c1 = 0;
float c2 = 0;
float c3 = 0;
PFont f;
PFont f2;
float tx,ty;

void setup() {
  size(900,900);
  f = loadFont("CourierNewPSMT-48.vlw");
  f2 = loadFont("CourierNewPSMT-25.vlw");
  textFont(f);
  background(255);
  colorMode(HSB);
}


void draw() {
  textFont(f);
  noFill();
  c1 = c1 + random(0,10);
  c2 = c2 + random(0,10);
  c3 = c3 + random(0,10);
  if (c1 >255){c1 = random(0,255);}
  if (c2 >255){c2 = random(0,255);}
  if (c3 >255){c3 = random(0,255);}
  stroke(c1,c2,c3);
  circle(x,y,r*11);
  circle(x,y,r*(PI/1.231));
  circle(x,y,r/.000123);
  circle(x,y,r*random(-15,15));
  circle(x,y,(r+155));
  circle(x,y,(r+26));
  circle(x,y,(r+361));
  circle(x,y,137.123);
  circle(x,y,r*(PI*random(-200,200)));
  x = random(1,900);
  y = random(1,900);  
  tx = map(c1,0,255,0,900);
  ty = map(c2,0,255,0,900);
  fill(c3,c1,c2);
  text("EPHEMERA HOUSE", tx,ty);
  textFont(f2);
  fill(0);
  text("EPHEMERA HOUSE", 5,890);
}
