void start1(){
    if(isUp&&millis()-timesaut>10){
    isUp=false;}
  background(#5FC9DB);
  if(lines1[0]=="2")background(0);
    rectMode(CORNER);
    fill(0,200,0);
  background1();
  bird.display();
  fill(100,100,100,220);
  rectMode(CENTER);
  stroke(0);
  strokeWeight(2);
  rect(width/2,height/2-height*40/720,width*1/3,height*1/3);
  rect(width/2-width*1/6,height-width*1/10,width*1/8,width*1/8);
  rect(width/2,height-width*1/10,width*1/8,width*1/8);
  rect(width/2+width*1/6,height-width*1/10,width*1/8,width*1/8);
  fill(0);
 textAlign(CENTER);
  textSize(height*100/720);
    text("PLAY",width/2,height/2);
  if(isUp&&mouseX<width/2+width*1/6&&mouseX>width/2-width*1/6&&mouseY<height/2-height*40/720+height*1/6&&mouseY>height/2-height*40/720-height*1/6){page ="game";}
  if(isUp&&mouseX<width/2+width*1/16&&mouseX>width/2-width*1/16&&mouseY<height-width*1/10+width*1/16&&mouseY>height-width*1/10-width*1/16){page ="back";}
  if(isUp&&mouseX<width/2-width*1/6+width*1/16&&mouseX>width/2-width*1/6-width*1/16&&mouseY<height-width*1/10+width*1/16&&mouseY>height-width*1/10-width*1/16){page ="skin";}
}
