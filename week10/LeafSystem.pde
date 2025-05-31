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
