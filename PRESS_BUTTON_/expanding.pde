float scale;
boolean grow;

void setup() {
  size(400, 400);
  scale = 1.0;
  grow = false;
}

void draw() {
  ellipse(width/2.0, height/2.0, scale*3.0, scale*3.0);
  if(grow) {
    scale = scale + 0.1;
  }
}

void keyPressed() {
  grow = true;
}

void keyReleased() {
  grow = false;
}