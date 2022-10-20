float tx = 0;
float ty = 0;

//fullScreen();

void setup(){
  
  background(255);
  size(1000,800,P3D);
  
  for (int x = 0; x < width; x++) {
    ty = 0;
    for (int z = 0; z < height; z++) {
      float brightness = map(noise(tx, ty), 0, 1, 0, 255);
      ty += 0.01;
      stroke(0, brightness, 255-brightness);
      point(x, height-(brightness*2), z);
    }
    tx += 0.01;
  }
}

void draw(){
 background(255);
 for (int x = 0; x < width; x++) {
   ty = 0;
    for (int z = 0; z < height; z++) {
      float brightness = map(noise(tx, ty), 0, 1, 0, 255);
      ty += 0.01;
      stroke(0, brightness, 255-brightness);
      point(x, height-(brightness*2), z);
    }
    tx += 0.01;
  }
  
  
}
