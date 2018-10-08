int ballCount = 5;  // Number of ball objects to be made //<>//
Ball[] balls = new Ball[ballCount];  // Array of Ball objects
float minSpeed = 0.8, maxSpeed = 2.8;  // Speed range of ball drop
int scoreCounter = 0;  // Score tracker
int lives = 3; // Number of live players has
color backgroundColor = color(0);  // Background color tracker
boolean gameState = false;  // Boolean that determines whether or not game is running

void setup() {
  fullScreen();
  background(backgroundColor);
  for (int i = 0; i < balls.length; i++) {  // Create ball objects
    balls[i] = new Ball();
  }
  // Greeting
  fill(255, 102, 102);
  textSize(30);
  textAlign(CENTER);
  text("Welcome to Ball Drop!", width/2, height/2);
  text("Press P to Play", width/2, height/2 + 50);
}

void draw() {
  if (gameState == true) {
    ballSpeed();
    background(backgroundColor);
    if (lives !=0) {
      for (int i = 0; i < balls.length; i++) {  // Draw ball objects
        balls[i].draw();
      }
      // Live score counter
      fill(240, 18, 190);
      textSize(20);
      textAlign(LEFT);
      text("Score: " + scoreCounter, 50, 50);
      text("Lives: " + lives, 50, 80);
    } else
    {
      gameState = false;
      fill(255, 102, 102);
      textSize(25);
      textAlign(CENTER);
      text("You scored " + scoreCounter + " points. Better luck next time!", width/2, height/2);
      textAlign(CENTER);
      text("Press Spacebar to play again", width/2, height/2 + 50);
    }
  }
}

void keyPressed() {  // Start or Restart game
  if (key == 'p' || key == 'P') {
    gameState = true;
  } else if (key == ' ' && gameState == false)
  { 
    init();
  }
}

void mouseReleased() {  // Reset ball on mouse click and increment score
  for (Ball b : balls) {
    if (dist(mouseX, mouseY, b.x, b.y) < b.r/2) {
      b.resetBall();
      scoreCounter++;
    }
  }
}

void ballSpeed() {  // Increase ball speed (Game difficulty)
  if (scoreCounter % 10 == 0) {
    minSpeed += 0.005;
    maxSpeed += 0.005;
  }
}


void init() {  // Used for reinitializing game
  clear();
  scoreCounter = 0;
  lives = 3;
  minSpeed = 0.8;
  maxSpeed = 2.8;
  setup();
}

class Ball {
  float r, x, y, z, yspeed;  // R(radius), X(x-coordinate), Y(y-coordinate), Z(z-coordinate), yspeed(how fast the ball comes down)
  color col;  // Color of ball
  boolean clicked;  // Boolean to check whether the ball was clicked

  Ball() {
    // Randomly setting values for a ball object's properties
    this.r = random(30, 100);
    this.x = random(0, width);
    this.y = random(-200, -100);
    this.yspeed = random(minSpeed, maxSpeed);
    this.col = color(random(255), random(255), random(255));
    this.clicked = false;
  }

  void resetBall() {  // Resets ball properties
    this.r = random(50, 100);
    this.x = random(50, width - 50);
    this.y = random(-200, -100);
    this.yspeed = random(minSpeed, maxSpeed);
    this.col = color(random(255), random(255), random(255));
  }

  void draw() {  // Draw the circle object on the screen
    y = y + yspeed;
    stroke(255);
    strokeWeight(3);
    fill(col);
    ellipse(x, y, r, r);

    if (y - r > height) {  // Reset circle if it goes past screen
      resetBall();
      lives--;
    }
  }
}
