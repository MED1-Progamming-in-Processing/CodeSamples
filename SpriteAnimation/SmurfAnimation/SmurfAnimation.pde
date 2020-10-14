 
final static int GRID = 4, NUM = GRID*GRID;
final PImage[] pieces = new PImage[NUM];
PImage img;
boolean flipped = false;

PImage bgFar, bgMiddle, bgClose, bgLights;
 
int jigX, jigY;


int ii=0;
int x=0;
int y=height/2;
int x_speed=4;
int y_speed=0;


final static String NAME = "SmurfSprite.png";
 
void setup() {
  size(800, 800);
  frameRate(30);
  y=height/2;
  img = loadImage(NAME);
 
  jigX = (int) (img.width/GRID);  // (int) is to force integer division for JS!
  jigY = (int) (img.height/GRID);
 
  final int diff = img.height - (jigY/4);
  
  print (jigX, jigY);
  print("\n");
  print (diff);
  print("\n");
  print(img.height, jigY>>2 );
  
  int i = 0, jx = 0, jy = 0;
 
  while (i != NUM) {
    pieces[i++] = img.get(jx, jy, jigX, jigY);
 
    if ((jx += jigX) > diff) {
      jy += jigY;
      jx = 0;
    }
  }
}
 
void draw() {
  background(0, 255, 0);
 
//  if (isShuffling) for ( int i = 0; i != NUM;
//    image(pieces[i++], (int) random(GRID)*jigX, (int) random(GRID)*jigY) );
 
//  else for ( int i = 0; i != NUM; 
//    image(pieces[i], (int) (i/GRID) * jigX, i++ % GRID * jigY) );
  ii += 1;
 ii=ii%16;
 x=x+x_speed;
 
 if (x>width-jigX/2) {flipped = true; x_speed *= -1;}
 if (x<-jigX/2) {flipped = false; x_speed *= -1;}
 if (!flipped) {
   
   image(pieces[ii], x, y);
  
 }
 else {
    pushMatrix();
    translate(x+jigX/2, y);
    scale(-1,1);
    translate(-x-jigX/2,-y);
     image(pieces[ii], x, y);
    popMatrix();
   
 }
}
void mousePressed() {

}
 
void keyPressed() {
  mousePressed();
}
