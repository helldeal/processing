import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class horloge extends PApplet {

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
public void setup() {
background(0);
 //Lissage des dessins
 //Taille de la fenêtre
}
public void draw() {
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
public void displayV() {
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
public void displayH() {
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
//1111111111111111111111111111111111111111111111111111111111111111111111111111111111
public void HDclean(){
  fill(0xff2C0101);
  maSegmentB.displayV(); //Affichage de le Segment B
  maSegmentC.displayV(); //Affichage de le Segment C
  maSegmentE.displayV(); //Affichage de le Segment E
  maSegmentF.displayV(); //Affichage de le Segment F
  maSegmentA.displayH(); //Affichage de le Segment A
  maSegmentG.displayH(); //Affichage de le Segment G
  maSegmentD.displayH(); //Affichage de le Segment D
}
public void HD0(){
  fill(0xffFF0303);
  maSegmentB.displayV(); //Affichage de le Segment B
  maSegmentC.displayV(); //Affichage de le Segment C
  maSegmentE.displayV(); //Affichage de le Segment E
  maSegmentF.displayV(); //Affichage de le Segment F
  maSegmentA.displayH(); //Affichage de le Segment A
  maSegmentD.displayH(); //Affichage de le Segment D
}
public void HD1(){
  fill(0xffFF0303);
  maSegmentB.displayV(); //Affichage de le Segment B
  maSegmentC.displayV(); //Affichage de le Segment C
}
public void HD2(){
  fill(0xffFF0303);
  maSegmentB.displayV(); //Affichage de le Segment B
  maSegmentE.displayV(); //Affichage de le Segment E
  maSegmentA.displayH(); //Affichage de le Segment A
  maSegmentG.displayH(); //Affichage de le Segment G
  maSegmentD.displayH(); //Affichage de le Segment D
}
//22222222222222222222222222222222222222222222222222222222222222222222222222222222

public void HUclean(){
  fill(0xff2C0101);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2E.displayV(); //Affichage de le Segment E
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU0(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2E.displayV(); //Affichage de le Segment E
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU1(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
}
public void HU2(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2E.displayV(); //Affichage de le Segment E
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU3(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU4(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2G.displayH(); //Affichage de le Segment G
}
public void HU5(){
  fill(0xffFF0303);
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU6(){
  fill(0xffFF0303);
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2E.displayV(); //Affichage de le Segment E
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU7(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2A.displayH(); //Affichage de le Segment A
}
public void HU8(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2E.displayV(); //Affichage de le Segment E
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
public void HU9(){
  fill(0xffFF0303);
  maSegment2B.displayV(); //Affichage de le Segment B
  maSegment2C.displayV(); //Affichage de le Segment C
  maSegment2F.displayV(); //Affichage de le Segment F
  maSegment2A.displayH(); //Affichage de le Segment A
  maSegment2G.displayH(); //Affichage de le Segment G
  maSegment2D.displayH(); //Affichage de le Segment D
}
//333333333333333333333333333333333333333333333333333333333333333333333333333333333333
public void MDclean(){
  fill(0xff2C0101);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3C.displayV(); //Affichage de le Segment C
  maSegment3E.displayV(); //Affichage de le Segment E
  maSegment3F.displayV(); //Affichage de le Segment F
  maSegment3A.displayH(); //Affichage de le Segment A
  maSegment3G.displayH(); //Affichage de le Segment G
  maSegment3D.displayH(); //Affichage de le Segment D
}
public void MD0(){
  fill(0xffFF0303);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3C.displayV(); //Affichage de le Segment C
  maSegment3E.displayV(); //Affichage de le Segment E
  maSegment3F.displayV(); //Affichage de le Segment F
  maSegment3A.displayH(); //Affichage de le Segment A
  maSegment3D.displayH(); //Affichage de le Segment D
}
public void MD1(){
  fill(0xffFF0303);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3C.displayV(); //Affichage de le Segment C
}
public void MD2(){
  fill(0xffFF0303);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3E.displayV(); //Affichage de le Segment E
  maSegment3A.displayH(); //Affichage de le Segment A
  maSegment3G.displayH(); //Affichage de le Segment G
  maSegment3D.displayH(); //Affichage de le Segment D
}
public void MD3(){
  fill(0xffFF0303);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3C.displayV(); //Affichage de le Segment C
  maSegment3A.displayH(); //Affichage de le Segment A
  maSegment3G.displayH(); //Affichage de le Segment G
  maSegment3D.displayH(); //Affichage de le Segment D
}
public void MD4(){
  fill(0xffFF0303);
  maSegment3B.displayV(); //Affichage de le Segment B
  maSegment3C.displayV(); //Affichage de le Segment C
  maSegment3F.displayV(); //Affichage de le Segment F
  maSegment3G.displayH(); //Affichage de le Segment G
}
public void MD5(){
  fill(0xffFF0303);
  maSegment3C.displayV(); //Affichage de le Segment C
  maSegment3F.displayV(); //Affichage de le Segment F
  maSegment3A.displayH(); //Affichage de le Segment A
  maSegment3G.displayH(); //Affichage de le Segment G
  maSegment3D.displayH(); //Affichage de le Segment D
}
//444444444444444444444444444444444444444444444444444444444444444444444444444
public void MUclean(){
  fill(0xff2C0101);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4E.displayV(); //Affichage de le Segment E
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU0(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4E.displayV(); //Affichage de le Segment E
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU1(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
}
public void MU2(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4E.displayV(); //Affichage de le Segment E
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU3(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU4(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4G.displayH(); //Affichage de le Segment G
}
public void MU5(){
  fill(0xffFF0303);
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU6(){
  fill(0xffFF0303);
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4E.displayV(); //Affichage de le Segment E
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU7(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4A.displayH(); //Affichage de le Segment A
}
public void MU8(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4E.displayV(); //Affichage de le Segment E
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
public void MU9(){
  fill(0xffFF0303);
  maSegment4B.displayV(); //Affichage de le Segment B
  maSegment4C.displayV(); //Affichage de le Segment C
  maSegment4F.displayV(); //Affichage de le Segment F
  maSegment4A.displayH(); //Affichage de le Segment A
  maSegment4G.displayH(); //Affichage de le Segment G
  maSegment4D.displayH(); //Affichage de le Segment D
}
//5555555555555555555555555555555555555555555555555555555555555555555555555555555
public void SDclean(){
  fill(0xff2C0101);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5E.displayV(); //Affichage de le Segment E
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD0(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5E.displayV(); //Affichage de le Segment E
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD1(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
}
public void SD2(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5E.displayV(); //Affichage de le Segment E
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD3(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD4(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5G.displayH(); //Affichage de le Segment G
}
public void SD5(){
  fill(0xffFF0303);
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD6(){
  fill(0xffFF0303);
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5E.displayV(); //Affichage de le Segment E
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD7(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5A.displayH(); //Affichage de le Segment A
}
public void SD8(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5E.displayV(); //Affichage de le Segment E
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
public void SD9(){
  fill(0xffFF0303);
  maSegment5B.displayV(); //Affichage de le Segment B
  maSegment5C.displayV(); //Affichage de le Segment C
  maSegment5F.displayV(); //Affichage de le Segment F
  maSegment5A.displayH(); //Affichage de le Segment A
  maSegment5G.displayH(); //Affichage de le Segment G
  maSegment5D.displayH(); //Affichage de le Segment D
}
//66666666666666666666666666666666666666666666666666666666666666666666666666666
public void SUclean(){
  fill(0xff2C0101);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6E.displayV(); //Affichage de le Segment E
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU0(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6E.displayV(); //Affichage de le Segment E
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU1(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
}
public void SU2(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6E.displayV(); //Affichage de le Segment E
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU3(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU4(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6G.displayH(); //Affichage de le Segment G
}
public void SU5(){
  fill(0xffFF0303);
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU6(){
  fill(0xffFF0303);
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6E.displayV(); //Affichage de le Segment E
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU7(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6A.displayH(); //Affichage de le Segment A
}
public void SU8(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6E.displayV(); //Affichage de le Segment E
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void SU9(){
  fill(0xffFF0303);
  maSegment6B.displayV(); //Affichage de le Segment B
  maSegment6C.displayV(); //Affichage de le Segment C
  maSegment6F.displayV(); //Affichage de le Segment F
  maSegment6A.displayH(); //Affichage de le Segment A
  maSegment6G.displayH(); //Affichage de le Segment G
  maSegment6D.displayH(); //Affichage de le Segment D
}
public void carresplit(){
  fill(0xffFF0000);
  quad(760-14,85,760,85-14,760+14,85,760,85+14);
  quad(760-14,205,760,205-14,760+14,205,760,205+14);
  quad(370-14,85,370,85-14,370+14,85,370,85+14);
  quad(370-14,205,370,205-14,370+14,205,370,205+14);
}
public void date() {
  int jour = day();
  int mois = month();
  int annee = year();
  textAlign(CENTER);
  fill(0xffFF0303);
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
public void heure() {
i= hour(); 
  HUclean();
  if (i==0 || i==10 ||i==20){
    HU0();
  }
  else if (i==1||i==11||i==21){
    HU1();
  }
  else if (i==2||i==22||i==12){
    HU2();
  }
  else if (i==3||i==13||i==23){
    HU3();
  }
  else if (i==4||i==14||i==24){
    HU4();
  }
  else if (i==5||i==15){
    HU5();
  }
  else if (i==6 || i==16){
    HU6();
  }
  else if (i==7||i==17){
    HU7();
  }
  else if (i==8||i==18){
    HU8();
  }
  else if (i==9||i==19){
    HU9();
  }
  


  HDclean();
  if (i<10){
    HD0();
  }
  else if (i<20){
    HD1();
  }
  else if (i<30){
    HD2();
  }
}
public void minutes() {
i= minute();  
  MUclean();
  if (i==0 || i==10 ||i==20||i==30||i==40||i==50){
    MU0();
  }
  else if (i==1||i==11||i==21||i==31||i==41||i==51){
    MU1();
  }
  else if (i==2||i==22||i==12||i==32||i==42||i==52){
    MU2();
  }
  else if (i==3||i==13||i==23||i==33||i==43||i==53){
    MU3();
  }
  else if (i==4||i==14||i==24||i==34||i==44||i==54){
    MU4();
  }
  else if (i==5||i==15||i==25||i==35||i==45||i==55){
    MU5();
  }
  else if (i==6||i==16||i==26||i==36||i==45||i==56){
    MU6();
  }
  else if (i==7||i==17||i==27||i==37||i==47||i==57){
    MU7();
  }
  else if (i==8||i==18||i==28||i==38||i==48||i==58){
    MU8();
  }
  else if (i==9||i==19||i==29||i==39||i==49||i==59){
    MU9();
  }
  


  MDclean();
  if (i<10){
    MD0();
  }
  else if (i<20){
    MD1();
  }
  else if (i<30){
    MD2();
  }
  else if (i<40){
    MD3();
  }
  else if (i<50){
    MD4();
  }
  else if (i<60){
    MD5();
  }
}
public void seconde() {
i= second();  
  SUclean();
  if (i==0 || i==10 ||i==20||i==30||i==40||i==50){
    SU0();
  }
  else if (i==1||i==11||i==21||i==31||i==41||i==51){
    SU1();
  }
  else if (i==2||i==22||i==12||i==32||i==42||i==52){
    SU2();
  }
  else if (i==3||i==13||i==23||i==33||i==43||i==53){
    SU3();
  }
  else if (i==4||i==14||i==24||i==34||i==44||i==54){
    SU4();
  }
  else if (i==5||i==15||i==25||i==35||i==45||i==55){
    SU5();
  }
  else if (i==6||i==16||i==26||i==36||i==46||i==56){
    SU6();
  }
  else if (i==7||i==17||i==27||i==37||i==47||i==57){
    SU7();
  }
  else if (i==8||i==18||i==28||i==38||i==48||i==58){
    SU8();
  }
  else if (i==9||i==19||i==29||i==39||i==49||i==59){
    SU9();
  }
  


  SDclean();
  if (i<10){
    SD0();
  }
  else if (i<20){
    SD1();
  }
  else if (i<30){
    SD2();
  }
  else if (i<40){
    SD3();
  }
  else if (i<50){
    SD4();
  }
  else if (i<60){
    SD5();
  }
}
  public void settings() { 
size(1130, 400); 
smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "horloge" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
