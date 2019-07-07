class Ppoint{
  float x, y, w;
  PVector v;

  public Ppoint(int x, int y){
    // x, y of center
    this.x = x;
    this.y = y;
    // rotate
    w = 0;
    v = new PVector(0.2, 0.05);
  }
  
  public void move(){
    w = w + PI/128;
    x += v.x;
    y += v.y;
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
    ellipse(x+20, y+50, 20, 20 );
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
