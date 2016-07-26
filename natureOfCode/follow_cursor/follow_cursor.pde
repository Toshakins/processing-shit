class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    float r = random(1);
    if (r > 0.5) {
      PVector v = new PVector(mouseX - x, mouseY - y);
      float angle = degrees(v.heading());
      if (90 > angle && angle > -90) {
        x += 1;
      } else x -= 1;
      if (-180 < angle && angle < 0) {
        y -= 1;
      } else {
        y += 1;
      }
    } else {
      x += int(random(3)) - 1;
      y += int(random(3)) - 1;
    }

    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}


Walker w;

void setup() {
  size(640,360);
  // Create a walker object
  w = new Walker();
  background(255);
  frameRate(500);
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
}