class Player {
  PVector position, velocity, acceleration;
  float w = 30, h = 50;
  boolean onGround = false;

  Player(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector();
    acceleration = new PVector();
  }

  void applyGravity() {
    PVector gravity = new PVector(0, 0.5);
    acceleration.add(gravity);
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);

    if (position.y > height) {
      position.y = height - h;
      onGround = true;
      velocity.y = 0;
    }

    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) position.x -= 5;
        if (keyCode == RIGHT) position.x += 5;
      }
    }
  }

  void jump() {
    if (onGround) {
      velocity.y = -10;
      onGround = false;
    }
  }

  void display() {
    fill(255, 0, 0);
    rect(position.x, position.y, w, h);
  }
    
    void bounce() {
      velocity.y = -8;
    }
}
