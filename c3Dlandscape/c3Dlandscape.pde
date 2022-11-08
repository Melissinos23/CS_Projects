ArrayList<PVector> points;
ArrayList<PVector> points2;
ArrayList<PVector> points3;


float t;

int counter;

void setup() {

  background(0);
  
  fullScreen(P3D);
  
  points = new ArrayList<PVector>();
  points2 = new ArrayList<PVector>();
  points3 = new ArrayList<PVector>();

  init(points, height/5);
  init(points2, height/4);
  init(points3, height/3);
  
  background(0);
}

void draw() {

  t = millis()/50000.; //millis() is int
  background(0);

  /*display(points, 1);
  display(points2, 2);
  display(points3, 3);

  update(points, 1);*/
}


void update(ArrayList<PVector> points, int type) {
  for (PVector p : points) {
    //p.y = map(noise(p.x, p.z, t/1000), 0, 1, 0, 255);
    //p.y += noise(p.x, p.z, t/5);
    //p.y = map(noise(p.x/70, p.z/70, t), 0, 1, 0, 255);

    if(type == 1){
      p.y = map(noise(p.x/70, p.z/70, t), 0, 1, 0, 600);
    } else if(type == 2){
      p.y = map(noise(p.x/70, p.z/70, t-10), 0, 1, 0, 600);
    } else if(type == 3) {
      p.y = map(noise(p.x/70, p.z/70, t-20), 0, 1, 0, 600);
    }
    //p.y = noise(p.x/70, p.z/70, t) * 255;
    //p.y = height/3 + noise(p.x, p.z, t/1000);
    //p.y = height/3 + t/1000;
  }
}

void display(ArrayList<PVector> points, int type) {
  for (PVector p : points) {
    //strokeWeight(25);    //no gaps
    //strokeWeight(10);
    //strokeWeight(6);    //some gaps
    strokeWeight(3);    //normal (a little thicker than 1)
    //strokeWeight(w);    //funky changing one
    
    if(type == 1){       // need to pick colors
      stroke(400-p.z, 750-p.x, 600-p.y, 650-p.z);
    } else if(type == 2){
      stroke(400-p.z, 750-p.x, 600-p.y, 650-p.z);
    } else if(type == 3){
      stroke(400-p.z, 750-p.x, 600-p.y, 650-p.z);
    } else {
      stroke(400-p.z, 750-p.x, 600-p.y, 650-p.z); //old one
    }
    //higher numbers, lighter colors
    point(p.x, height - p.y, p.z);
  }
}

void init(ArrayList<PVector> points, int y) {
  for (int x = 0; x < width; x += 20) {
    for (int z = 0; z < height; z += 20) {
      points.add(new PVector(x, y, z));
    }
  }
}
