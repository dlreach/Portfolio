Mover[] movers = new Mover[8000];

void setup() {
  size(1500,1000);
 for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); 
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < movers.length; i++) {
  // Update the position
  movers[i].update();
  // Display the Mover
  movers[i].display(); 
  }
}
