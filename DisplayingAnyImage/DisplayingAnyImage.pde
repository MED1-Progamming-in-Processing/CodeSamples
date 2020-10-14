PImage ourImage;

void setup() {
  size(600,400);
  ourImage=loadImage("dahlia.jpg");
}

void draw(){
  background(0);
  image(ourImage,0,0);
//  image(img,20,20,300,200);
}
