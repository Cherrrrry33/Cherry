# Week 01 – Pixel Gradient Experiments

This week’s focus was on learning how to manipulate pixels directly in Processing to create color gradients. Below are three gradient sketches that explore color transitions in different directions and patterns.

---

## Requirements

- **Processing version**: 4.3  
- **Libraries**: None required

---

## How to Run

Each sketch is written in its own `.pde` file. Open and run them in Processing.

- `task1.pde` – Horizontal RGB gradient
- `task2.pde` – (Buggy) Vertical gradient with constant green  
- `task3.pde` – Radial gradient based on distance from center

---

## Screenshots

[alt text](<屏幕截图 2025-03-20 211106-1.png>)

- **Task 2** – Intended Vertical Gradient  
  ![Task 2 Output](task2.png)

- **Task 3** – Radial Gradient  
  ![Task 3 Output](task3.png)

---

## 📝 Design Notes

### Task 1 – Horizontal Gradient

A clean horizontal gradient across the width of the canvas. Red increases, green follows the same curve, and blue fades out. Used `map()` and direct pixel manipulation.

### Task 2 – Vertical Gradient (Bug Present)

This task attempted a vertical gradient but contains a bug:  
```java
pixels[y + x * height] = c; // Incorrect indexing
