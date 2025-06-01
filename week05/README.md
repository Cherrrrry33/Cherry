# Week-05 Task

This sketch captures live video from the webcam, applies a dithering effect by thresholding and diffusing brightness errors, and remaps the output to a custom duotone gradient. It combines real-time image processing with generative color output.

---

## Requirements

- **Processing version**: 4.3  
- **Library**: `processing.video`  
- **Hardware**: A working webcam

---

## How to Run

1. Make sure your webcam is connected.
2. Ensure the `processing.video` library is installed.
3. Run `week5.pde` in Processing.

---

## Video

[Watch Week 5 Output](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week5.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=7OWhzx)

---

## Design Notes

This sketch helped me explore:

- Capturing and reading live webcam video frames.
- Mapping grayscale output to a duotone gradient in real time.

### Challenges

- Getting the webcam feed to initialize properly across devices.
- Managing pixel-level operations while keeping real-time performance.

---
