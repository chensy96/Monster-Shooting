import processing.core.PApplet;
import java.util.ArrayList;

class Explo {
  ArrayList<Particle> particleList;
  
  float xPos;
  float yPos;
  float size  =5;
  
  Explo(int numParticles, float xPosint, float yPosint) {
    xPos = xPosint;
    yPos = yPosint;
    particleList = new ArrayList<Particle>();
    while (particleList.size() < 100) {
      particleList.add(new Particle(xPos, yPos, size, 187, 10, 30));
    }
  }
  
  void display(PApplet mainProc) {
    for (Particle theParticle : particleList) {
      theParticle.display(mainProc);
    }
  }
  
  void update() {
    for (Particle theParticle: particleList) {
      theParticle.update();
    }
    particleList.add(new Particle(xPos, yPos, size, 255, 0 ,0));
  }
}