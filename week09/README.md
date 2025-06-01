# Week-09 Task

This sketch is a simple platformer game where a player character can move and jump across platforms while avoiding enemies that spawn from the left and right sides of the screen. The game ends when the player collides with an enemy.

---

## Requirements

- **Processing version**: 4.3  
- **Libraries**: None

---

## How to Run

1. Open `week9.pde` in Processing.
2. Press **left/right arrow keys** to move.
3. Press **spacebar** to jump.
4. Avoid incoming enemies — colliding with one ends the game.

---

## Video

[Week 9 Gameplay](https://artslondon-my.sharepoint.com/:v:/r/personal/c_lau0820241_arts_ac_uk/Documents/Computational%20Practices/week9.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=NJsB5D)

---

## Design Notes

This sketch helped me explore:

- Structuring a simple game using custom classes (`Player`, `Enemy`)
- Implementing basic physics: gravity, jumping, and platform collision
- Managing object lists (enemies) and screen boundaries

### Challenges

- Detecting landing accurately on moving platforms
- Handling multiple enemies and checking for collisions cleanly
- Keeping gameplay smooth while updating both enemies and the player

---
