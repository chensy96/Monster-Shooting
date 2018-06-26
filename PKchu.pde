class Pk {
  
  PImage img;
  float xk;
  float yk;
  float sizek;

  boolean attack = false;
  
  Pk(float s,float x, float y) {
    sizek = s;
    xk = x;
    yk = y;
    img = loadImage("pk.png");
  }
  
 void display() {
   if(attack) {
      xk = xk -6;      
    if (xk < 0) {
    xk = 1000;
  }
    image(img, xk, yk, img.width/6, img.height/6);
    } else {
      image(img, xk, yk, img.width/6, img.height/6);
    }
 }
 
void attack() {
    attack = true;
  }
  
void boom() {
    xk = 1200;
    xk = xk -6; 
  }
  
  
  float getXk() {
  return xk;
}

  float getYk() {
  return yk;
}

  float getSizek() {
  return sizek;
}
}