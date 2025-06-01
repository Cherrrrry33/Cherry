# Week-04 Task

This sketch uses Perlin noise to create a smoothly varying texture and maps grayscale noise values to a custom duotone gradient using `lerpColor()`.

---

## Requirements

- **Processing version**: 4.3  
- **Libraries**: None

---

## How to Run

Run `week4.pde` in Processing.

---

## Video

[Week4 Output](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week4.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=FURfSE)

---

## Design Notes

This sketch helped me understand:

- How to use `noise()` to generate organic patterns.
- The technique of mapping grayscale to a custom color gradient.
- Leveraging `lerpColor()` to implement duotone effects.

### Challenges

- Mapping noise output to color ranges cleanly.
- Understanding how `frameCount` and noise evolve over time.
- Balancing the two colors so the gradient felt smooth and expressive.

---
