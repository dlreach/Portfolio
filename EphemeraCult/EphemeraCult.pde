float a = random(1,900);
float b = random(1,900);
float c = random(1,900);
float d = random(1,900);
PFont f;
float x = 0;
float y = 0;
float step=1;


void setup(){
  size(900,900);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
}
void draw(){
  background(0);
  stroke(1);
  fill(random(255),random(255),random(255));
  ellipse(450,450,20,20);
  ellipse(400,450,12,12);
  ellipse(500,450,12,12);
  ellipse(450,400,12,12);
  ellipse(450,500,12,12);
  ellipse(600,200,20,20);
  ellipse(650,200,12,12);
  ellipse(550,200,12,12);
  fill(1);
  ellipse(450,450,10,10);
  ellipse(600,200,10,10);
  fill(255,255,255);
  text("EPHEMERA HOUSE", 220, 40);
  stroke(255);
  strokeWeight(0.05);
  line(0,0,900,900);
  line(600,0,600,600);
  line(600,600,850,900);
  line(225,675,height/2,width/2);
  line(225,675,600,200);
  line(600,200,200+x,200+y);
  //fill(150,0,0);
  //beginShape();
  //vertex(150+x,300+y);
  //vertex(200+x,200+y);
  //vertex(100+x,250+y);
  //endShape();
  drawCircle(225,675,2,20);
  x+=step;
  y+=step;
  
  if (x > 700) {
    x = 700;
    step = -1;
  }
  
  if (x < 0) {
    x = 0;
    step = 1;
  }
  
  fill(150,0,0);
  beginShape();
  vertex(150+x,300+y);
  vertex(200+x,200+y);
  vertex(100+x,250+y);
  endShape();
}

void drawCircle(int x1, int y1, float radius, int level) {                    
  noFill();
  ellipse(x1, y1, radius, radius);      
  if(level > 1) {
  level = level - 1;
  drawCircle(x1, y1, radius*1.5, level);
  //drawCircle(x1, y1, radius/2, level);
  }
}
