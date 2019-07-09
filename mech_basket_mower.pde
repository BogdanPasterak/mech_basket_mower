ArrayList<Element> listE;
Mcircular m;

void setup() {
  size(1200, 700);
  frameRate(25);
  surface.setTitle("Mech");
  surface.setLocation(0,50); 
  m = new Mcircular(100,100,80.5, 70, -PI/4);
}

void draw() {
    
  background(0); //<>//

  m.draw();
  //pp.move(2, 1);
  m.turn(-PI/128);
 
}
