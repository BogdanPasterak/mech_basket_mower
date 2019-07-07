class Mpoint{
  float x, y, w;
  PVector v;

  public Mpoint(int x, int y){
    // x, y of center
    this.x = x;
    this.y = y;
    // rotate
    w = 0;
    v = new PVector(1, 0.05);
  }
  
  public void move(){
    w = w + PI/128;
    x += v.x;
    y += v.y;
  }
  
  //@Override
  public void draw(){

    pushMatrix();
    // move to center and rotate
    translate(x, y);
    rotate(w);
    // draw
    noFill();
    stroke(128);
    strokeWeight(2);
    // Object
    //line( 50, 0, 70, 0 );
    // center
    strokeWeight(1);
    line( -10, 0, 10, 0 );
    line( 0, 10, 0, -10 );
    // back to orgin
    popMatrix();
  }
  
  @Override
  public String toString(){
  
    return "[ x = " + x + ", y = " + y + ", w = " + w + " ]";
  }
}
