//float n = 0;
//float c = 8;
Phylo p;
Phylo q;
Phylo f;

void setup(){
  size(1500,900);
  colorMode(HSB);
  background(0);
  p = new Phylo(0, 8);
  q = new Phylo(0, 1);
  f = new Phylo(2, 11);
}

void draw(){
  p.display();
  q.display();
  f.display();
  //float a = n * radians(137.5);
  ////float a = n * radians(234);
  /////float a = n * radians(123.3);
  ////float a = n * radians(90.1);
  //float r = c * sqrt(n); 
  //float x = r * cos(a)+ width/2; 
  //float y = r * sin(a) + height/2;
  //fill(n%256, 255, 255);
  //noStroke();
  //ellipse(x,y,8,8);
  
  //n++;
}
