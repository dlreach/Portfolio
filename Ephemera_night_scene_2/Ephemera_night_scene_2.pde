float y1 = 700;
float y2 = 600;
float y3 = 650;
float x,y;
PFont f;

void setup() {
  size(900,900);
  f = loadFont("ephtext.vlw");
  textFont(f);
  background(0);
  fill(255,200,0);
  ellipse(750,150,150,150); 
}


void draw() {
  //curve(550,70, 0,750, 900, 700 ,590,50);
  fill(random(100,150),125,0);
  stroke(1);
  bezier(-80,900,50,y2,700,y3,1000,900);
  y1 = y1 + random(0,50);
  y2 = y2 + random(0,50);
  y3 = y3 + random(0,50);
  endShape();
  fill(255,200,0);
  noStroke();
  x = random(0,900);
  y = random(0,680);
  
  if (x <= 100 || x >= 750) {
    y = y + random(0,100);
  }
  
  ellipse(x,y,2,2);
  ellipse(750,150,150,150);
  text("EPHEMERA HOUSE", 50,50);
}
