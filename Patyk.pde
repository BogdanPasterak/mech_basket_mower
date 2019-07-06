class Patyk {
  float x1,x2,y1,y2,o;
  public Patyk(){
    x1 = 200;
    y1 = 100;
    o = 0;
  }
  
  public void move(){
    o = o + PI/512;
    
  }
  
  public void draw(){
    pushMatrix();
    stroke(128);
    strokeWeight(5);
    fill(0);
    translate(x1, y1);
    rotate(o);
    translate(-x1, -y1);
    //ellipse(0, 0, 20, 20 );
    line( x1, y1, x1 + 200, y1 + 100 );
    popMatrix();

  }

}
