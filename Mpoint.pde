class Mpoint{
  // position (x, y)
  float x, y;
  // rotation (rad)
  float w;

  public Mpoint(float _x, float _y){
    // x, y of center
    x = _x;
    y = _y;
    // rotate
    w = 0;
  }
  
  public void move(float _x, float _y){
    x += _x;
    y += _y;
  }
  
  public void turn(float _w ){
    w += _w;
  }
  
  public void details(){
    noFill();
    stroke(128);
    strokeWeight(1);
    line( -10, 0, 10, 0 );
    line( 0, 10, 0, -10 );

  }; 
  
  //@Override
  public void draw(){

    pushMatrix();
    // move to center and rotate
    translate(x, y);
    rotate(w);
    // draw
    details();
    // back to orgin
    popMatrix();
  }
  
  @Override
  public String toString(){
  
    return "[ x = " + x + ", y = " + y + ", w = " + w + " ]";
  }
}
