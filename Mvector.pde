class Mvector{
 private float x, y;
 // angel and distance
 private double a, d;
 
 public Mvector(float x, float y){
   this.x = x;
   this.y = y;
   recalc();
 }
 
 private void recalc(){
   a = Math.atan2(x, y);
   d = Math.hypot(x, y);
 }
 private void calcXY(){
   x = (float)(Math.cos(a) * d);
   y = (float)(Math.sin(a) * d);
 }
 
 public float getX(){ return x; }
 public float getY(){ return y; }
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
 
 public void setA(double a){
   this.a = a;
   calcXY();
 }
 public void setD(double d){
   this.d = d;
   calcXY();
 }
}
