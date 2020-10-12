class Repeller {

  // How strong is the repeller?
  float strength = 800;
  PVector location;
  float r = 50;

  Repeller(float x, float y)  {
    location = new PVector(x,y);
  }

  void display() {
    strokeWeight(1);
    stroke(255);
    fill(0,0,0);
    ellipse(location.x,location.y,r*2,r*2);
  }

  PVector repel(Particle p) {
    //[full] This is the same repel algorithm we used in Chapter 2: forces based on gravitational attraction.
    PVector dir = PVector.sub(location,p.location);
    float d = dir.mag();
    dir.normalize();
    d = constrain(d,5,100);
    float force = -1 * strength / (d * d);
    dir.mult(force);
    return dir;
    //[end]
  }
}
