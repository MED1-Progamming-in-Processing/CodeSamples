/* @pjs pauseOnBlur = "true"; 
 preload = "/static/uploaded_resources/p.6273/searichter.jpg"; */
 
/** 
 * Sliced Image (v2.62)
 * by  MatzeWagner (2013/Oct)
 * mod GoToLoop
 * 
 * forum.processing.org/two/discussion/586/slicing-image-to-array
 * studio.processingtogether.com/sp/pad/export/ro.9$MTikWt80-9w/latest
 */
 
final static int GRID = 10, NUM = GRID*GRID;
final PImage[] pieces = new PImage[NUM];
PImage img;
 
int jigX, jigY;
boolean isShuffling = true;
 
final static String HOST = "http:/" + "/3.bp.blogspot.com";
 
final static String PATH = "/-fGkhXK9efpM/TmaRMG2mQpI/AAAAAAAAB5w/zEjlbty8zGM/s1600/";
//final static String PATH = "/static/uploaded_resources/p.6273/";
 
final static String NAME = "SmurfSprite.png";
 
void setup() {
  size(806, 809);
  frameRate(.5);
 
  //img = loadImage(HOST + PATH + NAME);
  //img = loadImage(PATH + NAME);
  img = loadImage(NAME);
 
  jigX = (int) (img.width/GRID);  // (int) is to force integer division for JS!
  jigY = (int) (img.height/GRID);
 
  final int diff = img.height - (jigY>>2);
  int i = 0, jx = 0, jy = 0;
 
  while (i != NUM) {
    pieces[i++] = img.get(jx, jy, jigX, jigY);
 
    if ((jy += jigY) > diff) {
      jx += jigX;
      jy = 0;
    }
  }
}
 
void draw() {
  //background(img);
 
  if (isShuffling) for ( int i = 0; i != NUM;
    image(pieces[i++], (int) random(GRID)*jigX, (int) random(GRID)*jigY) );
 
  else for ( int i = 0; i != NUM; 
    image(pieces[i], (int) (i/GRID) * jigX, i++ % GRID * jigY) );
}
 
void mousePressed() {
  isShuffling = !isShuffling;
}
 
void keyPressed() {
  mousePressed();
}
