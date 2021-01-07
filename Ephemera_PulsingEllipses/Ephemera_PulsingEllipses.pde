Ellipser a;
Ellipser b;
Ellipser c;
Ellipser d;
Ellipser e;


void setup() {
  size(1000,1000);
  background(0);
  a = new Ellipser(10, 10, 100, 5, 1, 250);
  b = new Ellipser(width - 10, 10, 100, 5, 1, 250);
  c = new Ellipser(10, height - 10, 100, 5, 1, 250);
  d = new Ellipser(width - 10, height - 10, 100, 5, 1, 250);
  e = new Ellipser(width/2, height/2, 100, 5, 1, 250);
}


void draw() {
  a.display();
  a.update();
  b.display();
  b.update();
  c.display();
  c.update();
  d.display();
  d.update();
  e.display();
  e.update();

}
