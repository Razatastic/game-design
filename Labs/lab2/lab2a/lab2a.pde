//1 - Images and Pixels\\

PImage img, avgeragedImage;  // Declare variables of type PImage
float r, b, g;  // Declare variables for red, blue, green

void setup() {
  size(600, 600);
  img = loadImage("tomato.png");  // Make a new instance of a PImage by loading an image file
  loadPixels();  // Before we deal with pixels
  for (int x = 0; x < img.width; x++) {  // Loop through every pixel and get RGB value of it
    for (int y = 0; y < img.height; y++) {
      int pixel = x + y * img.width;
      r += red(img.pixels[pixel]);
      g += green(img.pixels[pixel]);
      b += blue(img.pixels[pixel]);
    }
  }

  r = r / (img.width * img.height);
  g = g / (img.width * img.height);
  b = b / (img.width * img.height);

  avgeragedImage = createImage(600, 600, RGB);  // Make a PImage object called averageImage
  loadPixels();

  for (int x = 0; x < avgeragedImage.width; x++) {  //  Set each pixel to the average color of the pixel
    for (int y = 0; y < avgeragedImage.height; y++) {
      int loc = x + y * avgeragedImage.width;
      avgeragedImage.pixels[loc] = color(r, g, b);
    }
  }  
  updatePixels();
}

void draw() {
}

void keyPressed() {
  if ( key == 'A' || key == 'a') {  // Averaged image
    tint(255);
    image(avgeragedImage, 0, 0, 600, 600);
  } else if (key == 'B' || key == 'b') {  // Blue tint
    tint(0, 0, 255);
    image(img, 0, 0, 600, 600);
  } else if (key == 'G' || key == 'g') {  // Green tint
    tint(0, 255, 0);
    image(img, 0, 0, 600, 600);
  } else if (key == 'R' || key == 'r') {  // Red tint
    tint(255, 0, 0);
    image(img, 0, 0, 600, 600);
  } else if (key == 'Y' || key == 'y') {  // Yellow tint
    tint(255, 255, 0);
    image(img, 0, 0, 600, 600);
  } else if (key == 'O' || key == 'o') {  // Original image
    tint(255);
    image(img, 0, 0, 600, 600);
  }
}
