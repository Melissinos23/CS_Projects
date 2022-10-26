ArrayList<PVector> points;

float t;

void setup(){

  background(255);
  size(1000, 800, P3D);
  
  points = new ArrayList<PVector>();
  
  
  init(points);
}

void draw(){
  
  t = millis();
  background(255);
  
  display(points);
  update(points);
  
  //for(PVector p : points){ print(p.y + "   "); }
  print(t + "  ");

}


void update(ArrayList<PVector> points){
  for(PVector p : points){
    p.y = noise(p.x, t, p.z)*100;
  }
}

void display(ArrayList<PVector> points){
  for(PVector p : points){
    strokeWeight(3);
    stroke(p.z, 255-p.x, 255-p.y);
    point(p.x, p.y, p.z);
  }
}

void init(ArrayList<PVector> points){
  for(int x = 0; x < width; x += 7){
    for(int z = 0; z < height; z += 7){ //idk why z is here
      points.add(new PVector(x, height, z));
    }
  }
}
