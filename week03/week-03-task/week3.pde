int cols = 5;
int rows = 5;
int circleSize = 100;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(0);
  noStroke();
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * circleSize + circleSize / 2;
      float y = j * circleSize + circleSize / 2;
      
      // Alternate colors in a checkerboard pattern
      if ((i + j) % 2 == 0) {
        fill(57, 197, 187);
      } else {
        fill(random(125), random(125), random(255));
      }
      
      ellipse(x, y, circleSize, circleSize);
    }
  }
}
    
    
  
