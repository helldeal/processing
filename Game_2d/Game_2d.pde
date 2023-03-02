player player = new player(0);

void setup(){
  size(1260,720,P3D);
  frameRate(60);
}

void draw(){
  background(0);
  gravity();
  player.display();
  rectMode (CORNER);
  fill(255);
  rect(0,600,400,200);
}  
