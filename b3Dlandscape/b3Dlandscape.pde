ArrayList<PVector> points;

float t;

int counter;

void setup(){

  background(255);
  size(1000, 800, P3D);
  
  points = new ArrayList<PVector>();
  
  
  init(points);
  
  counter = 0;
}

void draw(){
  
  t = millis();
  background(255);
  
  display(points);
  
  if(counter%20 == 0){ update(points); }
  //update(points);
  counter++;
  
  //for(PVector p : points){ print(p.y + "   "); }
  //print(t + "  ");

}


void update(ArrayList<PVector> points){
  for(PVector p : points){
    //p.y = map(noise(p.x, p.z, t/1000), 0, 1, 0, 255);
    //p.y += noise(p.x, p.z, t/5);
    p.y = map(noise(p.x/70, p.z/70, t), 0, 1, 0, 255);
    //p.y = height/3 + noise(p.x, p.z, t/5);
    //p.y = height/3 + t/1000;
  }
}

void display(ArrayList<PVector> points){
  for(PVector p : points){
    strokeWeight(3);
    stroke(p.z, 500-p.x, 500-p.y);
    point(p.x, height - p.y, p.z);
  }
}

void init(ArrayList<PVector> points){
  for(int x = 0; x < width; x += 5){
    for(int z = 0; z < height; z += 5){
      points.add(new PVector(x, height/3, z));
    }
  }
}
