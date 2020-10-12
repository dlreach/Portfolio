class Planet {
  float radius;
  float angle;
  float distance;
  float x, y, c1, c2, c3, c4;
  Planet[] planets;
  float orbitSpeed;
  PVector v;
  
  Planet(float r, float d, float o) {
    v = PVector.random3D();
    
    radius = r;
    distance = d;
    v.mult(distance);
    angle = random(TWO_PI);
    orbitSpeed = o;
  }
  
  void orbit() {
    angle = angle + orbitSpeed;
    if (planets != null) {
    for (int i = 0; i < planets.length; i++){
       planets[i].orbit();   
    }
  }
  }
  
  void spawnMoons(int total, int level) {
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++) {
      float r = radius/(level*2);
      float d = random((radius + r),(radius+r)*4);
      float o = random(-0.1,0.1);
      planets[i] = new Planet(r, d, o);
      if (level < 4){
        int num = int(random(0,4));
      planets[i].spawnMoons(num, level + 1);
    }
  }
  }
  void show() { 
    pushMatrix();
    //x = random(width);
    //y = random(height);
    //c1 = map(x, 0, 1500, 0, 255) + random(-100,100);
    //c2 = map(y, 0, 1000, 0, 255) + random(-50,100);
    //c3 = map(x, 0, 1500, 0, 255) + random(-50,50);
    //c4 = map(y, 0, 1000, 0, 255) + random(-50,50);
    //c1 = random(0,255);
    //c2 = 0;
    //c3 = 0;
    PVector v2 = new PVector(1,0,1);
    PVector p = v.cross(v2);
    rotate(angle, p.x, p.y, p.z);
    //stroke(255);
    //stroke(c1, c2, c3);
    stroke(0, 0, random(0,255)); 
    line(0, 0, 0, v.x*10, v.y*10, v.z*10);
  // line(c1,c4,c2,c3,100,200);
    stroke(c1,c2,c3);
    //fill(random(0,255),random(0,255),random(0,255));
    line(0, 0, 0, p.x*10, p.y*10, p.z*10);
      
    translate(v.x,v.y,v.z);
    noStroke();
   // c1 = map(v.x, 0, 1500, 0, 255);
    //c2 = map(v.y, 0, 1000, 0, 255);
    //c3 = map(v.x, 0, 1500, 0, 255);
    //fill(c1, c2, 0);
    fill(250,250,0);
    sphere(radius);
    //ellipse(0,0, radius*2, radius*2);   
    if (planets != null) {
    for (int i = 0; i < planets.length; i++){
      planets[i].show();
      }
    }
    popMatrix();
    //text("EPHEMERA HOUSE", 220, 40);
    if (keyPressed == true) {
     background(0);
    
    }

  }

  
}
