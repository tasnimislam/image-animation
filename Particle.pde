Particle[] particles;

PImage manami;

void settings() {
  size(530, 470);
}

void setup() {
  manami = loadImage("manami.jpg");

  particles = new Particle [100];
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
  background(0);
}

void draw() {

  for (int i = 0; i < particles.length; i++) {
    particles[i].display();
    particles[i].move();
  }
  
  saveFrame("output/manami_####.png");
  
}
