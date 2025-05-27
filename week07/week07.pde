import processing.sound.*;

SoundFile sample1;
SoundFile sample2;
SoundFile sample3;
SoundFile sample4;

float bpm = 120; // beats per minute

float myFrameRate = bpm / 60; // frame rate = beats per second

int lastBeatTime = 0;

void setup() {
  size(640, 360);
  background(255);

  sample1 = new SoundFile(this, "kick.wav");
  sample2 = new SoundFile(this, "hihat.wav");
  sample3 = new SoundFile(this, "clap.wav");
  sample4 = new SoundFile(this, "bass drum.wav");
  frameRate(myFrameRate);
}

void draw() {
  background(random(255), random(255), random(255));
  
  
  // play every beat
  sample1.play();

  if (!snarePlayed && millis(）lastBeatTime > 500) {
    sample2.play();
    snarePlayed = true;
  }
  
  //if (millis() - lastBeatTime > 500) {
  //  sample2.play();
  //  lastBeatTime = millis();
 // }

  //if (frameCount % 2 == 0) {
  //  sample3.play();
 // }
  
  //if (millis() - lastBeatTime >= 750) {
  //  sample4.play();
   // lastBeatTime = millis();
 // }
}
