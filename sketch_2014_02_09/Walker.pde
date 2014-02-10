
class Walker {
  float t = 0;
  int pSize = 5;
  PVector location;

  Walker() {
    location = new PVector(width/2, height/2);
  }

  void render() {
//    stroke(0);
//    point(location.x, location.y);
    
    noStroke();
    fill(random(255),random(255),random(255), 20);
    ellipse(location.x, location.y, pSize, pSize);
  } 

  void step() {
    float choice = random(1);
    float stepSize = noise(t)*10;

    if (choice < 0.25) {
      location.x += stepSize;
    } 
    else if (choice < 0.5) {
      location.x -= stepSize;
    } 
    else if (choice < 0.75) {
      location.y += stepSize;
    } 
    else {
      location.y -= stepSize;
    }

    location.x = constrain(location.x, 0, width-1);
    location.y = constrain(location.y, 0, height-1);

    t += 0.01;
  }
}

