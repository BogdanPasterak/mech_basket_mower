ArrayList<Element> listE;
Mpoint pp;

void setup() {
  size(1200, 700);
  frameRate(25);
  surface.setTitle("Mech");
  surface.setLocation(0,50); 
  pp = new Mpoint(400,100);
}

void draw() {
    
  background(0); //<>//

  pp.draw();
  pp.move();
 
}
