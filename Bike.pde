import processing.core.PApplet;
class Bike {
  
  float x;
  float y;
  float xD = 10;
  float yD = 0;
  float size;
  
  float angle = 0;
  
   Bike(float xi, float yi, float s) {
    x = xi;
    y = yi;
    size = s;

  }
  
   void display(PApplet mainProc) {  
   mainProc.pushMatrix();
   mainProc.translate(x,y); 
   mainProc.rotate(radians(angle));
   mainProc.stroke(0,0,0);
   mainProc.fill(255,255,255);  
   mainProc.ellipse(0,0,70,70);
   mainProc.line(35,0,-35,0);
   mainProc.line(0,35,0,-35);  
   mainProc.popMatrix();
      angle += 8;
  }
  
  void jump () {
    y = y + yD;
    
    if (mousePressed) {
  yD = -7;
  }
    if (y <= 380) {
    yD = -yD;
  }
  
  if (y > 555) {
    y = 555;
  } 
  }    
 
  void walk() {
   if (key == CODED) {
     if(keyCode == LEFT) {
     x = x - xD;
   } else if (keyCode == RIGHT) {
     x = x + xD;
   }
   }
  }
}