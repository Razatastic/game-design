/*
//1.2 - Draw a Line\\
 line(10,20,30,40);
 //1.3 - Modify your program\\
 line(30,10, 50,200);
 //1.4 - Adding color\\
 stroke(#983939);
 line(30,10, 50,200);
 //Green square
 stroke(#3FB756);
 line(10,10,30,10);
 line(10,10,10,30);
 line(30,10,30,30);
 line(10,30,30,30);
 //Colored square
 stroke(#3FB756);
 line(10,10,30,10);
 stroke(#B73F6D);
 line(10,10,10,30);
 stroke(#3F5AB7);
 line(30,10,30,30);
 stroke(#FCFFA7);
 line(10,30,30,30);
 
 //3.1 - Drawing different kinds of shapes\\
 //point(10,20); //Draws a point
 triangle(10,10,5,15, 15,15); //Draws a triangle
 quad(20,20,60,20,50,40,10,40); //Draws a quadrilateral
 rect(10,10,40,20); //Draws a rectangle
 ellipse(40,40,20,60); //Draws an ellipse
 arc(30,30,30,40,1,3); //Draws an arc
 fill(#983939);
 strokeWeight(5);
 ellipse(40,40,20,60);
 //3.2 - Drawing text\\
 PFont font = loadFont( "BookAntiqua-Italic-32.vlw" );
 textFont( font );
 text( "HELLO", 0, 20 );
 
 //4.1 - The Draw Loop\\
 void setup()
 {
 PFont font = loadFont( "BookAntiqua-Italic-32.vlw" );
 textFont( font );
 };
 void draw()
 {
 line( 10, 20, 30, 40 );
 text( "HELLO", 0, 20 );
 };
 
 //4.2 - Objects\\
 Spot p; // declare the object
 void setup() {
 p = new Spot( 35, 50 ); // Instantiate the object
 }
 void draw() {
 p.display();
 }
 class Spot { // Define the class
 int x, y;
 Spot( int x0, int y0 ) {
 x = x0;
 y = y0;
 }
 void display() {
 fill( 175 );
 ellipse( x, y, 10, 20 );
 }
 }
 
 //5.1 - Keyboard Input\\
 void setup() {
 background( #ff0000 );
 }
 void draw() {
 }
 void keyPressed() {
 if ( key == 'R' ) {
 background( #ff0000 );
 }
 else if ( key =='G' ) {
 background( #00ff00 );
 }
 else if ( key == 'B' ) {
 background( #0000ff );
 }
 else if ( key == 'W' ) {
 background( #ffffff );
 }
 }
 //5.1a\\
 void setup() {
 background( #ff0000 );
 }
 void draw() {
 }
 void keyPressed() {
 if ( key == 'R' ) {
 background( #ff0000 );
 }
 else if ( key =='g' ) {
 background( #00ff00 );
 }
 else if ( key == 'B' ) {
 background( #0000ff );
 }
 else if ( key == 'w' ) {
 background( #ffffff );
 }
 }
 //5.1b\\
 void setup() {
 }
 void draw() {
 }
 void keyPressed() {
 if ( key == 'r' ) {   //Draws a rectangle
 clear();
 rect(10,10,40,20);
 }
 else if ( key =='t' ) {   //Draws a triangle
 clear();
 triangle(10,10,5,15, 15,15);
 }
 else if ( key == 'q' ) {   //Draws a quadilateral (trapezoid)
 clear();
 quad(20,20,60,20,50,40,10,40);
 }
 else if ( key == 'e' ) {   //Draws an ellipse
 clear();
 ellipse(40,40,20,60);
 }
 }
 //5.1c\\
 void setup() {
 }
 void draw() {
 }
 void keyPressed() {
 if ( key == 'Y' ) {   //Sets background to green
 background( #1CFF1A );
 }
 else if ( key =='N' ) {   //Sets background to red
 background( #ff0000 );
 }
 }
 int value = 0;
 void keyReleased() {
 if (key == 'Y') {
 background( #C007F5 );
 }
 else if ( key =='N' ) {   //Sets background to red
 background( #E9FA08 );
 }
 }
 //5.2 - Mouse Input\\
 int x, y;
 void setup() {
 ellipseMode( CENTER );
 x = width/2;
 y = height/2;
 }
 void draw() {
 background( #ffffff );
 stroke( #ff0000 );
 strokeWeight( 2 );
 ellipse( x, y, 60, 60 );
 }
 void mousePressed() {
 x = mouseX;
 y = mouseY;
 }
 //5.2a\\
 int x, y;
 void setup() {
 ellipseMode( CENTER );
 x = width/2;
 y = height/2;
 }
 void draw() {
 background( #ffffff );
 stroke( #ff0000 );
 strokeWeight( 2 );
 ellipse( x, y, 60, 60 );
 }
 void mouseDragged() {
 x = mouseX;
 y = mouseY;
 }
 //5.2b\\
 int x, y;
 void setup() {
 ellipseMode( CENTER );
 x = width/2;
 y = height/2;
 }
 void draw() {
 background( #ffffff );
 stroke( #ff0000 );
 strokeWeight( 2 );
 ellipse( x, y, 60, 60 );
 }
 void mouseMoved() {
 x = mouseX;
 y = mouseY;
 }
 //5.2c\\
 int rectX, rectY, circleX, circleY;
 void setup() {
 size(320, 240);
 rectX = 200;
 rectY = 100;
 ellipseMode( CENTER );
 circleX = 100;
 circleY = 100;
 }
 void draw() {
 background( #000000 );
 stroke( #ff0000 );
 strokeWeight( 5 );
 rect ( rectX, rectY, 60, 20);
 ellipse( circleX, circleY, 60, 60 );
 }
 void mouseClicked() {
 if(mouseX > rectX && mouseX < rectX+60)
 {
 if(mouseY > rectY && mouseY < rectY+20)
 {
 rect(rectX, rectY, 60, 20);
 fill(#D6E509);
 }
 }
 if(mouseX > circleX-30 && mouseX < circleX+30)
 {
 if(mouseY > rectY-30 && mouseY < rectY+30)
 {
 fill(#09ACE5);
 ellipse( circleX, circleY, 60, 60 );
 }
 }
 }
 
 //6 - Animation\\
 int x = 0;
 int y = 50;
 void setup() {
 background( #000000 );
 }
 void draw() {
 background( #000000 );
 ellipse( x, y, 40, 40 );
 x = x + 1;
 if ( x > width ) {
 x = 0;
 }
 }
 //6.a\\
 int height = 400;
 int width = 400;
 int x = width/2;
 int y = 50;
 void setup() {
 size(400,400);
 background( #000000 );
 }
 void draw() {
 background( #000000 );
 ellipse( x, y, 40, 40 );
 y = y + 1;
 if ( y > height ) {
 y = 0;
 }
 }
 //6.b\\
 int width = 10;
 int height = 10;
 int x = 300;
 int y = 300;
 float endX = 0;
 void setup() {
 size(600, 600);
 ellipseMode(CENTER);
 }
 void draw() {
 background(0);
 strokeWeight(5);
 stroke(#ff0000);
 
 ellipse( x, y, width, height );
 
 while (width < endX)
 {    
 width++;
 height++;
 ellipse( x, y, width, height );
 if (width == 600)
 {
 endX = 0;
 width = 10;
 height = 10;
 }
 }
 endX = endX + 1;
 }
 //7 - Programming challenges\\
 //7.a\\
 int x = 0;
 int y = 0;
 void setup()
 {
 size(600, 600);
 }
 void draw()
 {
 background(0);
 keyPressed();
 }
 void keyPressed() {
 if ( key == 'c' ) {
 fill(#1CB71A);
 ellipse( x, 300, 50, 50 );
 x = x + 1;
 if ( x > width ) {
 x = 0;
 }
 } else if ( key =='t' ) {
 fill(#2129EA);
 triangle(150, y+300, 300, y, 450, y+300);
 y = y + 1;
 if ( y > height ) {
 y = 0;
 }
 }
 }
 */
//7.b\\
int x = 0;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  strokeWeight(5);
  stroke(255);
  keyPressed();
  mouseMoved();
}
void mouseMoved() {
  x=mouseX;
  line(x, 0, x, height);
}
void keyPressed() {
  if ( key == 'b' ) {
    stroke(#1F28CB);
  } else if ( key =='1' ) {
    strokeWeight(1);
  } else if (key=='3') {
    strokeWeight(3);
  }
}
