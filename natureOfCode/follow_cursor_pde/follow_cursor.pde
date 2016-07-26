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
    if (r > 0.9) {
      PVector v1 = new PVector(x, y);
      PVector v2 = new PVector(mouseX, mouseY);
      float angle = PVector.angleBetween(v1, v2);
      if (PI / 2 > angle && angle > 3 * PI / 2) { //<>//
        x += 1;
      } else x =+ 1;
      if (0 < angle && angle < PI) {
        y += 1;
      } else {
        y -= 1;
      }
    } else {
      x += int(random(3)) - 1;
      y += int(random(3)) - 1;
    }
    //x = mouseX;
    //y = mouseY;

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
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
}