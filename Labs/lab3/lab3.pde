Ball[] balls = new Ball[10];

void setup() {
  size(600, 400);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
 background(255);
  for (int i = 0; i < balls.length; i++) {
    balls[i].draw();;
  }
}

void mouseReleased(){
  for (Ball b : balls) {
    if(dist(mouseX, mouseY, b.x, b.y) < b.r) {
      b.setClicked();
    }
  }
}

class Ball {
  float r;
  float x;
  float y;
  float z;
  float yspeed;
  color col;
  boolean clicked;
  
  Ball() {
    this.r = random(25,75);
    this.x = random(width);
    this.y = random(-500,-50);
    this.yspeed = random(1,3);
    this.col = color(random(255),random(255),random(255));
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
      yspeed = random(1,3);
    }
    
    if (clicked == true) {
      stroke(255);
      fill(255);
      ellipse(x,y,0,0);
    } else {
      stroke(0);
      fill(col);
      ellipse(x,y,r,r);
    }
    
    if (y < 0 - r) {
      clicked = false;
    }
  }
}
