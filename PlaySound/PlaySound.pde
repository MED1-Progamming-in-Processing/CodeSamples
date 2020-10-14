import processing.sound.*;

//PImage img;


SoundFile song;


void setup() {
  size(720,640);
  background(0);
  song=new SoundFile(this,"Imagine.mp3");
 // song.play(); 
}
// sound file file HAS TO BE in the DATA folder under the main sketch folder. 
//Use "Add file..." tool from the "Sketch" menu.

void mousePressed() {
  if (song.isPlaying()) {
    song.pause();
  }
  else {
    song.play();
  }
} 


void draw(){
}
