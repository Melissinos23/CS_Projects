ArrayList<PVector> points;

void setup(){

  background(255);
  size(1000, 800, P3D);
  
  points = new ArrayList<PVector>();
  
  init(points);
}

void draw(){
  
  display(points);

}


void display(ArrayList<PVector> points){
  for(PVector p : points){
    stroke(p.z, 255-p.x, 255-p.y);
    point(p.x, p.y, p.z);
  }
}
void init(ArrayList<PVector> points){
  for(int x = 0; x < width; x++){
    for(int z = 0; z < height; z++){ //idk why z is here
      points.add(new PVector(x, z, 0));
    }
  }
}
