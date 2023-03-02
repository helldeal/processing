import java.util.List;
float yy;
void setup() {

  size(1280, 720, P3D);

  // Creates a new camera.

  mainCamera = new FPCamera();

  // Camera transformations are enabled.

  cameraEnabled = true;
}

void draw() {
    if (cameraEnabled == true) {

    mainCamera.camTransformations();}
   
  drawAxis();
  background(0);
  stroke(0);
  fill(#F09C00);
   yy = yy +1;
   box(500,500,50);
   rotateY(radians(yy));
   translate(0,0,200);
   noStroke();
   sphere(50);
    
      
  hint(DISABLE_DEPTH_TEST); 
  camera();
text ("fps "+round(frameRate), 30, 30);
hint(ENABLE_DEPTH_TEST);
}
