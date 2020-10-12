float t1 = 1;
float t2 = 1;
float x1 = 1;
float x2 = 1;
float x3 = 1;
PFont f;
 
void setup(){
  size(900,900);
  background(255);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
}

void draw(){
  t1 = random(-200,900) * (PI/2);
  t2 = random(-200,900); /// (PI*1.12);
  x1 = random(-200,900);
  x2 =random(-200,900);
  noFill();
  stroke(0);
  curve(x2,t1,x2,x1,450,450,x2,x1);
  fill(0);
  textFont(f);
  text("E", 850, 40);
  text("P", 850, 80);
  text("H", 850, 120);
  text("E", 850, 160);
  text("M", 850, 200);
  text("E", 850, 240);
  text("R", 850, 280);
  text("A", 850, 320);
  text(" ", 850, 360);
  text("H", 850, 400);
  text("O", 850, 440);
  text("U", 850, 480);
  text("S", 850, 520);
  text("E", 850, 560);
}
