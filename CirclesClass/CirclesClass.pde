Circle[] circles = new Circle[1000];

void setup() {
  size(300, 300);
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle(random(width), random(height), random(-3, 3), random(-3, 3));
  }
}

void draw() {
  background(200);

  for (int i = 0; i < circles.length; i++) {
    circles[i].move();
    circles[i].display();
  }
}
