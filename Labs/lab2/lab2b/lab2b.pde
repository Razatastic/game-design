//2 - Drawing Curves\\

int sizeConstraint = 0; //Used to figure out display window constraint
int numOfCircles = 4;  //Sets number of circles being made
circleGenerator[] circle = new circleGenerator[numOfCircles];  //Initialize circle array of size 4
int i = 0;  //Increment counter for while loop which creates circles in draw()
int backgroundColor = 0; //Used for setting background to black

void setup() {
  size(600, 600);
  //fullScreen();
  background(backgroundColor);
  for (int i = 0; i < numOfCircles; i++) {  //Generates circle objects
    circle[i] = new circleGenerator();
  }
}
void draw() {
  background(backgroundColor);
  for (int i = 0; i<numOfCircles; i++) {  //Draws different colored circle objects
    fill(circle[i].circleColor);
    ellipse(circle[i].xCoord, circle[i].yCoord, circle[i].radius, circle[i].radius );
  }

  if (backgroundColor == 255) {  //Draw a spline curve if background is white
    noFill();
    stroke(0);
    curve(circle[0].xCoord, circle[0].yCoord, circle[1].xCoord, circle[1].yCoord, circle[2].xCoord, circle[2].yCoord, circle[3].xCoord, circle[3].yCoord);
  } else if (backgroundColor == 0) {  //Draw a Bezier curve if background is black
    noFill();
    stroke(255);
    bezier(circle[1].xCoord, circle[1].yCoord, circle[0].xCoord, circle[0].yCoord, circle[3].xCoord, circle[3].yCoord, circle[2].xCoord, circle[2].yCoord);
  }
}

void keyPressed() {  //Changes color of background to either black or white on keypress
  if (backgroundColor == 0) {
    backgroundColor = 255;
  } else if (backgroundColor == 255) {
    backgroundColor = 0;
  }
}

void mousePressed() {  //Changes color of circle being clicked on to a random color
  for (int i = 0; i < numOfCircles; i++) {
    if (dist(mouseX, mouseY, circle[i].xCoord, circle[i].yCoord) < circle[i].radius/2) {
      circle[i].circleColor = circle[i].randomColor();
    }
  }
}

class circleGenerator { 
  float xCoord, yCoord, radius;  //Radius property of each circle
  color circleColor;  //Color property of each circle
  circleGenerator () {  //Constructs a randomized circle
    xCoord = randomXCoord();
    yCoord = randomYCoord();
    radius = randomSize();
    circleColor = randomColor();
  } 
  int randomXCoord() {  //Returns a random X coordinate
    return int(random(width));
  }
  int randomYCoord() {  //Returns a random Y coordinate
    return int(random(height));
  }
  color randomColor() {  //Returns a random color
    return color(random(255), random(255), random(255));
  }
  int randomSize() {  //Returns a random size for the circle while taking the minimum radius specification into consideration
    return int(random(5, 100));
  }
}
