PGraphics alphaG;

void setup() {
size(400,400);
// create an extra pgraphics object for rendering on a transparent background
alphaG = createGraphics(width,height, JAVA2D);
 
// background will be transparent in the png-file
background(0);
}

void draw() {
 
 // draw into the pgraphics object
 alphaG.beginDraw();
   alphaG.fill(255,100);
   alphaG.rect(random(width), random(height), 30,30);
 alphaG.endDraw();
 
 // draw the second renderer into the window, so we can see something
 image(alphaG, 0,0);
}

void keyPressed() {
  alphaG.save("portef.png");
  println("portef.png saved.");
}
