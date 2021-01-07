float a,b = 0;
float c = 1;
float f = 5;
void setup() {
  //size(800,800);
 // size(1800,1000);
 fullScreen();
   // background(200,25,25);
}


void draw(){
  background(c,b,c);
 // clear();
 
 //if (c>800){f = f*-1;}
 if (c>1800){f = f*-1;}
 //if (c>255){f = f*-1;}
 if (c<0){f = f * -1;};
  c = c + f;
  stroke(1,c-1500,50);
    for(a=0;a<2000;a=a+60){
    //for(a=0;a<800;a=a+50){
    //b = 1*random(0,1000);
    for(b=0;b<2000;b=b+60){
    //for(a=0;a1800;a=a+50){
      //line(width/2,height/2,a*c,b*c);
      //line(width/2,height/2,a+10+c,b*c);
      //line(width/2,height/2,-a-10-c,-b*c);
      //line(width/2,height/2,a+100+c,b*c*10);
      //line(width/2,height/2,800+a*c,800+b*c);
      //line(width/2,height/2,-80-a*c,100+b*c);
      line(a,b,c,a);
     // line(b,a,a,c);
      
      //line(600,500,b,a);
      //c = c + random(0,10);
    }
  }
 // fill(50,a,a);
  //circle(c,c,c);
a=0;b=0;
}
