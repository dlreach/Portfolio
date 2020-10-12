ArrayList<ParticleSystem> systems;
float x = 10;
float y = 10;
PFont f;

void setup() {
  size(900,900);
  systems = new ArrayList<ParticleSystem>();
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER); 
}

  
void draw() { 
   if (x < 900){
     systems.add(new ParticleSystem(1,new PVector(x,y)));
     //systems.add(new ParticleSystem(1,new PVector(x,y+ 450)));
     x+=100;
   }
  background(122);
  
  for (ParticleSystem ps: systems) {
    ps.run();
    ps.addParticle(); 
  }
   
  fill(0);
  text("EPHEMERA HOUSE", 220, 850);
  fill(random(1,250),random(1,250),random(1,250)); 
  text("EPHEMERA", 650, 250);
  fill(random(1,250),random(1,250),random(1,250)); 
  text("EPHEMERA", 600, 200);
  fill(random(1,250),random(1,250),random(1,250)); 
  text("EPHEMERA", 550, 150); 
  fill(0); 
}
 
