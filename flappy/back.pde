void back(){
    if(isUp&&millis()-timesaut>10){
    isUp=false;}
  background(#5FC9DB);
    rectMode(CORNER);
  fill(100,100,100,220);
    rect(width*1/10,height*1/11,width*3.5/10,height*1/10);rect(width*5.5/10,height*1/11,width*3.5/10,height*1/10);
    rect(width*1/10,height*3/11,width*3.5/10,height*1/10);rect(width*5.5/10,height*3/11,width*3.5/10,height*1/10);
    rect(width*1/10,height*5/11,width*3.5/10,height*1/10);rect(width*5.5/10,height*5/11,width*3.5/10,height*1/10);
    rect(width*1/10,height*7/11,width*3.5/10,height*1/10);rect(width*5.5/10,height*7/11,width*3.5/10,height*1/10);
    rect(width*3/10,height*9/11,width*4/10,height*1/10);
  if(isUp&&mouseX<width*7/10&&mouseX>width*3/10&&mouseY<height*10/11&&mouseY>height*9/11)setup();
  if(isUp&&mouseX<width*4.5/10&&mouseX>width*1/10&&mouseY<height*2/11&&mouseY>height*1/11){back =1;}if(back == 1){fill(255);rect(width*1/10,height*1/11,width*3.5/10,height*1/10);}
  if(isUp&&mouseX<width*4.5/10&&mouseX>width*1/10&&mouseY<height*4/11&&mouseY>height*3/11){back =2;}if(back == 2){fill(255);rect(width*1/10,height*3/11,width*3.5/10,height*1/10);}
  if(isUp&&mouseX<width*4.5/10&&mouseX>width*1/10&&mouseY<height*6/11&&mouseY>height*5/11){back =3;}if(back == 3){fill(255);rect(width*1/10,height*5/11,width*3.5/10,height*1/10);}
  if(isUp&&mouseX<width*4.5/10&&mouseX>width*1/10&&mouseY<height*8/11&&mouseY>height*7/11){back =4;}if(back == 4){fill(255);rect(width*1/10,height*7/11,width*3.5/10,height*1/10);}
}
