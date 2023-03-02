int xmov;
int i;
float ecart[]= new float[diff+1];
float sp=100;
int timesaut;
int timeend;
void game(){
  gravity();
    xmov=xmov+1;
    rectMode(CORNER);
    fill(0,200,0);
    background1();
    //collision
    for(int i=0; i<=diff; i++){
    if(y>(ecart[i]+height*250/720-width*20/1220) && x>=(i*width*300/1220+width/2-xmov-width*20/1220) && x<=(i*width*300/1220+width/2-xmov+width*70/1220+width*20/1220)
  || y<ecart[i]+width*20/1220 && x>=(i*width*300/1220+width/2-xmov-width*20/1220) && x<=(i*width*300/1220+width/2-xmov+width*70/1220+width*20/1220))
    {page="end";timeend=millis();}
    if(y<0||y>height-10){page="end";timeend=millis();}
   }
  fill(0);
 textAlign(CENTER);
  textSize(height*30/720);
    text(round(frameRate)+"score = "+score,width/2,height*30/720);
  bird.display();
    if(isUp&&millis()-timesaut>150){
    isUp=false;}
}
