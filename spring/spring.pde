
ArrayList<Particle> particles = new ArrayList<Particle>();
//Particle p = new Particle();

void setup(){
  size(800,800);
  
  for(int i = 0; i < 100; i++){
    particles.add(new Particle(random(0.1), random(50, 705), random(400), random(-50, height)));
    //particles.add(new Particle(300, 250, height/2));
  }
}

void draw(){
  background(200);
  
  for(Particle p : particles){
    p.display();
    p.update();
    //p.touch(particles);
  }
}
