
class Walker {
  float t = 0;
  int pSize = 5;
  PVector location, pLocation;

  Walker() {
    location = new PVector(width/2, height/2);
    pLocation = new PVector(0,0);
  }

  void render() {
    strokeWeight(2);
    stroke(random(255), random(255), random(255), 100);
    line(pLocation.x, pLocation.y, location.x, location.y);
  }

  void step() {
    float choice = random(1);
    float stepSize = noise(t)*10;

    pLocation.x = location.x;
    pLocation.y = location.y;

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

