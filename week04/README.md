# Week 04 – Duotone Noise Texture

This sketch uses Perlin noise to create a smoothly varying texture and maps grayscale noise values to a custom duotone gradient using `lerpColor()`.

---

## Requirements

- **Processing version**: 4.3  
- **Libraries**: None

---

## How to Run

Run `Week-04-Task.pde` in Processing.

---

## Screengrab

[Week4 Output](https://artslondon-my.sharepoint.com/personal/c_lau0820241_arts_ac_uk/_layouts/15/stream.aspx?id=%2Fpersonal%2Fc%5Flau0820241%5Farts%5Fac%5Fuk%2FDocuments%2FComputational%20Practices%2F3%E6%9C%8820%E6%97%A5%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E9d21e6b1%2Da1c0%2D4b85%2Da116%2Daba6367337c2)

---

## 📝 Design Notes

This sketch helped me understand:

- How to use `noise()` to generate organic patterns.
- The technique of mapping grayscale to a custom color gradient.
- Leveraging `lerpColor()` to implement duotone effects.

### Challenges

- Mapping noise output to color ranges cleanly.
- Understanding how `frameCount` and noise evolve over time.
- Balancing the two colors so the gradient felt smooth and expressive.

---
