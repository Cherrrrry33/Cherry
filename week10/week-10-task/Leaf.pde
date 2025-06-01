class Leaf {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float rotation;
  float rotationSpeed;
  color leafColor;

  Leaf(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(1, 2));
    acceleration = new PVector();
    lifespan = 255;
    rotation = random(TWO_PI);
    rotationSpeed = random(-0.05, 0.05);
    leafColor = color(random(150, 255), random(100, 180), 0); // Autumn-like yellow/orange
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0); // Clear acceleration each frame
    lifespan -= 1.5; // Slowly fade away
    rotation += rotationSpeed; // Gradual spinning
  }

  // this part of code I've used suggetion from AI
  void display() {
    pushMatrix(); // Save current drawing state
    translate(position.x, position.y);
    rotate(rotation); // Rotate around center for natural fall
    noStroke();
    fill(leafColor, lifespan);
    ellipse(0, 0, 10, 20);
    popMatrix(); // Restore drawing state
  }

  boolean isDead() {
    return lifespan < 0 || position.y > height;
  }
}
