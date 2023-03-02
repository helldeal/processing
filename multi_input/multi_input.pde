float x=width/2;
float y=height/2;
float xvel=0;
float yvel=0;
float frict = 0.97;
float vel = 0.6;
 
 
boolean isLeft, isRight, isUp, isDown; 
 
void setup() {
  size(800, 800);
  //fullScreen();
  background(0);
  frameRate(60);
 
  x=width/2;
  y=height/2;
}
 
void draw() {
 
  background(0);//cls
  x=x+xvel; 
  y=y+yvel;
  if (isLeft)xvel=xvel-frict;
  if (isRight)xvel=xvel+frict;
  if (isDown)yvel=yvel+frict;
  if (isUp)yvel=yvel-frict;
  yvel=yvel*frict;
  xvel=xvel*frict;
  println(x,y);
 
  rect(x, y, 50, 50);
  if (y<-30)y=0;
  if (x<-30)x=0;
  if (y>height-10)y=height-30;
  if (x>width-10)x=width-30;
}
 
void keyPressed() {
  setMove(keyCode, true);
  setMove(key, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
  setMove(key, false);
}
 
boolean setMove(int k, boolean b) {
  switch (k) {
  case 'z':
    return isUp = b;
 
  case 's':
    return isDown = b;
 
  case 'q':
    return isLeft = b;
 
  case 'd':
    return isRight = b;
 
  default:
    return b;
  }
}
