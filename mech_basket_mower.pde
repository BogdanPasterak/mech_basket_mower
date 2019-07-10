ArrayList<Mpoint> listM;
Mcircular m;

void setup() {
  size(1200, 700);
  frameRate(25);
  surface.setTitle("Mech");
  surface.setLocation(2,50); 
  listM = new ArrayList<Mpoint>();
  listM.add(new Mcircular(100,100,80.2, 65, -PI/4));
  listM.add(new Mcircular(400,250,220.2, 200, -PI/4));

}

void draw() {
    
  background(0); //<>//

  listM.get(0).draw();
  listM.get(1).draw();

  
  listM.get(0).turn(-PI/128);
 
}
