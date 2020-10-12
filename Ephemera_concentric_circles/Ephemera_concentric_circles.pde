import processing.opengl.*;

float x = 450;
float y = 450;
float r = 10;
float previousx = 450;
float previousy = 450;
float count = 1;

void setup() {   
  size(900,900);
  background(0);
  circle(x,y,r*10);
  circle(x,y,20);
  circle(x,y,(r+30));
  circle(x,y,(r+40));
  circle(x,y,(r+50));   
}


void draw() {
  //Use count < # if you want to stop at that many
  //if (count < 50) {
    //fill(random(0,255));
    //fill(random(0,255),random(0,255),random(0,255)); 
    noFill();
    stroke(random(1,255));
    strokeWeight(1);
    circle(x,y,r*10);
    // circle(x,y,r*(PI/1.231));
    circle(x,y,20);
    //circle(x,y,r*random(-15,15));
    circle(x,y,(r+30));
    circle(x,y,(r+40));
    circle(x,y,(r+50));
    // circle(x,y,137.123);
    // circle(x,y,r*(PI*random(-200,200)));
    previousx = x;
    previousy = y;
    x = random(1,900);
    y = random(1,900);
    stroke(150,250,130);
    strokeWeight(1);
    line(x,y,previousx,previousy);
    // stroke(random(0,255),random(0,255),random(0,255));
    // curve(x*random(-10,10), y*random(-10,10), x, y, previousx, previousy, previousx, previousy);
  //  count++; 
 // }
}
