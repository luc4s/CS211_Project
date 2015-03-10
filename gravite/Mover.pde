class Mover {
  
  PVector location;
  PVector velocity;
  PVector gravity;
  int ballSize = 48;
  
  Mover() {
    location = new PVector (width/2, height/2);
    velocity = new PVector (1, 1);
    gravity = new PVector (0, 2);
  }
  
  void update() {
    if (location.y < height + ballSize/2) {
    velocity.add(gravity);
    }
    location.add(velocity);
  }
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, ballSize, ballSize);
  }
  
  void checkEdges() {
    if (location.x + ballSize/2 > width) {
      velocity.x = velocity.x * -1;
    }
    else if (location.x - ballSize/2 < 0) {
      velocity.x = velocity.x * -1;
    }
    if (location.y + ballSize/2 > height) {
      velocity.y = -abs(velocity.y);// * -1;
    }
    else if (location.y - ballSize/2 < 0) {
      velocity.y = abs(velocity.y);// * -1;
    }
  }
}
