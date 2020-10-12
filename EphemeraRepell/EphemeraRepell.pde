import java.util.Iterator;
// One ParticleSystem
ParticleSystem ps;
ParticleSystem ps2;
ParticleSystem ps3;
// One repeller
Repeller repeller;

PFont f;

void setup() {
  size(900,900);
  ps = new ParticleSystem(new PVector(width/2,height/2+20));
  ps2 = new ParticleSystem(new PVector(width/2-40,height/2+20));
  ps3 = new ParticleSystem(new PVector(width/2+40,height/2+20));
  repeller = new Repeller(width/2,height/2);
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
}

void draw() {  
  background(1);
  fill(255);
  text("EPHEMERA HOUSE", 220, 40);
  stroke(random(0,255),random(0,100),0);
  strokeWeight(5);
  line(450,450,random(0,900),random(0,900));
  ps.addParticle();
  ps.addParticle();
  ps.addParticle();
  ps2.addParticle();
  ps2.addParticle();
  ps2.addParticle();
  ps3.addParticle();
  ps3.addParticle();
  ps3.addParticle();
  // We’re applying a universal gravity.
  PVector gravity = new PVector(0,0.1);
  ps.applyForce(gravity);
  // Applying the repeller
  ps.applyRepeller(repeller);
  ps.run();
  ps2.applyForce(gravity);
  // Applying the repeller
  ps2.applyRepeller(repeller);
  ps2.run();
  ps3.applyForce(gravity);
  // Applying the repeller
  ps3.applyRepeller(repeller);
  ps3.run();
  repeller.display(); 
}


// The ParticleSystem manages all the Particles.
