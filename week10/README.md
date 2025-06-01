# Week-10 Task

This sketch simulates a falling leaf particle system using physics-based forces. Leaves are generated at the top or from mouse clicks, and are influenced by gravity and gentle wind. Each leaf spins, fades, and disappears over time, creating a dynamic, organic effect.

---

## Requirements

- **Processing version**: 4.3  
- **Libraries**: None

---

## How to Run

1. Open `week10.pde` in Processing.
2. Click to generate a new burst of leaves.

---

## Video

[Week 10 Output](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week10.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=iYELcT)

---

## Design Notes

This sketch helped me explore:

- Building a modular particle system (`Leaf` and `LeafSystem`)
- Applying multiple forces (gravity + wind) to particles
- Adding behavior over time: rotation, fading, and death
- Handling interaction with mouse input to create new leaf bursts

### Challenges

- Balancing wind randomness to feel natural but not chaotic
- Fine-tuning lifespan, velocity, and rotation for realism

---
