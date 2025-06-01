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
