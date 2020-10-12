
class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float R =random(1,250);
  float G= random(1,250);
  float B= random(1,250);
  Particle(PVector l) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-1,1),random(-2,0));
    position = l.get();
    lifespan = 350.0;
  }

  void run() {
    update();
    display();

  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0;

  }

  // Method to display
  void display() {
    stroke(0, lifespan);
    strokeWeight(2);
    fill(R,G,B);
    ellipse(position.x,position.y,12,12);
   
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
