void date() {
  int jour = day();
  int mois = month();
  int annee = year();
  textAlign(CENTER);
  fill(#FF0303);
  PFont font;
  font = loadFont("OCRAExtended-90.vlw");
  textFont(font);
  if (jour<10){
    text(jour,545-160,370);
    text(0,545-210,370);
  }
  else {
    text(jour,545-180,370);
  }
  text("/",545-110,370);
  if (mois<10){
    text(mois,545-15,370);
    text(0,545-65,370);
  }
  else{
    text(mois,545-40,370);
  }
  text("/",545+30,370);
  text(annee,545+160,370);
  
}
