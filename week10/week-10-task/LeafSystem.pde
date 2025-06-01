class LeafSystem {
  PVector origin;
  ArrayList<Leaf> leaves;
  int leafCount = 20;

  LeafSystem(float x, float y) {
    origin = new PVector(x, y);
    leaves = new ArrayList<Leaf>();

    // Create initial batch of leaves at origin
    for (int i = 0; i < leafCount; i++) {
      leaves.add(new Leaf(origin.x, origin.y));
    }
  }

  // Apply force to all leaves
  void addForce(PVector force) {
    for (Leaf leaf : leaves) {
      leaf.applyForce(force);
    }
  }

  // Update, display, and remove finished leaves
  // The idea of iterating backward for safe removal is suggested by AI
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
