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
  
  if(counter%60 == 0){ /*update(points);*/ }
  
  counter++;
  
  //for(PVector p : points){ print(p.y + "   "); }
  //print(t + "  ");

}


void update(ArrayList<PVector> points){
  for(PVector p : points){
    p.y = map(noise(p.x, p.z, t), 0, 1, 0, 255);
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
  for(int x = 0; x < width; x += 7){
    for(int z = 0; z < height; z += 7){ //idk why z is here
      points.add(new PVector(x, height/3, z));
    }
  }
}
