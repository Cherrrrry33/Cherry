# Week 05 – Duotone Camera Dithering

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
3. Run `Week-05-Task.pde` in Processing.

---

## Video

📹 [Watch Week 5 Output](https://artslondon-my.sharepoint.com/personal/c_lau0820241_arts_ac_uk/_layouts/15/stream.aspx?id=%2Fpersonal%2Fc%5Flau0820241%5Farts%5Fac%5Fuk%2FDocuments%2FComputational%20Practices%2F3%E6%9C%8820%E6%97%A5%20%281%29%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2Ec2747b74%2D5bc1%2D4e44%2Db611%2D739688b7bb43)

---

## Design Notes

This sketch helped me explore:

- Capturing and reading live webcam video frames.
- Mapping grayscale output to a duotone gradient in real time.

### Challenges

- Getting the webcam feed to initialize properly across devices.
- Managing pixel-level operations while keeping real-time performance.

---
