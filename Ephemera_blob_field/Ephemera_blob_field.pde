PFont f;
Blob[] blobs = new Blob[600];

void setup() {
  size(1000,1000);
  f = loadFont("Tahoma-30.vlw");
  textFont(f);
  for (int i = 0; i < blobs.length; i++){
    blobs[i] = new Blob();
  }
  
}

void draw(){
  background(0);
  fill(255);
 text("Ephemra House",40,40);
  // set to middle of screen
  translate(width/2,height/2);
  for (int i = 0; i < blobs.length; i++){
    blobs[i].update();
    blobs[i].show();
 
  }
  
  
  
}
