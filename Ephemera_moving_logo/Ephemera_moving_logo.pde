float x = 0;
float x2 = 0;
float x2_2 = 0;
float x3 = 900;
float x4 = 975;
float y2 = 0;
float y3 = 900;
PFont f;
float r = 200;
float r2 = 50;

void setup(){
  size(975,900);
 f = loadFont("phemera.vlw");
 textFont(f);
}


void draw(){
  background(0);
  stroke(255);
  strokeWeight(5);  
  line(x,350,x,550);
  line(425,y2,525,y2);
  line(x3,450,x4,450);
  line(425,y3,525,y3);
  if (x < 425){
   x = x+1;
  }
  if (y2 < 350){
  y2 = y2+1;
  }
  if (x3 > 425 && x4 > 500){
   x3 = x3 - 1;
   x4 = x4 - 1;
  }
  if (y3 > 550){
  y3 = y3-1;
  }
  if (x4 == 500){
    background(150,20,0);
    stroke(255);
    strokeWeight(5);
    // "E"
    line(x,350,x,550);
    line(425,y2,525,y2);
    line(x3,450,x4,450);
    line(425,y3,525,y3);
    //doorframe
    beginShape();
    fill(25);
    strokeWeight(1);
    vertex(x,351);
    vertex(x4+5,400);
    vertex(x4+5,450);
    vertex(x3,450);
    endShape(CLOSE);
    
    beginShape();
    fill(25);
    strokeWeight(1);
    vertex(x,549);
    vertex(x4+5,500);
    vertex(x4+5,450);
    vertex(x3,450);
    endShape(CLOSE);
    strokeWeight(5);
    line(x4+25,350,x4+25,550);
    line(x,350,x,550);
    //line(x,350,x4,400);
    //line(x3,550,x4,500);
    //line(x4,400,x4,500);
    //line(x4+25, 350, x4+25, 550);
    // center this text
    fill(255);
    text("Ephemera", 390,600);
    fill(245, 205, 0);
    noStroke();
    ellipse(x4-2,450-10,5,8);
    strokeWeight(1);
    
    ellipse(0,0,r,r);
    ellipse(width,0,r,r);
    ellipse(0,height,r,r);
    ellipse(width,height,r,r);
    fill(0);
    
    ellipse(0,0,r2,r2);
    ellipse(width,0,r2,r2);
    ellipse(0,height,r2,r2);
    ellipse(width,height,r2,r2);
    //r -= 5;
    
  }
}
