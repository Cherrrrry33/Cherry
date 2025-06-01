import processing.sound.*;

SoundFile sample1;
SoundFile sample2;
SoundFile sample3;
SoundFile sample4;
SoundFile sample5;

float bpm = 120;
int framesPerBeat = int(60.0 / bpm * 60); // Convert BPM to frame count per beat

float hihatTime = frameRate;
float bassTime = frameRate;
int clapPattern = 30;
boolean secondHit = false;

boolean snarePressed = false;

// Colors that will be interpolated for background animation
float color01 = random(255);
float color02 = random(255);
float color03 = random(255);
float color1 = color01;
float color2 = color02;
float color3 = color03;

// Button logic
boolean[] isLooping = new boolean[5];
int[] lastLoopFrame = new int[5];
String[] buttonLabels = { "Kick", "HiHat", "Clap", "Bass", "Snare" };
int[] buttonX = new int[5];
int buttonY = 320;
int buttonW = 100;
int buttonH = 30;

void setup() {
  size(640, 360);
  background(255);
  frameRate(60);

  sample1 = new SoundFile(this, "kick.wav");
  sample2 = new SoundFile(this, "hihat.wav");
  sample3 = new SoundFile(this, "clap.wav");
  sample4 = new SoundFile(this, "bass drum.mp3");
  sample4.amp(1.0);
  sample5 = new SoundFile(this, "snare.wav");

  for (int i = 0; i < 5; i++) {
    buttonX[i] = 10 + i * (buttonW + 10);
    isLooping[i] = false;
    lastLoopFrame[i] = 0;
  }
}

void draw() {
  background(color01, color02, color03);

  color01 = lerp(color01, color1, 0.05);
  color02 = lerp(color02, color2, 0.05);
  color03 = lerp(color03, color3, 0.05);

  if (frameCount % 60 == 0 && isLooping[0]) {
    sample1.play();
    color1 = random(255);
  }

if (isLooping[1] && frameCount >= hihatTime) {
  sample2.play(); // hihat
  hihatTime += framesPerBeat; // Advance to next hi-hat beat
  color3 = random(255);
}

  if (frameCount % clapPattern == 0 && isLooping[2]) {
    sample3.play(); // clap
    color2 = random(255);
  }

  if (isLooping[3] && frameCount >= bassTime) {
    sample4.play(); // bass drum
    if (!secondHit) {
      bassTime += framesPerBeat + 45;
      secondHit = true;
    } else {
      bassTime += framesPerBeat + 195;
      secondHit = false;
    }
  }
  
  drawButtons();
}

void drawButtons() {
  for (int i = 0; i < 5; i++) {
    if (i == 4 && snarePressed) {
      fill(255, 100, 100);  // Red = active press (for snare)
    } else if (i != 4 && isLooping[i]) {
      fill(100, 200, 100);
    } else {
      fill(200);
    }

    rect(buttonX[i], buttonY, buttonW, buttonH);
    fill(0);
    textAlign(CENTER, CENTER);
    text(buttonLabels[i], buttonX[i] + buttonW / 2, buttonY + buttonH / 2);
  }
}


void mousePressed() {
  for (int i = 0; i < buttonX.length; i++) {
    if (mouseX > buttonX[i] && mouseX < buttonX[i] + buttonW &&
        mouseY > buttonY && mouseY < buttonY + buttonH) {

      if (i == 4) {
        // Snare is a one-shot trigger
        sample5.play();
        snarePressed = true;  
      } else {
        // Toggle looping for other samples
        isLooping[i] = !isLooping[i];
        lastLoopFrame[i] = frameCount;
      }
    }
  }
}

void mouseReleased() {
  snarePressed = false;
}
