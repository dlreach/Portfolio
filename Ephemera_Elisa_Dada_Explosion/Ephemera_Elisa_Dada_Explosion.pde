Mover[] movers = new Mover[10000];
Twinkler t;

void setup() {
  fullScreen();
 // size(1500,1000);
  t = new Twinkler();
 for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); 
  
  }
}

void draw() {
  background(0);
  t.show();
  for (int i = 0; i < movers.length; i++) {
  // Update the position
  if (i < movers.length/2){
   fill(random(180,220),random(25,100),0,random(250));
  } else if (i > movers.length/2) {
    fill(random(180,220),0,0,random(250));
  }
  movers[i].update();
  // Display the Mover
  movers[i].display();
  }
}
