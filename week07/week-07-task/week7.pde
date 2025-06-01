import processing.sound.*;

SoundFile sample1;
SoundFile sample2;
SoundFile sample3;
SoundFile sample4;
SoundFile sample5;

float bpm = 120; // beats per minute

int hihatTime = 90;
int bassTime = 105;
boolean secondHit = false;

int clapPattern;

float color01 = random(255);
float color02 = random(255);
float color03 = random(255);
float color1 = color01;
float color2 = color02;
float color3 = color03;

void setup() {
  size(640, 360);
  background(255);

  sample1 = new SoundFile(this, "kick.wav");
  sample2 = new SoundFile(this, "hihat.wav");
  sample3 = new SoundFile(this, "clap.wav");
  sample4 = new SoundFile(this, "bass drum.mp3");
  sample4.amp(1.0);
  sample5 = new SoundFile(this, "snare.wav");
  frameRate(bpm); // Treat each frame as a beat step
}

void draw() {
  background(color01, color02, color03);

  // Toggle between two clap patterns every 600 frames
  boolean pattern2 = (frameCount / 600) % 2 == 1;
  color01 = lerp(color01, color1, 0.05);
  color02 = lerp(color02, color2, 0.05);
  color03 = lerp(color03, color3, 0.05);
  
  if (pattern2) {
    clapPattern = 30;
  } else {
    clapPattern = 120;
  }
  
  // Kick and occasional snare every beat
  if (frameCount % 60 == 0) {
    sample1.play();
    color1 = random(255);
    
      if (frameCount % 60 == 0 && random(1) < 0.2) {
        sample5.play();
      }
  }
  
  // Hi-hat hits every 60 frames starting from 90
  if (frameCount == hihatTime) {
    sample2.play();
    hihatTime += 60;
    color3 = hihatTime;
  }

  // Clap pattern changes based on current mode
  if (frameCount % clapPattern == 0) {
    sample3.play();
    color2 = random(255);
  }
  
  // Bass drum follows an alternating pattern (short + long delay)
  if (frameCount == bassTime) {
    sample4.play();

    if (!secondHit) {
      bassTime += 45;
      secondHit = true;
    } else {
      bassTime += 195;
      secondHit = false;
    }
  }
}
