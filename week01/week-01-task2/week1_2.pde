void setup() {
  size(400, 300);
}

void draw() {
  
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float normalizedX = map(x, 0, height - 1, 0, 1);
      int red = int(255 * normalizedX);
      int green = 125;
      int blue = int(255 * (1 - normalizedX));

      color c = color(red, green, blue);

      pixels[y + x * height] = c;
    }
  }
  updatePixels();
}
