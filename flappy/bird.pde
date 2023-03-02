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
  if (onGroundTimer>0)onGround=2;
  y=y-yVel/3.0;
  if (y>height-T) {
    y=height-T;
    onGroundTimer=5;
  }
  
  if (isUp)yVel=30;
  if (onGround>0)onGround=onGround-2;

  //Gravity
  if (gravity) {
    if (yVel>0.3)yVel=yVel*0.9-0.06;
    if (yVel<0.5)yVel=-abs(yVel*1.1-0.06)*0.95;
  }
}

class bird{
  float taille;
  bird(float taille){
    this.taille=taille;
  }
  void display(){
    
  noStroke();
    rectMode(CENTER);
    ellipseMode(CENTER);
    fill(250,0,0);
    ellipse(width*200/1220,y,taille*width*40/1220,taille*width*40/1220);
      
    
  }
}
