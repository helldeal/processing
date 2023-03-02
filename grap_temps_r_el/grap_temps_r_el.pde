
int x=1;
int master[]= new int[800];
int test[]= new int[800];
int o;
float s=second();
float timer;
int tar;
boolean ok=false;
int col1;
int col2;
void setup(){
  size(800,400);
  background(0);
  textAlign(CENTER);
  textSize(15);
  fill(255);
  col1=200;
  col2=0;
  rectMode(CORNER);
for ( int i = 0 ; i< master.length ; i++) {
master [i] = int(random(0,800)) ;
      print(master [i] + "|"); }println();
      test=sort(master);
}
void draw(){
  background(0);
  noStroke();
  timer=millis();
  println(ok);
  print(test);
  
  for(int i = 0; i < master.length; i++)
  {
    
  if ( master[i] != test[i] )
  {
     ok = false;
  }
}
    
   if (ok){
  col1=0;
  col2=200;
  
  for ( int i = 0 ; i< master.length ; i++) {
    if (x<master.length){
      x=x+1;
      o=i+1;
       if (master [i]>master [o]){
      tar=master [i];
      master [i]=master [o];
      master [o]=tar;}
      fill(col1,col2,0);
      rect(i*2,height,2,-master[i]);
      print(master [i] + "|");}
      
      
      else if (x==master.length){
         
         println();
         x=1;o=0;}
}}
   if (!ok){
  col1=200;
  col2=0;
  
  for ( int i = 0 ; i< master.length ; i++) {
    if (x<master.length){
      x=x+1;
      o=i+1;
       if (master [i]>master [o]){
      tar=master [i];
      master [i]=master [o];
      master [o]=tar;}
      fill(col1,col2,0);
      rect(i*2,height,2,-master[i]);
      print(master [i] + "|");}
      
      
      else if (x==master.length){
         
         println();
         x=1;o=0;}
}}
     
}
