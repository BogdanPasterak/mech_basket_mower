class Pendulum extends Element{
  
  public Pendulum(float x, float y, float a, float d){
    super( x, y, a, d );
  }
  
  @Override
  public void turn(){
    super.turn();
    if ( b == null ){
      a += PI / 100;
    }
    super.turnRest();
  }
  
  @Override
  public void addSlave(Element el ){
    super.addSlave( el );
  }
  
  @Override
  public void draw(){
    pushMatrix();
    translate(x, y);
    stroke(128);
    strokeWeight(1);
    fill(0);
    arc(0, 0, d * 2, d * 2, 0, HALF_PI );
    rotate(a);
    strokeWeight(1);
    line( -d / 8, 0, d / 8, 0 );
    line( 0, -d / 8, 0, d / 8 );
    popMatrix();
  }

  @Override
  public String toString(){
  
    return "[ x = " + x + ", y = " + y + ", a = " + a + " ]";
  }

}
