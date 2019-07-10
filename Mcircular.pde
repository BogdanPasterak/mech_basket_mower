class Mcircular extends Mcircle{
  // Mpoint pin
  Mpoint pin;
  float dist, direc;
  
  public Mcircular(float _x, float _y, float _r, float _dist, float _direc){
    super(_x, _y, _r);

    dist = _dist;
    direc = _direc;
    
    float xPin = (float)(Math.cos(_direc)*_dist);
    float yPin = (float)(Math.sin(_direc)*_dist);
    
    pin = new Mpoint(xPin, yPin);
  }
  
  public void print(){
    float k = w + direc;
    
    float xPin = (float)(Math.cos(k)*dist);
    float yPin = (float)(Math.sin(k)*dist);
    System.out.println("x = " + (x + xPin) + ",  y = " + (y + yPin));
  }
  
  @Override
  public void details(){
    super.details();
    pin.draw();
  }
  
  
}
