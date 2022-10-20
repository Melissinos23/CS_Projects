float tx = 0;
float ty = 0;

int bLength = 100;

float[] brightness = new float[bLength];

//fullScreen();

void setup(){
  
  background(255);
  size(1000,800,P3D);
  
  brightness[0] = map(noise(tx, ty), 0, 1, 0, 255);
  
  display();
}

void draw(){
 display();
 
  
}

void display(){
  background(255);
  for (int i = 1; i < bLength; i++) {
 
   for (int x = 0; x < width; x++) {
     ty = 0;
      for (int z = 0; z < height; z++) {
        brightness[i] = brightness[i-1] + random(-1, 1);
        ty += 0.01;
        stroke(0, brightness[i], 255-brightness[i]);
        point(x, height-(brightness[i]*2), z);
      }
      tx += 0.01;
    }
  }
}
