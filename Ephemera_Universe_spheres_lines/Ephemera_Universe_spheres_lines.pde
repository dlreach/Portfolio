import peasy.*;

Planet sun;

PFont f;
PeasyCam cam;

void setup(){
  size(1500,1000, P3D);
  cam = new PeasyCam(this, 400);
  sun = new Planet(50, 0, 0);
  sun.spawnMoons(10, 1);
  background(0);
  f = createFont("SourceCodePro-Regular.ttf", 20);
  textFont(f);
  textAlign(CENTER, CENTER);
}


void draw(){
  // background(0);
  lights();
  ambientLight(100,1,100);
  pointLight(255,255,255,0,0,0);
  sun.show();
  sun.orbit();
  fill(255);
  //text("EPHEMERA HOUSE", 200, 200);
}
