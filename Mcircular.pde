class Mcircular extends Mcircle{
  // Mpoint pin
  Mpoint pin;
  
  public Mcircular(float _x, float _y, float _r, float _dist, float _direc){
    super(_x, _y, _r);
    r = _r;
    pin = new Mpoint((float)(Math.cos(_direc)*_dist), (float)(Math.sin(_direc)*_dist));
  }
  
  @Override
  public void details(){
    super.details();
    pin.draw();
  }
  
  
}
