import java.util.Random;

Random x_gen = new Random();
Random y_gen = new Random();
Random col_gen = new Random();
int R = 50;
int scale = 30;

void setup() {
  size(640, 480);
  stroke(0);
  background(255);
  frameRate(10000);
  noStroke();
}

void draw() {
  float x = width / 4 * (float) x_gen.nextGaussian() + width / 2;
  float y = height / 4 * (float) y_gen.nextGaussian() + height / 2;
  fill(colr(), colr(), colr());
  ellipse(x, y, 3, 3);
  
}

int colr(){
  return (255 / 4 * (int) col_gen.nextGaussian() + 255 / 2) % 255;
}