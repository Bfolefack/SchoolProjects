ParticleSystem p;

void setup() {
  size(500, 1080);
  p = new ParticleSystem(width/2, 20);
  background(255);
  smooth();
}

void draw() {
  background(255);
  p.run();
}
