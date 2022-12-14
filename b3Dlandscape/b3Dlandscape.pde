ArrayList<PVector> points;

float t, w;

int counter;

void setup() {

  background(0);
  //size(1000, 800, P3D);
  
  fullScreen(P3D);
  
  points = new ArrayList<PVector>();


  init(points);

  counter = 0;
  w = 1;
  
  background(0);
}

void draw() {

  t = millis()/50000.; //millis() is int
  background(0);

  display(points, w);

  if (counter%5 == 0) { 
    //update(points);
  }
  update(points);
  counter++;
  //w += 0.2;

  //for(PVector p : points){ print(p.y + "   "); }
  //print(t + "  ");
}


void update(ArrayList<PVector> points) {
  for (PVector p : points) {
    //p.y = map(noise(p.x, p.z, t/1000), 0, 1, 0, 255);
    //p.y += noise(p.x, p.z, t/5);
    //p.y = map(noise(p.x/70, p.z/70, t), 0, 1, 0, 255);

    p.y = map(noise(p.x/70, p.z/70, t), 0, 1, 0, 600);
    //p.y = noise(p.x/70, p.z/70, t) * 255;
    //p.y = height/3 + noise(p.x, p.z, t/1000);
    //p.y = height/3 + t/1000;
  }
}

void display(ArrayList<PVector> points, float w) {
  for (PVector p : points) {
    //strokeWeight(25);    //no gaps
    //strokeWeight(10);
    //strokeWeight(6);    //some gaps
    strokeWeight(3);    //normal (a little thicker than 1)
    //strokeWeight(w);    //funky changing one
    stroke(400-p.z, 750-p.x, 600-p.y, 650-p.z);
    //higher numbers, lighter colors
    point(p.x, height - p.y, p.z);
  }
}

void init(ArrayList<PVector> points) {
  for (int x = 0; x < width; x += 4) {
    for (int z = 0; z < height; z += 4) {
      points.add(new PVector(x, height/3, z));
    }
  }
}
