
Walker w;

void setup() {
  size(displayWidth,displayHeight); 
  
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.render(); 
}
