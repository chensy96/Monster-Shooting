class Pong {
  
  float xp;
  float yp;
  float s;
  float size;
  
  Pong(float sz,float x, float y, float ss) {
    size = sz;
    xp = x;
    yp = y;
    s = ss;
  }
  
    boolean draw() {
    fill(0,0,0);
    ellipse(xp,yp,10,10);
    xp+=s;
    return(xp > width+100);
  }
  
  float getXp() {
  return xp;
}

float getYp() {
  return yp;
}
}