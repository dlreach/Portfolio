float t1 = 1;
float t2 = 1;
float x1 = 1;
float x2 = 1;
float x3 = 1;
PFont f;
PFont s;
float x;
float y;
char c;



void setup(){
  size(900,900);
  background(0); 
  s = createFont("SourceCodePro-Regular.ttf", 10);
  textFont(s);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
  makeBottomShape();
  ellipse(450,450,80,80);
  rect(520,550,260,80);
  drawCircle();
  // circle(650,500,30);
  // circle(700,500,20);
  // circle(750,500,10);  
}

void draw(){
  // background(255);
  strokeWeight(0);
  line(0,500,900,800);
  line(0,800,800,650);
  line(500,650,800,800);
  line(500,800,900,650);
  t1 = random(-200,900) * (PI/2);
  t2 = random(-200,900); /// (PI*1.12);
  x1 = random(-200,900);
  x2 =random(-200,900);
  noFill();
  stroke(0);
  curve(x2,t1,x2,x1,450,450,x2,x1);
  fill(random(255),random(255),random(255));
  noStroke();
  ellipse(150,150,20,20);
  ellipse(100,150,12,12);
  ellipse(200,150,12,12);
  ellipse(150,100,12,12);
  ellipse(150,200,12,12);
  fill(1);
  ellipse(150,150,10,10);
  fill(random(255),random(255),random(255));
  noStroke();
  ellipse(150,350,10,10);
  ellipse(100,350,5,5);
  ellipse(200,350,5,5);
  ellipse(150,300,5,5);
  ellipse(150,400,5,5);
  fill(1);
  ellipse(150,350,3,3);
  fill(random(255),random(255),random(255));
  noStroke();
  ellipse(150,850,10,10);
  ellipse(100,800,5,5);
  ellipse(200,800,5,5);
  //ellipse(150,800,5,5);
  // ellipse(150,900,5,5);
  fill(1);
  ellipse(150,850,3,3);
  fill(255);
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
  fill(255);
  textFont(s);
  // translate(450,200);
  //rotate(random(0,30));
  x = random(0,850);
  y = random(0,480);
  fill(random(0,255),0,0);
  text(" " + char(int(random(33, 127))),x,y);
  text("KVLTfdv4$%$@#VVITCHcvf34%%%%JOINUSdv$34#$^VVITVVvklx#$4KVLTfc$@#$$5cf34VVITCHkfd33$$#$#JOINUSddf#$%^fg#%VVITCH$cvrffdfKVLTfc#%$Gf3ff34KVLTf#$%4JOINUS",450,860);
  text("KVLTds@#$#%dc66644gdcfs#$%$#VVITCHf344gJJOINUSdfsdfKVLTffsdcsdcsdscVVITCHvsdJOINUSdfds$@#$%$#$4345$$KVLT%#453gVVITCHrf3fgd#$%#$4gKVLT#$$gdf4$#4JOINUS",450,870);
  text("KVLTf#&*JOINUSsf879VVITCH%$#$%384#$#FDJOINUSF43894sVVITCHdfKVLT7sVVITCHfkgjafgJOINUSdsdfsladkS@#$83KVLT48df9f3#$%KVLT@#edf#(#4rfJOINUSdfgdffgd3JOINUS",450,890);
  text("KVLTddssfdJOINUSds#$%VVITCH@#$d@#4ttKULtfdg@#$JOINUSdfds@#$%$fgsdS24KULTdfsdf43@#fg3dJOINUSdfd@#$342%@KULTdf#$$JOINUSdf#$@f@KULTcfgdsfVVITCHdsfJOINUS",450,880);
  stroke(255);
  line(150,0,150,900);
}

void drawCircle(){
  circle(550,500,30);
  circle(600,500,30);
  circle(650,500,30);
  circle(700,500,30);
  circle(750,500,30);
}

void makeBottomShape(){
  fill(155,0,0);
  noStroke();
  beginShape();
  vertex(0,800);
  vertex(0,500);
  vertex(500,500);
  vertex(500,650);
  vertex(800,650);
  vertex(800,600);
  vertex(900,600);
  vertex(900,800);
  vertex(800,800);
  vertex(800,850);
  vertex(500,850);
  vertex(500,800);
  endShape();
}
