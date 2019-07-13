class Vector{
  private float x, y;
  // angel and distance
  private double a, d;
  private float r;
  
  public Vector(float x, float y, float r){
    setXY(x, y);
    this.r = r;
  }
   
  public Vector(float x, float y){
    setXY(x, y);
    this.r = 0;
  }
   
  private void recalc(){
    a = Math.atan2(y, x);
    d = Math.hypot(x, y);
  }
  private void calcXY(){
    x = (float)(Math.cos(a) * d);
    y = (float)(Math.sin(a) * d);
  }
   
  public float getX(){ return x; }
  public float getY(){ return y; }
  public float getR(){ return r; }
  public double getA(){ return a; }
  public double getD(){ return d; }
   
  public void setX(float x) {
    this.x = x;
    recalc();
  }
  public void setY(float y) {
    this.y = y;
    recalc();
  }
  public void setXY(float x, float y) {
    this.x = x;
    this.y = y;
    recalc();
  }
  public void setR(float r) {
    this.r = r;
  }
   
  public void setA(double a){
    this.a = a;
    calcXY();
  }
  public void setD(double d){
    this.d = d;
    calcXY();
  }
  public void setAD(double a, double d){
    this.a = a;
    this.d = d;
    calcXY();
  }
}
