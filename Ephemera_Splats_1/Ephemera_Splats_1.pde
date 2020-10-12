
EllipseSystem ps;

void setup(){
  size(1500,1000);
  background(150);
  ps = new EllipseSystem(new PVector(width/2,50));
}

void draw(){  
  // background(150);
  ps.addEllipse();
  ps.run();
}
