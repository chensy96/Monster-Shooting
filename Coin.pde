class Coin {
  
  float xc;
  float yc;
  
  boolean show = false;

  Coin(float xi, float yi) {
    xc = xi;
    yc = yi;
  }

  void display() {
    if(show) {
      xc = xc - 10;      
    if (xc < -900) {
    xc = random(1000,2000);
  }
    fill(255,237,34);
    ellipse(xc,yc,30,40);
    } else {
    ellipse(xc,yc,30,40);
  }
  }
  
  void show() {
    show = true;
  }
  
  void gain() {
    xc = 1500;
  }
  
 float getXc() {
  return xc;
}

float getYc() {
  return yc;
}

}