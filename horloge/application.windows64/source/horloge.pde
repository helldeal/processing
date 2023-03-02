//Déclaration et création de plusieurs instances de l'objet Segment
Segment maSegmentB = new Segment(145, 35);
Segment maSegmentC = new Segment(145, 155);
Segment maSegmentF = new Segment(25, 35);
Segment maSegmentE = new Segment(25, 155);
Segment maSegmentG = new Segment(35, 145);
Segment maSegmentA = new Segment(35, 25);
Segment maSegmentD = new Segment(35, 265);
Segment maSegment2B = new Segment(145+180, 35);
Segment maSegment2C = new Segment(145+180, 155);
Segment maSegment2F = new Segment(25+180, 35);
Segment maSegment2E = new Segment(25+180, 155);
Segment maSegment2G = new Segment(35+180, 145);
Segment maSegment2A = new Segment(35+180, 25);
Segment maSegment2D = new Segment(35+180, 265);
Segment maSegment3B = new Segment(145+390, 35);
Segment maSegment3C = new Segment(145+390, 155);
Segment maSegment3F = new Segment(25+390, 35);
Segment maSegment3E = new Segment(25+390, 155);
Segment maSegment3G = new Segment(35+390, 145);
Segment maSegment3A = new Segment(35+390, 25);
Segment maSegment3D = new Segment(35+390, 265);
Segment maSegment4B = new Segment(145+570, 35);
Segment maSegment4C = new Segment(145+570, 155);
Segment maSegment4F = new Segment(25+570, 35);
Segment maSegment4E = new Segment(25+570, 155);
Segment maSegment4G = new Segment(35+570, 145);
Segment maSegment4A = new Segment(35+570, 25);
Segment maSegment4D = new Segment(35+570, 265);
Segment maSegment5B = new Segment(145+780, 35);
Segment maSegment5C = new Segment(145+780, 155);
Segment maSegment5F = new Segment(25+780, 35);
Segment maSegment5E = new Segment(25+780, 155);
Segment maSegment5G = new Segment(35+780, 145);
Segment maSegment5A = new Segment(35+780, 25);
Segment maSegment5D = new Segment(35+780, 265);
Segment maSegment6B = new Segment(145+960, 35);
Segment maSegment6C = new Segment(145+960, 155);
Segment maSegment6F = new Segment(25+960, 35);
Segment maSegment6E = new Segment(25+960, 155);
Segment maSegment6G = new Segment(35+960, 145);
Segment maSegment6A = new Segment(35+960, 25);
Segment maSegment6D = new Segment(35+960, 265);
int i;
void setup() {
background(0);
smooth(); //Lissage des dessins
size(1130, 400); //Taille de la fenêtre
}
void draw() {
noStroke();
heure();
minutes();
seconde();
carresplit();
date();
}
class Segment {
//Déclaration des paramètres de base des Segments
float x;
float y;
//Constructeur du Segment
Segment (float nouvX, float nouvY) {
  x = nouvX;
  y = nouvY;
}
//Dessin des Segments verticales
void displayV() {
  beginShape();
  vertex(x, y);
  vertex(x+10, y+10);
  vertex(x+10, y+90);
  vertex(x, y+100);
  vertex(x-10, y+90);
  vertex(x-10, y+10);
  endShape(CLOSE);
}
//Dessin des Segments horizontales
void displayH() {
  beginShape();
  vertex(x, y);
  vertex(x+10, y-10);
  vertex(x+90, y-10);
  vertex(x+100, y);
  vertex(x+90, y+10);
  vertex(x+10, y+10);
  endShape(CLOSE);
}
}
