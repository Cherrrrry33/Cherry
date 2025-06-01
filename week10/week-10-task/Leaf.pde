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
    leafColor = color(random(150, 255), random(100, 180), 0);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
    lifespan -= 1.5;
    rotation += rotationSpeed;
  }

  void display() {
    pushMatrix();
    translate(position.x, position.y);
    rotate(rotation);
    noStroke();
    fill(leafColor, lifespan);
    ellipse(0, 0, 10, 20);
    popMatrix();
  }

  boolean isDead() {
    return lifespan < 0 || position.y > height;
  }
}
