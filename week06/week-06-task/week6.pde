import processing.sound.*;

SinOsc lowOsc;
SawOsc midOsc;
WhiteNoise highNoise;

LowPass lowFilter;
BandPass midFilter;
HighPass highFilter;

color colorA;
color colorB;

void setup() {
  size(600, 600);
  
  colorA = color(57, 179, 187);
  colorB = color(17, 220, 125);
  
  lowOsc = new SinOsc(this);
  lowOsc.freq(80);
  lowOsc.amp(0.5);
  lowOsc.play();
  lowFilter = new LowPass(this);
  lowFilter.process(lowOsc);
  lowFilter.freq(150);

  midOsc = new SawOsc(this);
  midOsc.freq(400);
  midOsc.amp(0.3);
  midOsc.play();
  midFilter = new BandPass(this);
  midFilter.process(midOsc);
  midFilter.freq(400);
  midFilter.res(10);
  
  highNoise = new WhiteNoise(this);
  highNoise.amp(0.2);
  highNoise.play();
  highFilter = new HighPass(this);
  highFilter.process(highNoise);
  highFilter.freq(1000);
}

void draw() {
  loadPixels();
  
  // Animate the mid filter's frequency using a sine wave
  float sweep = map(sin(millis() / 1000.0), -1, 1, 200, 400);
  midFilter.freq(sweep);
  
  for (int i = 0; i < pixels.length; i++) {
    int x = i % width;
    int y = i / width;

    // Generate grayscale noise based on position and sweep
    pixels[i] = color(map(noise(x * 0.1, y * 0.1, frameCount * sweep), 0, 1, 0, 255));
    
    // Update colorB dynamically based on the sweep value
    colorB = color(sweep, 220, 125);

    pixels[i] = duotone(pixels[i], colorA, colorB);
  }
  
  updatePixels();
}

color duotone(color pixel, color colorA, color colorB) {
  float tone = red(pixel);
  float lerpAmount = norm(tone, 0, 255);
  return lerpColor(colorA, colorB, lerpAmount);
}

void mousePressed() {
  redraw();
}
