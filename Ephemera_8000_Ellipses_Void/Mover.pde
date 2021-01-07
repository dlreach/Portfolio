class Mover {

  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;
  float r;

  Mover() {
    // Start in the center
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
    // Compute a vector that points from position to mouse
    //PVector mouse = new PVector(mouseX,mouseY);
    PVector mouse = new PVector((random(0,width)+random(-10,10)),(random(0,height)+random(-10,10)));
    PVector acceleration = PVector.sub(mouse,position);
    // Set magnitude of acceleration
    acceleration.setMag(random(0,0.5));
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }

  void display() {
    //stroke(0);
    //strokeWeight(0);
    float r = random(10);
    noStroke();
    fill(random(180,220),0,0,random(250));
    //if (r >= 9.5){
    //  fill(0,random(200),0,random(250));
    //}
    //alpha(int(random(255)));
    ellipse(position.x,position.y,random(10),random(10));
  }

}
  
  
