class Ball{
  
  Body body;
  float w;
  float h;
  float r;
  
  Ball(float x, float y){
    w = random(0,10);
    h = random(0,10);
    r = random(0,10);
    makeBody(new Vec2(x, y));    
  }
  
  void applyForce(Vec2 force) {
    Vec2 pos = body.getWorldCenter();
    body.applyForce(force, pos);
  }
    
  void display() {
      // look at body and get its screen position
      Vec2 pos = box2d.getBodyPixelCoord(body);
      // Get angle of rotation
      float a = body.getAngle();
      
      rectMode(CENTER);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(-a);
      fill(random(255));
      stroke(0);
      strokeWeight(2);
      ellipse(0, -h/2, r*2, r*2);
      popMatrix();
    }
    
  void makeBody(Vec2 center){
    
    // Define the body and make it from the shape
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    
    CircleShape circle = new CircleShape();
    circle.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset = new Vec2(0,-h/2);
    offset = box2d.vectorPixelsToWorld(offset);
    circle.m_p.set(offset.x,offset.y);
    
     // Define a fixture
     FixtureDef fd = new FixtureDef();
     fd.shape = circle;
     // Parameters that affect physics
     fd.density = 1;
     fd.friction = 0.3;
     fd.restitution = 0.5;
    
     body.createFixture(fd);
    
  } 
}
