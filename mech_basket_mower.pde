ArrayList<Element> listE;
Ppoint pp;
Patyk p;

void setup() {
  size(1200, 700);
  frameRate(25);
  //background(0);
  
  listE = new ArrayList<Element>();

  listE.add( new Pendulum( 200.0, 200.0, 0.0, 130.0 ) );
  //listE.add( new Gearwheel( 500.0, 200.0, 0.0, 170.0 ) );
  //listE.add( new Pulley( 800.0, 200.0, 0.0, 30.0 ) );
  //listE.add( new Gearwheel( 800.0, 400.0, 0.0, 170.0) );
  //listE.add( new Pulley( 300.0, 500.0, 0.0, 100.0 ) );
  //listE.add( new Bearing( 380.0, 500.0 ) );
  //listE.add( new Ways( 950.0, 400.0 ) );

  //listE.get(0).addSlave( listE.get(1) );
  //listE.get(0).addSlave( listE.get(4) );
  //listE.get(1).addSlave( listE.get(2) );
  //listE.get(2).addSlave( listE.get(3) );
  //listE.get(4).addSlave( listE.get(5) );
  //listE.get(3).addSlave( listE.get(6) );
  pp = new Ppoint(400,20);
  p = new Patyk();
}

void draw() {
  background(0); //<>//
  
  p.draw();
  p.move();

  //System.out.println(pp);
  pp.draw();

  for ( Element e : listE )
    e.draw();
    
  //System.out.println(listE.get(0));

  pp.move();
  listE.get(0).turn( );
  

}
