import processing.core.PApplet;

class Monster {

  float xm;
  float ym;
  float xmD = 10;
  float ymD = 0;
  float size;
  
  Monster(float s, float xi, float yi) {
    size = s;
    xm = xi;
    ym = yi; 
}

  void display(PApplet mainProc) {
   mainProc.fill(0,0,0);
   mainProc.rect(xm,ym,50,100);
   mainProc.fill(255,255,255);
   mainProc.ellipse(xm+18,ym+20,10,10);
   mainProc.ellipse(xm+40,ym+20,10,10);
   mainProc.rect(xm+20,ym+35,20,5);
    }
   
  void jump () {
    ym = ym + ymD;
    
    if (mousePressed) {
  ymD = -7;
  }
    if (ym <= 250) {
    ymD = -ymD;
  }
  
  if (ym > 420) {
    ym = 420;
  } 
  } 
 
  void walk() {
   if (key == CODED) {
     if(keyCode == LEFT) {
     xm = xm - xmD;
   } else if (keyCode == RIGHT) {
     xm = xm + xmD;}
   }
  }
  
  void boom() {
    xm = 1200;
  }
  
  float getX() {
  return xm;
}

  float getY() {
  return ym;
}

  float getSize() {
  return size;
}
   }






    
 
 