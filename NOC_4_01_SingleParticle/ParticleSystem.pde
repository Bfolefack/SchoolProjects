class ParticleSystem {
  ArrayList<Particle> particles;
  PVector pos;
  ParticleSystem(float posX, float posY) {
    particles = new ArrayList<Particle>();
    pos = new PVector(posX, posY);
  }

  void run() {
    particles.add(new Particle(pos));
    for (Particle p : particles) {
      p.run();
    }
    for (int i = particles.size() - 1; i >= 0; i--) {
      if (particles.get(i).isDead()) {
        particles.remove(particles.get(i));
      }
    }
  }
}
