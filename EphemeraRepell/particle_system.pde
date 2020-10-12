class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  // Applying a force as a PVector
  void applyForce(PVector f) {
  
    for (Particle p: particles) {
      p.applyForce(f);
    }
  }

  void applyRepeller(Repeller r) {
    //[full] Calculating a force for each Particle based on a Repeller
   
    for (Particle p: particles) {
      PVector force = r.repel(p);
      p.applyForce(force);
    }
    //[end]
  }

  void run() {
    Iterator<Particle> it = particles.iterator();
    
    while (it.hasNext()) {
      Particle p = (Particle) it.next();
      p.run();
      if (p.isDead()) {
        it.remove();
      }
    }
  }
}
