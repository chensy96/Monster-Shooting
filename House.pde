//import processing.core.PApplet;

class House {
  
  float xh;
  float yh;
  
  boolean moveto = false;

  House(float xi, float yi) {
    xh = xi;
    yh = yi;
  }

  void display() {
    if(moveto) {
      xh = xh -5;      
    if (xh < -900) {
    xh = 1000;
  }
    fill(255,255,255);
    rect(xh,yh,100,100);
    fill(0,0,0);
    rect(xh+60,yh+15,20,20);
    rect(xh+20,yh+15,20,20);
    rect(xh+40,yh+60,25,40);
    triangle(xh,yh,xh+100,yh,xh+50,yh-40); 
    } else {
    fill(255,255,255);
    rect(xh,yh,100,100);
    fill(0,0,0);
    rect(xh+60,yh+15,20,20);
    rect(xh+20,yh+15,20,20);
    rect(xh+40,yh+60,25,40);
    triangle(xh,yh,xh+100,yh,xh+50,yh-40); 
  }
  }
  
  void moveto() {
    moveto = true;
  }
}