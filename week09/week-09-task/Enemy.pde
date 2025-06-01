class Enemy {
  PVector position;
  PVector velocity;
  color col;

  Enemy() {
    float y = random(300, height); // Spawn somewhere in lower screen
    boolean fromLeft = random(1) < 0.5;

    if (fromLeft) {
      position = new PVector(0, y); // Start at left edge
      velocity = new PVector(5, 0); // Move right
    } else {
      position = new PVector(width, y); // Start at right edge
      velocity = new PVector(-5, 0); // Move left
    }

    col = color(random(255), 0, 0);
  }

  void update() {
    position.add(velocity);
  }

  void display() {
    fill(col);
    noStroke();
    ellipse(position.x, position.y, 20, 20);
  }

  boolean isOffScreen() {
    return position.x < 0 || position.x > width;
  }
}
