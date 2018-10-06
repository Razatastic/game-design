Ball[] balls = new Ball[10];  // Array of Ball objects
int scoreCounter = 0;  // Score tracker
int backgroundColor = 255;  // Background color tracker

void setup() {
  size(600, 400);
  for (int i = 0; i < balls.length; i++) {  //Create ball objects
    balls[i] = new Ball();
  }
}

void draw() {
  background(backgroundColor);
  for (int i = 0; i < balls.length; i++) {
    balls[i].draw();
  }
}

void mouseReleased() {  // Mark setClicked to true on mouseRelease
  for (Ball b : balls) {
    if (dist(mouseX, mouseY, b.x, b.y) < b.r) {
      b.setClicked();
    }
  }
}

class Ball {
  float r, x, y, z, yspeed;  // R(radius), X(x-coordinate), Y(y-coordinate), Z(z-coordinate), yspeed(how fast the ball comes down)
  color col;  // Color of ball
  boolean clicked;  // Boolean to check whether the ball was clicked

  Ball() {
    // Randomly setting values for a ball object's properties
    this.r = random(25, 75);
    this.x = random(width);
    this.y = random(height);
    this.yspeed = random(1, 3);
    this.col = color(random(255), random(255), random(255));
    this.clicked = false;
  }

  void setClicked() {
    this.clicked = true;
  }

  void draw() {
    y = y + yspeed;
    if (y > height) {
      y = random(-200, -100);
      x = random(width);
      yspeed = random(1, 3);
    }

    if (clicked == true) {
      stroke(255);
      fill(255);
      ellipse(x, y, 0, 0);
    } else {
      stroke(0);
      fill(col);
      ellipse(x, y, r, r);
    }

    if (y < 0 - r) {
      clicked = false;
    }
  }
}
