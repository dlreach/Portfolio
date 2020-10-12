class EllipseSystem {
  ArrayList<Ellipse> Ellipses;
  PVector origin;

  EllipseSystem(PVector position) {    
    Ellipses = new ArrayList<Ellipse>();
  }

  void addEllipse() {
    Ellipses.add(new Ellipse());
    Ellipses.add(new Ellipse());
    Ellipses.add(new Ellipse());
  }

 void run() {
    for (int i = Ellipses.size()-1; i >= 0; i--) {
      Ellipse p = Ellipses.get(i);
      p.show();     
    }
  }
}
