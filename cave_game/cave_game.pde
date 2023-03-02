int cols;
int rows;
int bias=42;
int[][] grid;
int[][] finalGrid;
int onGroundTimer=1000000000;
boolean isColliding;
int onGround=1;
boolean switch1;
boolean wasd=true;
boolean isLeft, isRight, isUp, isDown;
float x;
float y;
int unit;
int c;
float yVel=0;
float xVel=0;
boolean gravity=true;
int[] endingBlackValues;
boolean doneWithSimulation=false;

void setup() {
  fullScreen();
  unit=width/50;
  x=width/2;
  y=height/2;
  x=400;
  y=200;
  cols = width/5;
  rows = height/5;
  grid = new int[cols][rows];
  finalGrid = new int[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j] = int(random(100));
      if(grid[i][j]<bias)grid[i][j]=0;
      if(grid[i][j]>=bias)grid[i][j]=1;
    }
  }
}
void draw() {
  rectMode(CORNER);
  noStroke();
  fill(50);
  rect(0,0,width,height);
  fill(255,0,0);
  rectMode(CENTER);
  
  if(yVel<-20)yVel=-20;
  println("x: "+x);
  println("y: "+y);
  println(c);
  c+=1;
  smooth();
  

  
  onGroundTimer-=1;
  if(onGroundTimer>0)onGround=2;
  y=y-yVel/3.0;
  x=x+xVel/3.0;
  if(y>height-15){
    y=height-15;
    onGroundTimer=5;
  }
  if(y==height-15)yVel=-yVel*.30;
  if(isLeft && isRight)xVel=xVel*0.8;
  if(!(isRight && isLeft)){
   if (isLeft && abs(xVel)<6){
     if(xVel<-0.1)xVel=xVel*2;
     if(xVel>0.1)xVel=xVel-5;
    if(xVel<0.1 && xVel>-0.1)xVel=0.2;
   }  
   if (isRight && abs(xVel)<5){
    if(xVel>0.1)xVel=xVel*2;
    if(xVel<-0.1)xVel=xVel+5;
    if(xVel<0.1 && xVel>-0.1)xVel=0.2;
   }
  }
  if(isUp && onGround>1)yVel=20;
  if(isUp && onGround>0)onGround=onGround-1;
  if (!isRight && !isLeft)xVel=xVel*0.8;
  
  //Gravity
  if(gravity){
    if(yVel>0.3)yVel=yVel*0.9-0.06;
    if(yVel<0.5)yVel=-abs(yVel*1.1-0.06);
  } 
  
  
  
  
  //Buttons
  fill(255,127);
  rect(20, 20, 50, 30);
  fill(0,127);
  textSize(unit/2);
  text("close", 45, 35);
  
  
  
  
  //Key Indacator
  fill(255);
  rect(unit/4,height-2.75*unit,3.25*unit,2.5*unit);
  //W or Up
  fill(128,127);
  if(isUp)fill(255,127);
  rect(unit*3/2.0,height-7.0/4*unit,unit*3.0/4,unit/2.0);
  
  //A or Left
  fill(128,127);
  if(isLeft)fill(255,127);
  rect(unit/2.0,height-unit,unit*3.0/4,unit/2.0);
  
  //S or Down
  fill(128,127);
  if(isDown)fill(255,127);
  rect(unit*3/2.0,height-unit,unit*3.0/4,unit/2.0);
  
  //D or Right
  fill(128,127);
  if(isRight)fill(255,127);  
  rect(unit*5/2.0,height-unit,unit*3.0/4,unit/2.0);
  
  //WASD and arrow keys switcher
  textSize(unit/3);
  textAlign(CENTER, CENTER);
  fill(0);
  if(!switch1)text("ZQSD Mode",unit*1.875,height-8.875/4*unit);
  if(switch1)text("Arrow Keys Mode",unit*1.875,height-8.875/4*unit);
  fill(256);
  rect(unit/2.0,height-10.0/4*unit,unit*2.75,unit/2.0);
  
  fill(255);
  rect(x,y+6,3,3);
  if(!isDown)rect(x,y,3,9);
  rectMode(CORNER);
  
}
 
void mousePressed() {
  if (mouseX >= unit*0.5 && mouseX < unit*3.25 && mouseY >= height-2.5*unit && mouseY < height-2*unit) {
      if(switch1==true)switch1=false;
      else if(switch1==false)switch1=true;
  }
  if (mouseX >= 20 && mouseX < 70 && mouseY >= 20 && mouseY < 50) {
      exit();
  }
}

void keyPressed() {
  if(!switch1)setMove(key, true);
  if(switch1)setMove(keyCode, true);
}
 
void keyReleased() {
  if(!switch1)setMove(key, false);
  if(switch1)setMove(keyCode, false);
}
boolean setMove(int k, boolean b) {
  switch (k) {
  case 'z':
    return isUp = b;
  case UP:
    return isUp = b;
  case 's':
    return isDown = b;
  case DOWN:
    return isDown = b;
  case 'q':
    return isLeft = b;
  case LEFT:
    return isLeft = b;
  case 'd':
    return isRight = b;
  case RIGHT:
    return isRight = b;
  default:
    return b;
  }
}
void rectCollisions(int rectX,int rectY,int side){
 if(sq(x-rectX)+sq(y-rectY)<16000){
   collision(rectX, rectY, side);
   rectMode(CENTER);
   if(finalGrid[abs(rectX/10)][abs(rectY/10-1)]==0)fill(60,46,33);
   if(finalGrid[abs(rectX/10)][abs(rectY/10-1)]==1)fill(0,125,0);
   //if(finalGrid[abs(rectX/10)][abs(rectY/10+1)]==1 && finalGrid[abs(rectX/10)][abs(rectY/10+2)]==1 && finalGrid[abs(rectX/10)][abs(rectY/10+3)]==1 && finalGrid[abs(rectX/10)][abs(rectY/10+4)]==1 && finalGrid[abs(rectX/10)][abs(rectY/10+5)]==1)vine(rectX,rectY);
   rect(rectX,rectY,10,10);
 }
}
void collision(int squareX, int squareY, int sideLength){
  if(x-squareX*x-squareX+y-squareY*y-squareY<50){
    rectMode(CENTER);
    if(x<squareX+sideLength/2+3&&x>squareX-sideLength/2-3&&y-yVel<squareY+sideLength/2+9&&y>squareY-sideLength/2-9){
      if(abs(squareX-x)<abs(squareY-y)){
        if(y-squareY<0)y=squareY-sideLength/2-9; //top
        if(y-squareY<0)yVel=-yVel/2; //top
        if(y-squareY<0)onGroundTimer=25;
        if(y-squareY>0)y=squareY+sideLength/2+9; //top
        if(y-squareY>0)yVel=-yVel/2; //bottom
      }
      if(abs(squareX-x)>abs(squareY-y)){
        if(x-squareX<0)xVel=-xVel/2; //left
        if(x-squareX<0)x=x-1; //left
        if(x-squareX>0)xVel=-xVel/2; //right
        if(x-squareX>0)x=x+1; //right
      }
    }
    rectMode(CORNER);
  }
}


int numberOfNeighbors(int gridX, int gridY){
  int c=0;
  for (int i = gridX-1; i < gridX+2; i++) {
    for (int j = gridY-1; j < gridY+2; j++) {
      if(j!=-1 && i!=-1 && i!=cols && j!=rows){
        if(grid[i][j]==0){
          if(!(i==gridX && j==gridY)){
            c=c+1;
          }
        }
      }else{
       c=c+1;    
      }
    }
  }
  return(c);
}
void smooth(){
  fill(255);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      if(numberOfNeighbors(i,j)<4)finalGrid[i][j]=1;
      if(numberOfNeighbors(i,j)>6)finalGrid[i][j]=0;
      stroke(finalGrid[i][j]*256,127);
      rectMode(CENTER);
      if(grid[i][j]==0)rectCollisions(10*i,10*j,10);   
    }
  }
  if(finalGrid==grid && doneWithSimulation==false){
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        if(grid[i][j]==0){
          
        }
      }
    }   
  doneWithSimulation=true;
  }
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j]=finalGrid[i][j];
    }
  }
  rectMode(CORNER);
}
