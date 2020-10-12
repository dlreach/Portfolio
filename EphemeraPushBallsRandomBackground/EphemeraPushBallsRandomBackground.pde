//we need the top border
// import the box2d stuffs

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// Reference to box2d world
Box2DProcessing box2d;
Ball b;


// A list we'll use to track fixed objects
ArrayList<Boundary> boundaries;
ArrayList<Ball> balls;

PFont f;
float bckgrnd_clrR = random(0,255);
float bckgrnd_clrG = random(0,255);
float bckgrnd_clrB = random(0,255);
int counter = 0; 
float tpos1, tpos2;
int counter2 = 0;
int counter3 = 0;
float r1 = random(-100,100);
float r2 = random(-100,100);
  
    
void setup() {
  size(600,600);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // gravity force
  box2d.setGravity(0,-10);
   
  //b = new Ball(100,100);
  
   balls = new ArrayList<Ball>();
   boundaries = new ArrayList<Boundary>();
  
  // Add a bunch of fixed boundaries
   boundaries.add(new Boundary(width/2,height-5,width,10,0));
   boundaries.add(new Boundary(width-5,height/2,10,height,0));
   boundaries.add(new Boundary(5,height/2,10,height,0));
   boundaries.add(new Boundary(5,5,width*2,10,0)); 
  }

  
  void draw() {
    background(bckgrnd_clrR, bckgrnd_clrG, bckgrnd_clrB);
    counter++;
    counter2++;
    counter3++;
    
    if (counter3 <= 500){
      balls.add(new Ball(random(600),random(600)));
    }
    
    if (counter == 25){
    bckgrnd_clrR = random(0,255);
    bckgrnd_clrG = random(0,255);
    bckgrnd_clrB = random(0,255);
    counter = 0;
    }
    
    box2d.step();
    
  for (Ball i: balls) {
   i.display();
  }
      
    for (Boundary wall: boundaries) {
   wall.display();
  }
  
  fill(255,255,255);
  text("EPHEMERA HOUSE", 350, 500); 
  if (counter2 == 20){
  fill(100,100,100);
  text("EPHEMERA HOUSE", tpos1, tpos2);
  tpos1 = random(600);  
  tpos2 = random(600);
  counter2 = 0;
  }
 
  if (mousePressed) {
    Vec2 wind = new Vec2(r1,r2);
    
    for (Ball i: balls) {
      i.applyForce(wind);
    }   
  }
}
  
  void mouseReleased(){
    r1 = random(-100,100);
    r2 = random(-100,100);
  }
