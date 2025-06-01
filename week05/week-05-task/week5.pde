import processing.video.*;

color colorA;
color colorB;

Capture cam;

void setup() {
  size(640, 480);
  
  colorA = color(57,179,187);
  colorB = color(240,150,190);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    cam = new Capture(this, 640,480,cameras[0], 30);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  
  image(cam,0,0);
  
  loadPixels();
  cam.loadPixels();
    
   for (int i = 0; i < pixels.length; i++) {
    float greyValue = red(pixels[i]);

    float newPixelValue = 0;

    if (greyValue > 127) {
      newPixelValue = 255;
    }

    float error = greyValue - newPixelValue;

    pixels[i] = color(newPixelValue);
    
    // Distribute error to the next pixel
    diffuseError(i, error);
    
    // Apply duotone effect based on brightness
    pixels[i] = duotone(pixels[i], colorA, colorB);
  }
  updatePixels();
}

void diffuseError(int i, float error) {
  if (i < pixels.length-1) {
    float nextGreyValue = red(pixels[i+1]);
    pixels[i+1] = color(nextGreyValue + error);
  }
}

color duotone(color pixel, color colorA, color colorB) {
  float tone = red(pixel);
  
  float lerpAmount = norm(tone,0,255);
  
  return lerpColor(colorA, colorB, lerpAmount);
}

void keyPressed() {
  // pressing S will save the current frame to disk
  if(key == 's') {
    saveFrame("frame-######.jpg");
  }
}
