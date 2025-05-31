ArrayList<LeafSystem> systems;
PVector gravity;
PVector wind;

void setup() {
  size(800, 600);
  gravity = new PVector(0, 0.05);
  wind = new PVector(0, 0);
  systems = new ArrayList<LeafSystem>();
  
  // Start with one leaf system
  systems.add(new LeafSystem(width/2, -10));
}

void draw() {
  background(230, 240, 255);
  
  // Simulate gentle, changing wind
  float windStrength = map(noise(frameCount * 0.01), 0, 1, -0.05, 0.05);
  wind.x = windStrength;

  for (LeafSystem system : systems) {
    system.addForce(gravity);
    system.addForce(wind);
    system.run();
  }
}

void mousePressed() {
  // Generate a burst of leaves from the mouse position
  systems.add(new LeafSystem(mouseX, mouseY));
}

// --- LEAF SYSTEM CLASS ---
class LeafSystem {
  PVector origin;
  ArrayList<Leaf> leaves;
  int leafCount = 20;

  LeafSystem(float x, float y) {
    origin = new PVector(x, y);
    leaves = new ArrayList<Leaf>();
    for (int i = 0; i < leafCount; i++) {
      leaves.add(new Leaf(origin.x, origin.y));
    }
  }

  void addForce(PVector force) {
    for (Leaf leaf : leaves) {
      leaf.applyForce(force);
    }
  }

  void run() {
    for (int i = leaves.size()-1; i >= 0; i--) {
      Leaf leaf = leaves.get(i);
      leaf.update();
      leaf.display();
      if (leaf.isDead()) {
        leaves.remove(i);
      }
    }
  }
}

// --- LEAF PARTICLE CLASS ---
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
