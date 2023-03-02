void end(){
    if(millis()-timesaut>10){
    isUp=false;}
  background(#5FC9DB);
   background1();
  bird.display();
  rectMode(CENTER);
  stroke(0);
  strokeWeight(2);
  fill(#F0C93A);
  rect(width/2,height/2,width/2,height/2);
  fill(0);
 textAlign(CENTER);
  textSize(height*100/720);
    text("SCORE : "+score,width/2,height/2);
    textSize(height*40/720);
    text("HIGHSCORE : "+scoreList,width/2,height/2+height*50/720);   
    if(isUp&&millis()-timeend>1000){
    setup();}
  
}
