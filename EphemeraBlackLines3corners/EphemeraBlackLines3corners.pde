float a = random(1,900);
float b = random(1,900);
float c = random(1,900);
float d = random(1,900);
PFont f;

void setup(){
  size(900,900);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
  background(255,255,255); 
}

void draw(){ 
  drawLinesToTopLeft();
  drawLinesBottomRightt();
  drawLinesBottomLeft(); 
  fill(random(255),random(255),random(255));
  ellipse(450,450,20,20);
  ellipse(400,450,12,12);
  ellipse(500,450,12,12);
  ellipse(450,400,12,12);
  ellipse(450,500,12,12);
  fill(1);
  ellipse(450,450,10,10);
  fill(255,255,255);
  text("EPHEMERA HOUSE", 220, 40);
}

void drawLinesToTopLeft(){
  line(random(1,900),random(1,900),random(1,900),random(1,900));
  line(random(1,800),random(1,800),random(1,800),random(1,800));
  line(random(1,700),random(1,700),random(1,700),random(1,700));
  line(random(1,600),random(1,600),random(1,600),random(1,600));
  line(random(1,500),random(1,500),random(1,500),random(1,500));
  line(random(1,400),random(1,400),random(1,400),random(1,400));
  line(random(1,300),random(1,300),random(1,300),random(1,300));
  line(random(1,200),random(1,200),random(1,200),random(1,200));
  line(random(1,100),random(1,100),random(1,100),random(1,100));
  line(random(1,10),random(1,10),random(1,10),random(1,10)); 
}

void drawLinesBottomRightt(){
  line(random(1,900),random(1,900),random(1,900),random(1,900));
  line(random(800,900),random(800,900),random(800,900),random(800,900));
  line(random(700,900),random(700,900),random(700,900),random(700,900));
  line(random(600,900),random(600,900),random(600,900),random(600,900));
  line(random(500,900),random(500,900),random(500,900),random(500,900));
  line(random(400,900),random(400,900),random(400,900),random(400,900));
  line(random(300,900),random(300,900),random(300,900),random(300,900));
  line(random(200,900),random(200,900),random(200,900),random(200,900));
  line(random(100,900),random(100,900),random(100,900),random(100,900));
  line(random(890,900),random(890,900),random(890,900),random(890,900)); 
}

void drawLinesBottomLeft(){
  line(random(1,900),random(1,900),random(1,900),random(1,900));
  line(random(1,800),random(800,900),random(1,800),random(100,900));
  line(random(1,700),random(700,900),random(1,700),random(200,900));
  line(random(1,600),random(600,900),random(1,600),random(300,900));
  line(random(1,500),random(500,900),random(1,600),random(400,900));
  line(random(1,400),random(400,900),random(1,600),random(500,900));
  line(random(1,300),random(300,900),random(1,600),random(600,900));
  line(random(1,200),random(200,900),random(1,600),random(700,900));
  line(random(1,10),random(100,900),random(1,600),random(800,900));
}

void drawLinesTopRightt(){
  line(random(1,900),random(1,900),random(1,900),random(1,900));
  line(random(1,800),random(1,800),random(1,800),random(1,800));
  line(random(1,700),random(1,700),random(1,700),random(1,700));
  line(random(1,600),random(1,600),random(1,600),random(1,600));
  line(random(1,500),random(1,500),random(1,500),random(1,500));
  line(random(1,400),random(1,400),random(1,400),random(1,400));
  line(random(1,300),random(1,300),random(1,300),random(1,300));
  line(random(1,200),random(1,200),random(1,200),random(1,200));
  line(random(1,100),random(1,100),random(1,100),random(1,100));
  line(random(1,10),random(1,10),random(1,10),random(1,10)); 
}
