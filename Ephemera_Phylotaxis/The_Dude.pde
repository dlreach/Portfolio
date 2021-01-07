class Phylo {
  float n, c;

 Phylo(float nn, float cc){
   n = nn;
   c = cc;
 }
  
  
  void display(){
    float a = n * radians(137.5);
  //float a = n * radians(234);
  ///float a = n * radians(123.3);
  //float a = n * radians(90.1);
  float r = c * sqrt(n); 
  float x = r * cos(a)+ width/2; 
  float y = r * sin(a) + height/2;
  fill(n%256, 255, 255);
  noStroke();
  ellipse(x,y,8,8);
  
  n++;
    
  }
  
}
