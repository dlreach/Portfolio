PFont f;
PFont g;
float x = 1;
float y = 1;

void setup() {
  size(600,600);
  f = createFont("SourceCodePro-Regular.ttf", 20);
  textFont(f);
  textAlign(CENTER, CENTER);
  background(255);
}

void draw(){
  rect(x,y,y,x);
  line(x,y,y,x);
  line(x,y,x,-y);
  line(x,-y,x,-y);
  line(-x,y,x,y);
  line(-x,y,-x,y);
  line(-x,-y,-x,-y);
  x = random(-200,600);
  y = random(-200,600);
  //background(255);
  drawcircle(width/2, height/2, 300);
  text("EPHEMERA HOUSE", 300, 200);
  textSize(15);
  fill(0);
  text("EPHEMERA HOUSE", 400, 250);
  text("EPHEMERA HOUSE", 200, 250);
}

void drawcircle(float x,float y,float d){
  stroke(5);
  fill(random(0,255), random(0,255), random(0,255));
  ellipse(x, y, d, d);
  if (d>2){
  drawcircle(x+d/2, y, d/2);
  drawcircle(x-d/2, y, d/2);
  drawcircle(x, y+d/2, d/2);
  // drawcircle(x/2, y+d/2, d/2);
  // drawcircle(x*2, y-d/2, d/2);      
  }
}
