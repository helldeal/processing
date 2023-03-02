int onGroundTimer=1000000000;
int onGround=1;
float x;
float y;
float T;
float yVel=0;
float xVel=0;
boolean gravity=true;
void gravity() {
  onGroundTimer-=1;
   if (x<=410){
    if(y>600)x=410;}
  if (x<=400){
    if(y<600){
    T=130;}
  } else T=10;
  if (onGroundTimer>0)onGround=2;
  y=y-yVel/3.0;
  x=x+xVel/3.0;
  if (y>height-T) {
    y=height-T;
    onGroundTimer=5;
  }
  if (y==height-T)yVel=-yVel*.30;
  if (isLeft && isRight)xVel=xVel*0.8;
  if (!(isRight && isLeft)) {
    if (isLeft && abs(xVel)<6) {
      if (xVel<-0.1)xVel=xVel*2;
      if (xVel>0.1)xVel=xVel-5;
      if (xVel<0.1 && xVel>-0.1)xVel=0.2;
    }  
    if (isRight && abs(xVel)<5) {
      if (xVel>0.1)xVel=xVel*2;
      if (xVel<-0.1)xVel=xVel+5;
      if (xVel<0.1 && xVel>-0.1)xVel=0.2;
    }
  }
  if (isUp && onGround>1)yVel=40;
  if (isUp && onGround>0)onGround=onGround-2;
  if (!isRight && !isLeft)xVel=xVel*0.8;

  //Gravity
  if (gravity) {
    if (yVel>0.3)yVel=yVel*0.9-0.06;
    if (yVel<0.5)yVel=-abs(yVel*1.1-0.06);
  }
}
