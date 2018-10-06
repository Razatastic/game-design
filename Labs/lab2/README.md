## CISC 3665, Fall 2018

## Lab 2

# Instructions

This assignment will be handed in, together with the next lab assignment. Submission directions will be given
together with Lab 3.

# 1 - Images and Pixels (2 points)

## 1.1 - Go through the Processing tutorial on Images and Pixels:

```
http://www.processing.org/learning/pixels/
```
## 1.2 - Visit the NSKY web site:
```
http://nskyc.com/
```
## 1.3 - Create a program in Processing that loads an image and computes the average color over all the pixels in
the image. Create a second image where all the pixels are set to the average color (like on NSKY!). Have
the program display the original image first, and then when the user presses any key or clicks the mouse,
show the averaged image. Have the program toggle between the original image and the averaged image. (1 point this part)
## 1.4 - Modify your program so that it can behave differently based on different inputs by the user. For example, if
the user pressesAora, show the averaged image; if the user pressesBorb, show the original image tinted
blue; if the user pressesGorg, show the original image tinted green; if the user pressesRorr, show the
original image tinted red; if the user pressesYory, show the original image tinted yellow; and if the user
pressesOoro, show the original image again.

HINT:use thetint()function. (1 point this part)
# 2 Drawing Curves(3 points)

## 2.1 - Go through the Processing tutorial onDrawing Curves:

```
http://www.processing.org/learning/curves/
```
## 2.2 - Create a program in Processing that randomly selects coordinates for 4 points within the size of the

```
Processing display window. Draw a filled circle around each point with a radius of at least 5 pixels. Each
circle should be a different color. Draw aspline curvebetween two of the points.
HINT:use thesize()function, thewidthandheightvariables, and therandom()function.
(1 point this part)
```
## 2.3 - Modify your program in two ways: (1) when the mouse is pressed on any point, it changes color (e.g. turns

```
yellow); and (2) when the user presses any key, the program toggles between drawing a black curved line
on a white background and drawing a white curved line on a black background.
(1 point this part)
```
## 2.4 - Modify your program so that the black-curve-on-white draws a spline curve, and the white-curve-on-black

```
draws a Bezier curve. Make sure that the endpoints of both curves are the same. For example, if the first
```
### 1


point you draw is green and the second point is red, then those should be the starting and ending points of
both the spline curve and the B ́ezier curve.
(1 point this part)

### 2

