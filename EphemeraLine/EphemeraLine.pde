import processing.sound.*;
SoundFile file;
int line = 1;
int line2 = 1;
int now = 0;
//Ephemera e;
PFont f;


void setup(){
  // e = new Ephemera();
  size(900, 900);
  //e.Ephemerate();
  //e.display();
  f = createFont("SourceCodePro-Regular.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);
  file = new SoundFile(this, "07 drone1.mp3");
  file.play();  
}


void draw(){
if (line < 2){
  line(random(1,900), line2, 450, 450);
  line = line + 1;
  line2 = line2 + 50;
  //stroke(random(1,567), random(1,567), random(1,567));
  stroke(random(1,250),random(1,250),random(1,250));
} else {
  now = 1;
  line = 1;   
}

if (now == 1) {
  //fill(random(1,300));
  fill(random(1,250),random(1,250),random(1,250));
  ellipse(random(1,900), random(1,900), random(1,22), random(1, 21));  
} else { 
  now = 0;
}

if (line2 > 1000){ 
  line2 = 1;
}

  fill(random(1,250),random(1,250),random(1,250)); 
  text("EPHEMERA", 650, 250);
  text("EPHEMERA", 600, 200);
  text("EPHEMERA", 550, 150);
  fill(0,0,0);
  text("EPHEMERA HOUSE", 220, 850);

}
