PImage img;
int sizex=100;
int sizey=100;
int inc=2;
int i=0;

void setup() {
  size(800, 600);
  
  // Images must be in the "data" directory to load correctly
  img = loadImage("YellowJelly.gif");

  img.loadPixels();
  imageMode(CENTER);

}

void draw() {
  background(0);
  sizex += inc;
  sizey -= inc;
  i++;
  if (i==20) {i=0; inc=-inc;}

  image(img, width/2, height/2, sizex, sizey);

}
