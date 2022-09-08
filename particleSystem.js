

Arraylist<Particle> particles = new Arraylist<Particle>();

function setup() {

  for(int i = 0; i < 10){
    particles.add(new Particle(mouseX, mouseY));
  }

  for(Particle p in particles){
    p.display();
  }


}

function draw() {

  for(Particle p in particles){
    p.move();
  }

}

class Particle(){

  constructor(x, y){
    this.x = x;
    this.y = y;
  }

  let x, y, r;
  let vx, vy;

  r = 50;

  function display(){
    fill(255);
    ellipse(x, y, r, r);
  }

  function move(){
    if(x > width-r)
      {vx*=-1;}
    if(x < r)
      {vx*=-1;}

    if(y > height-r)
      {vy*=-1;}
    if(y < r)
      {vy*=-1;}
  }

}
