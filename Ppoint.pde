class Ppoint{
  float x, y, w;

  public Ppoint(int x, int y){
    // x, y of center
    this.x = x;
    this.y = y;
    // rotate
    w = 0;
  }
  
  public void move(){
    w = w + PI/256;
  }
  
  //@Override
  public void draw(){

    pushMatrix();
    stroke(128);
    strokeWeight(2);
    fill(0);
    translate(x, y);
    rotate(w);
    translate(-x, -y);
    //ellipse(0, 0, 20, 20 );
    strokeWeight(1);
    line( x - 10, y, x + 10, y );
    line( x, y + 10, x, y - 10 );
    popMatrix();
  }
  
  @Override
  public String toString(){
  
    return "[ x = " + x + ", y = " + y + ", w = " + w + " ]";
  }
}
