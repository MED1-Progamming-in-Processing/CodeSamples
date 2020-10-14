import processing.sound.*;
SoundFile mySoundFile;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  mySoundFile = new SoundFile(this, "sample.mp3");
  mySoundFile.play();
}      

void draw() {
}
