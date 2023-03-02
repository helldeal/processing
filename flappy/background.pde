void background1(){
  
  noStroke();
    if(back==1){background(back1);fill(0,200,0);}
    if(back==2){background(back2);fill(#4D0909);}
    if(back==3){background(back3);fill(#FAC2C2);}
    if(back==4){background(back4);fill(#1E175D);}
    rectMode(CORNER);
    
  for(int i=0; i<=diff; i++){
    rect(i*width*300/1220+width/2-xmov,0,width*70/1220,ecart[i]); //tuyau haut
    rect(i*width*300/1220+width/2-xmov,ecart[i]+height*250/720,width*70/1220,height); //tuyau bas
    if (i*width*300/1220+width/2-xmov+width*70/1220==width*200/1220)score=score+1; //score
  }
}
