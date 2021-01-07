Block[] blocks = new Block[500];

color color_burn(color a, color b) {
  return color(255-(255-red(b))/red(a)*255,255-(255-green(b))/green(a)*255,255-(255-blue(b))/blue(a)*255);
}

void setup(){
  size(1800,1000);
  background(0);
  loadPixels();
  for (int x = 0;x < width;x++) {
    for (int y = 0;y < height;y++) {
      float bright = noise(x*0.02, (y-x*0.7)*0.02) * 200 * min(float(min(x, height-x) + height )/height, float(min(y, width-y) + width)/width,1.1);      if (random(1.0) < 0.25) { bright = bright * random(0.9,1.); }
      pixels[x+y*width] = color_burn(color(bright+50),#DC143C);
    }
  }
  updatePixels(); 
  
  
  for (int i = 0; i < blocks.length; i++) {
    blocks[i] = new Block(random(width), random(height), random(100)); 
  }
  
  for (int i = 0; i < blocks.length; i++) {
   blocks[i].display();
   
  }
  
  
}

void draw(){ 
  //background(255);
  
  for (int i = 0; i < blocks.length; i++)  {   
  //  blocks[i].display();
    blocks[i].update();
  }
  
}
