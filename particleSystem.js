

let x;
let y;
let r;
let vx, vy;

let particles = [10];

function setup() {


  createCanvas(500, 500);
  background(0);

  /*for(int i = 0; i < 10){
    particles[i] = new Particle(mouseX, mouseY);
  }*/

  /*for (Particle p in particles) {
    p = new Particle(mouseX, mouseY);
    p.display();
  }*/

  for (let i = 0; i < 10; i++) {
    particles[i] = new Particle(mouseX, mouseY, 50);
    particles[i].display();
  }


}

function draw() {

  /*for (Particle p in particles) {
    p.move();
  }*/

  for (let i = 0; i < particles.length; i++) {
    particles[i].move();
  }

}

class Particle {

  constructor(x, y, r){
    this.x = x;
    this.y = y;
    this.r = r;
  }

  //r = 50;

  display() {
    fill(255);
    ellipse(x, y, r, r);
  }

  move(){
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
