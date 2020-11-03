//your code here
Particle[] knives = new Particle[100];

void setup()
{
  background(0);
  size(400, 400);
  for (int i = 0; i < knives.length; i++) {
     knives[i] = new Particle();
  }
  knives[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < knives.length; i++) {
    knives[i].show();
    knives[i].move();
  }
}

class Particle
{
  float x, y;
  double speed, angle;
  int col; 
  
  Particle() {
    x = 180;
    y = 160; 
    col = color(211, 211, 211);
    speed = Math.random() * 10;
    angle = Math.random() * (2 * Math.PI);
  }
  
  void move() {
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
  }
  void show() {
    noStroke();
    fill(139, 60, 19);
    rect(x, y, 8, 25, 5.0, 5.0, 0, 0);
    rect(x-11, y+25, 30, 8, 10, 10, 0, 0);
    fill(col);
    triangle(x-7, y+33, x+15, y+33, x+3, y+65);  
  }  
}

class OddballParticle extends Particle //inherits from Particle
{
  
  OddballParticle() {
   x = 180;
   y = 160;
  }
  
  void move() {
   x +=  Math.random()*2 - 1;
   y +=  Math.random()*2 - 1;
  }  
  
  void show() {
    // body
    fill(204, 0, 0); 
    noStroke();
    rect(x-20, y-25, 70.0, 94.0, 30.0, 30.0, 4.0, 4.0);
    
    // big face mask
    fill(135, 206, 235);
    stroke(40);
    rect(x, y, 50.0, 20.0, 30.0, 30.0, 10.0, 10.0); 
    
    ///small face mask
    fill(240, 248, 255);
    rect(x+5, y+3, 40.0, 15.0, 30.0, 26.0, 15.0, 15.0);
    
    // backpack
    fill(204, 0, 0);
    stroke(50);
    rect(x-36, y+10, 15.0, 55.0, 20.0, 20.0, 4.0, 4.0);
    
    // feet
    fill(204, 0, 0);
    stroke(10);
    rect(x-18, y+68.5, 20.0, 37.0, 0, 0, 15.0, 15.0);
    rect(x+29, y+68.5, 20.0, 37.0, 0, 0, 15.0, 15.0); 
  }  
}


