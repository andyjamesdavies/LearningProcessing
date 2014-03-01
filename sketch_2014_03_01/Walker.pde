
class Walker {
  float t = 0;
  float topSpeed;
  int pSize = 5;
  PVector acceleration;
  PVector velocity;
  PVector gravity;
  PVector location, pLocation;

  Walker() {
    location = new PVector(width/2, height/2);
    pLocation = new PVector(0,0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
    topSpeed = 50;
  }

//  void render() {
//    strokeWeight(2);
//    stroke(random(255), random(255), random(255), 100);
//    line(pLocation.x, pLocation.y, location.x, location.y);
//  }

  void render() {
    noStroke();
    fill(random(255), random(255), random(255), 100);
    ellipse(location.x, location.y, pSize, pSize);    
  }

//  void step() {
//    float choice = random(1);
//
//    acceleration.x = noise(t)*10;
//    acceleration.y = noise(t)*10;
//
//    pLocation.x = location.x;
//    pLocation.y = location.y;
//
//    if (choice < 0.5) {
//      velocity.add(acceleration); 
//    } 
//    else {
//      velocity.sub(acceleration);
//    }
//    
//    velocity.limit(topSpeed);
//
//    if (choice < 0.25) {
//      location.x += velocity.x;
//    }
//    else if (choice < 0.5) {
//      location.x -= velocity.x; 
//    }
//    else if (choice < 0.75) {
//      location.y += velocity.y; 
//    }
//    else {
//      location.y -= velocity.y; 
//    }
//
//    location.x = constrain(location.x, 0, width-1);
//    location.y = constrain(location.y, 0, height-1);
//
//    t += 0.01;
//  }
  
  void step() {
    float choice = random(1);
    
    pLocation.x = location.x;
    pLocation.y = location.y;
    
    if (choice < 0.85) {
      gravity = new PVector(width/2, height/2);
    }
    else {
      gravity = new PVector(random(width), random(height));
    }
    
    gravity.sub(location);
    gravity.setMag(random(2));
    acceleration = gravity;
    
    velocity.add(acceleration);
    location.add(velocity);
    
    topSpeed = topSpeed/(gravity.x+gravity.y);
    velocity.limit(topSpeed);
  }
  
}

