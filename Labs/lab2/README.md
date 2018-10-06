# Lab 2
## 1 - Images and Pixels (2 points)
## 1.1 - Go through the Processing tutorial on Images and Pixels:
#### http://www.processing.org/learning/pixels/
## 1.2 - Visit the NSKY web site:
#### http://nskyc.com/
## 1.3 - Compute average color
Create a program in Processing that loads an image and computes the average color over all the pixels in the image. Create a second image where all the pixels are set to the average color (like on NSKY!). Have the program display the original image first, and then when the user presses any key or clicks the mouse, show the averaged image. Have the program toggle between the original image and the averaged image. 
###### (1 point this part)
## 1.4 - 
Modify your program so that it can behave differently based on different inputs by the user. For example, if the user presses A or a, show the averaged image; if the user presses B or b, show the original image tinted blue; if the user presses G or g, show the original image tinted green; if the user presses R or r, show the original image tinted red; if the user presses Y or y, show the original image tinted yellow; and if the user presses O or o, show the original image again. 
##### HINT: use the tint() function. (1 point this part)
&nbsp;
# 2 Drawing Curves(3 points)
## 2.1 - Go through the Processing tutorial on Drawing Curves:
```
http://www.processing.org/learning/curves/
```
## 2.2 - 
Create a program in Processing that randomly selects coordinates for 4 points within the size of the Processing display window. Draw a filled circle around each point with a radius of at least 5 pixels. Each circle should be a different color. Draw aspline curvebetween two of the points.
##### HINT:use the size() function, the width and height variables, and the random() function. (1 point this part)
## 2.3 - 
Modify your program in two ways: 
*(1) when the mouse is pressed on any point, it changes color (e.g. turns yellow)
*(2) when the user presses any key, the program toggles between drawing a black curved line on a white background and drawing a white curved line on a black background.
###### (1 point this part)

## 2.4 - 
Modify your program so that the black-curve-on-white draws a spline curve, and the white-curve-on-black draws a Bezier curve. Make sure that the endpoints of both curves are the same. For example, if the first point you draw is green and the second point is red, then those should be the starting and ending points of both the spline curve and the B ́ezier curve.
###### (1 point this part)
