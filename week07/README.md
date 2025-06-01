# Week-07 Task(develop futher)

This sketch creates a simple audiovisual drum beats using `SoundFile` objects to play different drum samples. The rhythm patterns influence animated background color changes, creating a synchronized visual rhythm experience. For the extention, I've allowed the user to control the each beats.

---

## Requirements

- **Processing version**: 4.3  
- **Library**: `processing.sound`  
- **Assets**:  
  - `kick.wav`  
  - `hihat.wav`  
  - `clap.wav`  
  - `bass drum.mp3`  
  - `snare.wav`  

---

## How to Run

1. Install the `processing.sound`.
2. Run `week7.pde` in Processing / Run `week7_extention.pde` in Processing.

---

## Video

[Week 7 Output](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week7.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=hKh53W)
[Week 7 extention Output](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week7%20extention.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=KcQlqa)

---

## Design Notes

This sketch helped me explore:

- Synchronizing audio samples with frame-based timing logic.
- Using BPM (beats per minute) to control visual updates and rhythm.
- Mixing randomness with structure for a dynamic beat pattern.
- Lerp-based color blending for smooth transitions.

### Challenges

- Keeping different drum sample timings aligned visually and audibly.
- Balancing frame rate with playback control.
- Avoiding audio overlap or clashing timing.

- I've try to use wav file for the bass drum at first but I find out that mp3 file provide a better quality.

## Extention

This updated version adds **user control** to an earlier automatic beat sequencer:

### Key Additions

- **Toggle Buttons**: Let the user enable/disable individual samples (kick, hi-hat, clap, bass).
- **Snare Button**: Snare is no longer random — it now plays **only** when the user presses the button.
- **Visual Feedback**: The background color changes in sync with the active samples.
- **Refined Beat Timing**: Controlled via frame-based timing linked to BPM.

### Challenges

- Building reliable toggle UI logic without a GUI library.
- Make sure all the sample follows the rhythm.
- Making the interface intuitive while keeping the code simple.

### Inspiration

Inspired by drum pads, grooveboxes, and live sequencing tools, this version shifts the sketch from a generative artwork into a **performable instrument**.

---