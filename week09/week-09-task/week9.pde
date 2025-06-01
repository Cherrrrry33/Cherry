Player player;
ArrayList<Enemy> enemies;

boolean gameOver = false;

float[][] platforms = {
  {0, 550, 800, 50},
  {300, 450, 100, 20},
  {500, 400, 100, 20}
};

void setup() {
  size(800, 600);
  player = new Player(100, 300);
  enemies = new ArrayList<Enemy>();
}

void draw() {
  background(135, 206, 250);

  if (!gameOver) {
    // Draw all platforms
    for (int i = 0; i < platforms.length; i++) {
      float[] p = platforms[i];
      fill(0, 150, 0);
      rect(p[0], p[1], p[2], p[3]);

      // Landing detection
      if (player.position.y + player.h >= p[1] && player.position.y + player.h <= p[1] + 10 &&
          player.position.x + player.w > p[0] && player.position.x < p[0] + p[2] &&
          player.velocity.y >= 0) {
        player.position.y = p[1] - player.h;
        player.velocity.y = 0;
        player.onGround = true;
      }
    }

    // Spawn new enemy every second
    if (frameCount % 60 == 0) {
      enemies.add(new Enemy());
    }

    // Update and display enemies
    for (int i = enemies.size() - 1; i >= 0; i--) {
      Enemy e = enemies.get(i);
      e.update();
      e.display();

      // Collision check with player
      float d = dist(e.position.x, e.position.y, player.position.x + player.w/2, player.position.y + player.h/2);
      if (d < 20) {
        gameOver = true;
      }

      // Remove enemies that move off screen
      if (e.isOffScreen()) {
        enemies.remove(i);
      }
    }

    player.applyGravity();
    player.update();
    player.display();
    
  } else {
    // GAME OVER SCREEN
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(40);
    text("GAME OVER", width/2, height/2);
  }
}
   
void keyPressed() {
  if (key == ' ') {
    player.jump();
  }
}
