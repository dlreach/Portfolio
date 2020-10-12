class Speck {
  float xloc;
  float yloc;
  float xoff;
  float yoff;
  float count1;
  float r,g,b,a;
  Speck[] specks;
  
  
 Speck(float x, float y){
   xloc = x;
   yloc = y;
   xoff = random(-5,5);
   yoff = random(-5,5);
   float count = 20;
   count1 = count;
 }
 
void spawnSpecks(int total){
   specks = new Speck[total];
     
   for (int i = 0; i < specks.length; i++) {    
     float x = xloc+xoff;
     float y = yloc+yoff;     
     specks[i] = new Speck(x,y);     
     }
 }
  
  void show(){
     //color gradient
     r = map(xloc, 0, width, 0, 255);
     g = map(yloc, 0, height, 0, 255);
     b = map(xloc, 0, width, 0, 255);
     fill(r,g,b);
     //fill(200,100);
     ellipse(xloc,yloc,2, 2);   
    
     if (specks != null) {
       for (int i = 0; i < specks.length; i++){
      
        // if (specks[i].count1 >= 0){
        //  xloc = xloc+xoff;
        //  yloc = yloc+yoff;}
        specks[i].show();
          }
     }
   // cool pattern
    xloc = xloc+xoff-random(-10,10);
    yloc = yloc+yoff-random(-10,10);
 //  if (count1 >= 0){
 //  xloc = xloc+xoff;
 //  yloc = yloc+yoff;
 //  count1 = count1-random(0,1);
 //}
   
 
  }
  
  
}
