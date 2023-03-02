boolean cameraEnabled = false;
FPCamera mainCamera;
class FPCamera {



  // The Main camera's position.

  PVector cameraPosition;



  // Movement velocity and acceleration.

  PVector velocity;

  PVector acceleration;

  // The camera's maximum speed.

  float topspeed;



  boolean enableFly = false;



  FPCamera() {

    cameraPosition = new PVector( width/2,  height/2+50, (  height/2) / tan(PI*30 / 180));

    velocity = new PVector(0, 0);

    topspeed = 7;

  }







  // All transformations applyed to the camera are here.

  void camTransformations() {



    // Camera rotations.

    pushMatrix();

    translate(cameraPosition.x, cameraPosition.y, cameraPosition.z);



    // Side to side movment

    rotateY(-mouseX*0.01);



    translate(0, 0, -200);

    //ball(0, 0, 0, 20);



    float x = modelX(0, 0, 0);

    float y = modelY(0, 0, 0);

    float z = modelZ(0, 0, 0);

    popMatrix();





    // Up and down movment.

    y = map(mouseY, 0, height, -1200, 1200);



    camera(cameraPosition.x, cameraPosition.y, cameraPosition.z, x,  cameraPosition.y+y, z, 0, 1, 0);

    println(cameraPosition.x, cameraPosition.y, cameraPosition.z, cameraPosition.y+x,y,z);



    // Camera positional movment.



    // Move Forward when pressing W.

    if (keyPressed) {

      if (key == 'z') {

        // Compute a vector that points from location to mouse.

        //PVector targetPosition = new PVector(x, y, z);

        PVector targetPosition = new PVector(x, cameraPosition.y, z);

        PVector acceleration = PVector.sub(targetPosition, cameraPosition);

        // Set magnitude of acceleration

        acceleration.setMag(5);



        // Velocity changes according to acceleration

        velocity.add(acceleration);

        // Limit the velocity by topspeed

        velocity.limit(topspeed);

        // Location changes by velocity

        cameraPosition.add(velocity);

      }

    }



    // Move backwards when pressing S.

    if (keyPressed) {

      if (key == 's') {

        // Compute a vector that points from location to mouse.

        //PVector targetPosition = new PVector(x, y, z);

        PVector targetPosition = new PVector(x, cameraPosition.y, z);

        PVector acceleration = PVector.sub(targetPosition, cameraPosition);

        // Set magnitude of acceleration

        acceleration.setMag(-5);



        // Velocity changes according to acceleration

        velocity.add(acceleration);

        // Limit the velocity by topspeed

        velocity.limit(topspeed);

        // Location changes by velocity

        cameraPosition.add(velocity);

      }

    }

    // Flight (Needs work).



    if (keyPressed) {

      if (keyCode == SHIFT) {

        cameraPosition.y += 3;

      }

    }

    if (keyPressed) {

      if (key == ' ') {

        cameraPosition.y -= 3;

      }

    }

    if (cameraPosition.y <= -500) {

      cameraPosition.y = -499;

    }

    if (cameraPosition.y > 500) {

      cameraPosition.y = 500;

    }

    println(cameraPosition);

  }

}
