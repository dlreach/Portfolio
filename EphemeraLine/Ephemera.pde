class Ephemera{
PFont g;


void Ephemerate(){

//fill(204, 102, 0); 
textSize(70);
//text("EPHEMERA", 150, 500);
}

void setup(){
 g = createFont("SourceCodePro-Regular.ttf", 20);
  textFont(g);
  textAlign(CENTER, CENTER);
  
}

void display(){
  fill(200, 152, 10); 
text("EPHEMERA", 150, 500);
}
}
