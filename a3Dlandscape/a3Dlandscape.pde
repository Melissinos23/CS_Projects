float tx = 0;
float ty = 0;

int bLength = 100;

float[] b = new float[10000000];

//fullScreen();

void setup(){
  
  background(255);
  size(1000,800,P3D);
  
  
  b[0] = map(noise(tx, ty), 0, 1, 0, 255);
  
  //brightness[0] = map(noise(tx, ty), 0, 1, 0, 255);
  
  display();
}

void draw(){
 display();
 
  
}

void display(){
  background(255);
   
   for (int x = 1; x < width; x++) {
     ty = 0;
      for (int z = 0; z < height; z++) {
        //brightness[i] = brightness[i-1] + random(-1, 1);
        //brightness[i] = brightness[i-1] + Math.abs(map(noise(tx, ty), 0, 1, 0, 255)-brightness[i-1]);
        float brightness = map(noise(tx, ty), 0, 1, 0, 255);
        b[x] = Math.abs(b[x-1] - brightness+random(-1,1));
        ty += 0.01;
        stroke(0, b[x], 255-b[x]);
        point(x, height-(b[x]*2), z);
      }
      tx += 0.01;
    }
}
