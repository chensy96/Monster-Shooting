import java.util.Iterator;

float score;
String name = "";
Boolean Gameover = false;

ArrayList<House> houseList;
ArrayList<Pk> pkList;
ArrayList<Pong> pongList;
ArrayList<Explo> exploList;
ArrayList<Coin> coinList;

House A;
Monster theMonster;
Bike theBike;
Pk pkchu;
Pong pong;
Explo explosion;
Coin thecoin;

void setup() { 
  size (1000,600);
  textSize(40);
  score = 0;
  
  theMonster = new Monster(80,500,420);
  theBike = new Bike(theMonster.getX()+25,theMonster.getY()+135,70);    

  houseList = new ArrayList<House>();
  float xh = 0;
  while (houseList.size() < 5) {
    houseList.add(new House(xh, 499));
    if (houseList.size() % 40 == 0) {
      xh = 0;
    } else {
      xh = xh + 390;
      }
    }

  pkList = new ArrayList<Pk>();
   float xk = 0;
   while (pkList.size() < 1) {
   pkList.add(new Pk(75,xk, 370));
   }
   
  pongList = new ArrayList<Pong>();
   int index = pongList.size()-1;
   while (index > 0){
     index--;
     Pong pong = pongList.get(index);
     pong.draw();
   }
     
  exploList = new ArrayList<Explo>();
    
  coinList = new ArrayList<Coin>();
    float xc = 0;
    while (coinList.size() < 2) {
    coinList.add(new Coin(xc, random(270,520)));
    if (coinList.size() % 40 == 0) {
      xc = 0;
    } else {
      xc = xc + 390;}
    }
  }


void draw() {
  background(255,255,255);
  fill(0,0,0);
  text(score,100,200);
    
  theMonster.display(this);
  theMonster.jump();
  
  theBike.display(this);
  theBike.jump();
    
  Iterator<House> houseIterator = houseList.iterator();
   while (houseIterator.hasNext()) {
    House A = houseIterator.next();
    A.display();
   }
   for (House A: houseList) {
    A.moveto();
  }
  
  Iterator<Pk> pkIterator = pkList.iterator();
   while (pkIterator.hasNext()) {
    Pk pkchu = pkIterator.next();
    pkchu.display();    
   if(theMonster.getX() > pkchu.getXk() && theMonster.getX() < pkchu.getXk() + pkchu.getSizek() && theMonster.getY() > pkchu.getYk() && theMonster.getY() < pkchu.getYk() + pkchu.getSizek()){      
    Gameover = true;
    exploList.add(new Explo(1000, theMonster.getX(), theMonster.getY()) );
    theMonster.boom(); }
    }
  for (Pk pkchu: pkList) {
   pkchu.attack();
  } 
  
  Iterator<Pong> pongIterator = pongList.iterator();
   while (pongIterator.hasNext()) {
     Pong pong = pongIterator.next();
     pong.draw();
     Iterator<Pk> pkcIterator = pkList.iterator();
   while (pkcIterator.hasNext()) {
        Pk pkchu = pkcIterator.next();
   if(pong.getXp() > pkchu.getXk() && pong.getXp() < pkchu.getXk() + pkchu.getSizek() && pong.getYp() > pkchu.getYk() && pong.getYp() < pkchu.getYk() + pkchu.getSizek()){      
      pkchu.boom();
      score = score+1;     
    }
   if(pong.getXp() > 1000) {
      pongIterator.remove(); }
    }
  }
  
  for(Explo Explosion : exploList) {
      Explosion.display(this);
      Explosion.update();
    }
    
  Iterator<Coin> coinIterator = coinList.iterator();
   while (coinIterator.hasNext()) {
    Coin thecoin = coinIterator.next();
    thecoin.display();
   if(thecoin.getXc() > theMonster.getX() && thecoin.getXc() < theMonster.getX() + theMonster.getSize() && thecoin.getYc() > theMonster.getY() && thecoin.getYc() < theMonster.getY() + theMonster.getSize()){      
      thecoin.gain();
      score = score+1; }
    }
   for (Coin thecoin: coinList) {
    thecoin.show();
  }
  
   if (Gameover) {
    fill(187, 10, 30);
    text("Game Over",500,200);
    text("Press Enter to Restart",500,300);
  }
}
 
  void keyPressed() { 
    theMonster.walk();
    theBike.walk();    
    if(key == ' '){ 
      pongList.add(new Pong(10,theMonster.getX()+5 , theMonster.getY()+20, map(theMonster.getX(), 0, 400, 1, 10)));
    }
    if(key == ENTER){
     reset();}
    }
  
   void reset(){
    score = 0;
    textSize(40);
    theMonster = new Monster(100,500,420);
    theBike = new Bike(theMonster.getX()+25,theMonster.getY()+135,70);   
    exploList = new ArrayList<Explo>();
    Gameover = false; 
  }
   



  
 

 
 