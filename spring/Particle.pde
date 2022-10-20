
class Particle {
  float init;
  PVector pos = new PVector(0,0);
  PVector vel = new PVector(2,3);
  float k = 0.005;
  
  PVector fSpring = new PVector(0,0);
  
  Particle(float k, float init, float posx, float posy){
    this.k = k;
    this.init = init;
    pos.x = posx;
    pos.y = posy;
  }
  
  void display(){
    noStroke();
    fill(random(55), random(255), random(250), random(255));
    ellipse(pos.x, pos.y, 25, 25);
  }
  
  void touch(ArrayList<Particle> particles){
    for(Particle p : particles){
      if(dist(pos.x, pos.y, p.pos.x, p.pos.y) < 0.1){
      }
    }
  }
  
  void update(){
    
    fSpring.x = k*(init-pos.x);
    if(vel.y < 10){
      fSpring.y = 0.01;
    } else if (vel.y > 25) {
      fSpring.y = -0.01;
    }
    
    //print(vel.y + "   ");
    PVector fOrbit = new PVector();
 
    
    vel.add(fSpring);
    pos.add(vel);

    
    if(pos.y > height){
      pos.y = -50;
    }
  }
}
