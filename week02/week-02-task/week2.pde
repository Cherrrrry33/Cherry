PImage sample;

void setup() {
  size(517, 606);
  sample = loadImage("sample.jpg");
  sample.loadPixels();
}

void draw() {
  background(255);
  
  image(sample, 0, 0);
  
  int[] histR = new int[256];
  int[] histG = new int[256];
  int[] histB = new int[256];
  
  // Count the frequency of each intensity for R, G, B channels
  for (int i = 0; i < sample.pixels.length; i++) {
    color c = sample.pixels[i];
    
    int r = int(red(c));
    int g = int(green(c));
    int b = int(blue(c));
    
    histR[r]++;
    histG[g]++;
    histB[b]++;
  }

  // Draw histograms with vertical offset
  drawHistogram(histR, color(255, 0, 0), height - 200);
  drawHistogram(histG, color(0, 255, 0), height - 100);
  drawHistogram(histB, color(0, 0, 255), height);
}

void drawHistogram(int[] hist, color c, float yOffset) {
  for (int i = 0; i < hist.length; i++) {
    stroke(c);
    float histHeight = map(hist[i], 0, max(hist), 0, height / 3);
    line(i, yOffset, i, yOffset - histHeight);
  }
}
