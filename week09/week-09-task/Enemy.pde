class Enemy {
  PVector position;
  PVector velocity;
  color col;

  Enemy() {
    float y = random(300, height);
    boolean fromLeft = random(1) < 0.5;

    if (fromLeft) {
      position = new PVector(0, y);
      velocity = new PVector(5, 0);  // move right
    } else {
      position = new PVector(width, y);
      velocity = new PVector(-5, 0); // move left
    }

    col = color(random(255), 0, 0);  // red-ish color
  }

  void update() {
    position.add(velocity);
  }

  void display() {
    fill(col);
    noStroke();
    ellipse(position.x, position.y, 20, 20);  // a simple circle enemy
  }

  boolean isOffScreen() {
    return position.x < 0 || position.x > width;
  }
}
