Speck specks;
//Speck specks2;

void setup(){
  size(1500,1000);
  specks = new Speck(width/2,height/2);
  // specks2 = new Speck(random(0,1500),random(0,1000)); 
  specks.spawnSpecks(1000);
  //specks2.spawnSpecks(100);
  background(0);
}


void draw(){
  //  background(0);
    specks.show();
  //  specks2.show();   
}
