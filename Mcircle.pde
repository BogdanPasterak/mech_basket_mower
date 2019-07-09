class Mcircle extends Mpoint{
  // radius
  float r;
  
  public Mcircle(float _x, float _y, float _r){
    super(_x, _y);
    r = _r;
  }
  
  @Override
  public void details(){
    super.details();
    strokeWeight(3);    
    ellipse(0, 0, r * 2, r * 2 );
  }
  
  
}
