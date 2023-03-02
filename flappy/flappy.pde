bird bird = new bird(1);
import java.util.List;
String page;
int diff=999;
  int score;
  String background;
  int back;
  int skin;
  
void setup(){
  fullScreen(2);
  smooth();
  orientation(LANDSCAPE);
  frameRate(120);
  loaddata();
  page = "start";
  y=height/2;
  x=width*200/1220;
  xmov=0;
  score=0;
  for(int i=0; i<=diff; i++){
    ecart[i]=random(height/10,height-height*322/720);
  }
}

void draw(){
  cache1();
  if(page=="start"){
    start1();
  }
  if(page=="game"){
    game();
  }
  if(page=="end"){
    end();
  }
  if(page=="skin"){
    skin();
  }
  if(page=="back"){
    back();
  }

}
