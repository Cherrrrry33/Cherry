color colorA;
color colorB;

void setup() {
  size(600,600);
  
  colorA = color(57,179,187);
  colorB = color(17,220,125);
  
//noLoop();
}

void draw() {
  loadPixels();
  
  for(int i = 0; i < pixels.length; i++) {
    int x = i % width;
    int y = i / width;
    
    pixels[i] = color(map(noise(x * 0.1, y * 0.1,frameCount * 0.1), 0, 1, 0, 255));// set the value at each x/y
    pixels[i] = duotone(pixels[i], colorA, colorB);
  }
  
  updatePixels();
}

color duotone(color pixel, color colorA, color colorB) {
  float tone = red(pixel);
  
  float lerpAmount = norm(tone,0,255);
  
  return lerpColor(colorA, colorB, lerpAmount);
}

void mousePressed() {
  redraw();
}
