float x = 450;
float y = 450;
float x1 = 150;
float y2 = 100;
float r = 10;
float previousx = 450;
float previousy = 450;
float count = 1;
PFont f;

void setup() {  
  size(900,900);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
   
  background(0);
  stroke(150,100,50);
  noFill();
  circle(x1,y2,r*10);
  circle(x1,y2,20);
  circle(x1,y2,(r+30));
  circle(x1,y2,(r+40));
  circle(x1,y2,(r+50));
  circle(x1,y2,(r+80));
  stroke(103,203,104);
  line(0,0,900,900);
  line(10,0,900,890);
}

    
void draw() {
 if (count < 15) {
    noFill();
    //stroke(1);
    strokeWeight(1);
    circle(x,y,r*10);
    circle(x,y,20); 
    circle(x,y,(r+30));
    circle(x,y,(r+40));
    circle(x,y,(r+50));
    circle(x,y,(r+80));
    circle(x,y,(r+150));
    previousx = x;
    previousy = y;
    x = random(175,875);
    y =random(150,875);
    stroke(150,250,130);
    strokeWeight(2);
    //line(x,y,previousx,previousy);
    stroke(random(0,255),random(0,255),random(0,255));
    curve(x*random(-1,1), y*random(-1,1), x, y, previousx, previousy, previousx, previousy);
    noFill();
    stroke(143);
    circle(x,y,r*10);
    circle(x,y,20); 
    circle(x,y,(r+30));
    circle(x,y,(r+40));
    circle(x,y,(r+50));
    circle(x,y,(r+80));
    circle(x,y,(r+10));
    count++; 
  }
 fill(250);
 rotate(.79);
 text("EPHEMERA HOUSE", 350, -45);
}
