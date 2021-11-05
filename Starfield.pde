Particle [] p;

void setup() {
  size (800, 800);
  noStroke();
  p = new Particle[500];
  for ( int i = 0; i < p.length; i++) {
    p[i] = new Particle();
  }
  p[0] = new OddBall();
}

void draw () {
  background (#000000);
  for (int i = 0; i < p.length; i++) {
    p[i].show();
    p[i].move();
  
  }
}

class Particle {
  int myOpacity, myColor;
  double myAngle, mySpeed, myX, myY, mySize;
  Particle() {
    myX =  (Math.random()*820);
    myY =  (Math.random ()* 820);
    mySpeed =  (Math.random()*4)+3;
    myColor = (int)(Math.random()*255);
    myOpacity = (int)(Math.random()*100)+600;
    mySize = (Math.random()*15)+1;
    myAngle = Math.random()*2*Math.PI;
  }
class OddBall extends Particle {
  OddBall(){
    myX = (Math.random ()* 820);
    myY = myX;
    myColor = (int)(Math.random()*22);
    mySize = 40;
    mySpeed = 1;
    
  }
}


  void show() {
    fill (myColor, myOpacity);
    ellipse ((float)myX, (float) myY, (float) mySize, (float) mySize);
  }

  void move() {
    myX = myX + (Math.cos(myAngle))* mySpeed;
    myY = myY  + (Math.sin(myAngle))*mySpeed;
    if (myX >800 || myY > 800 || myX <0 || myY<0) {
      myX = 400;
      myY = 400;
    }
  }
}


class OddBall extends Particle {
  void move() {
    myX =  (Math.random()*820);
    myY =  (Math.random ()* 820);
    mySpeed =  (Math.random()*1)+1;
    myColor = (int)(Math.random()*245);
    mySize = (Math.random()*60)+20;
    myAngle = Math.random()*2*Math.PI;
  }
}
