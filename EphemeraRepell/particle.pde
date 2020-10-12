class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;


  // We could vary mass for more interesting results.
  float mass = 1;

  Particle(PVector l) {
    // We now start with acceleration of 0.
    acceleration = new PVector(0,0);
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    lifespan = 300.0;
  }

  void run() {
    update();
    display();
  }

  //[full] Newton’s second law & force accumulation
  void applyForce(PVector force) {
    PVector f = force.get();
    f.div(mass);
    acceleration.add(f);
  }
  //[end]

  //[full] Standard update
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= 2.0;
  }
  //[end]
  //[full] Our Particle is a circle.
 
  void display() {
    stroke(255,lifespan);
    fill(255,lifespan);
    ellipse(location.x,location.y,8,8);
    
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
}
  //[end]

  //[full] Should the Particle be deleted?
  boolean isDead() {
    
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  //[end]
}
