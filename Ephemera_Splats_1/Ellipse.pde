class Ellipse {
  float x = random(width);
  float y = random(height);
  float x1 = .5;
  float y1 = .5;
  
  void show(){
     fill(random(0,255),100,random(0,255));
     ellipse(x,y,x1,y1); 
     ellipse(x+random(-5,5),y+random(-5,5),x1,y1);
     ellipse(x+random(-5,6),y+random(-5,6),x1,y1);
     ellipse(x+random(-10,10),y+random(-10,10),x1,y1);
     ellipse(x+random(-15,15),y+random(-15,15),x1,y1);
     ellipse(x+random(-19,19),y+random(-19,19),x1,y1);
     ellipse(x+random(-2,2),y+random(-1,1),x1,y1);
     ellipse(x+random(-22,22),y+random(-21,21),x1,y1);
     ellipse(x+random(-25,25),y+random(-21,21),x1,y1);
     ellipse(x+random(-1,1),y+random(-22,22),x1,y1);
     ellipse(x+random(-12,12),y+random(-22,22),x1,y1);
     ellipse(x+random(-1,1),y+random(-22,22),x1,y1);
     ellipse(x+random(-32,32),y+random(-1,1),x1,y1);
     ellipse(x+random(-3,3),y+random(-1,1),x1,y1);
     ellipse(x+random(-12,12),y+random(-3,3),x1,y1);
     ellipse(x+random(-1,1),y+random(-3,3),x1,y1);
     ellipse(x+random(-4,4),y+random(-42,42),x1,y1);
     ellipse(x+random(-5,5),y+random(-5,5),x1,y1);
     ellipse(x+random(-6,6),y+random(-62,62),x1,y1);
     ellipse(x+random(-7,7),y+random(-7,7),x1,y1); 
     ellipse(x+random(-32,32),y+random(-1,1),2,2);
     ellipse(x+random(-3,3),y+random(-1,1),2,2);
     ellipse(x+random(-12,12),y+random(-3,3),3,3);
     ellipse(x+random(-1,1),y+random(-3,3),3,3);
     ellipse(x+random(-4,4),y+random(-42,42),4,4);
   
    //if (x < width/5 || x > 800)
    //  { 
    //    fill(0);
    //    makeEllipses(x,y,x1,y1);
    //  }
      
    //  if (y < height/5 || y > 800)
    //    {
    //     fill(0);
    //      makeEllipses(x,y,x1,y1);
    //    }     
        
    //if (x > width/5 && x < 800)
    //{ 
    //fill(0);
    //  makeEllipses(x,y,x1*2,y1*2);
    //}
      
    //if (y > height/5 && y < 800)
    //  {
    //    fill(0);
    //    makeEllipses(x,y,x1*5,y1*5);
    //  }        
  }

   void makeEllipses(float x, float y, float x1, float y1){   
     ellipse(x,y,x1,y1); 
     ellipse(x+random(-5,5),y+random(-5,5),x1,y1);
     ellipse(x+random(-5,6),y+random(-5,6),x1,y1);
     ellipse(x+random(-10,10),y+random(-10,10),x1,y1);
     ellipse(x+random(-15,15),y+random(-15,15),x1,y1);
     ellipse(x+random(-19,19),y+random(-19,19),x1,y1);
     ellipse(x+random(-2,2),y+random(-1,1),x1,y1);
     ellipse(x+random(-22,22),y+random(-21,21),x1,y1);
     ellipse(x+random(-25,25),y+random(-21,21),x1,y1);
     ellipse(x+random(-1,1),y+random(-22,22),x1,y1);
     ellipse(x+random(-12,12),y+random(-22,22),x1,y1);
     ellipse(x+random(-1,1),y+random(-22,22),x1,y1);
     ellipse(x+random(-32,32),y+random(-1,1),x1,y1);
     ellipse(x+random(-3,3),y+random(-1,1),x1,y1);
     ellipse(x+random(-12,12),y+random(-3,3),x1,y1);
     ellipse(x+random(-1,1),y+random(-3,3),x1,y1);
     ellipse(x+random(-4,4),y+random(-42,42),x1,y1);
     ellipse(x+random(-5,5),y+random(-5,5),x1,y1);
     ellipse(x+random(-6,6),y+random(-62,62),x1,y1);
     ellipse(x+random(-7,7),y+random(-7,7),x1,y1);
  }
}
