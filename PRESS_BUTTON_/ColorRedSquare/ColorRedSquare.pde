// Integers for the grid
int startPoint = 2; // Offset for the start
int endPoint = 3; // Offset for the end
int distance = 50;
int gridSize;

// Variables for clicked point
int previousRectX;
int previousRectY;

// Color variables for the colors
color baseMinColor = 120;
color baseMaxColor = 180;
color clickColor = #FF0000;

// Booleans for the button positions
boolean leftSideOfButton;
boolean rightSideOfButton;
boolean upperPartOfButton;
boolean lowerPartOfButton;

void setup()
{
  size(505, 505); // Size of the canvas, a little above 500 because i wanted a little edge to the grid.
  background(clickColor); // Background to add a colored edge to the grid
  gridSize = width-distance-startPoint-endPoint; // Determines the size of the grid
  
  // We have one loop that goes through depending on the grid size variable.
  // Within this loop we have a replica loop that generates all the boxes, then we go out of the second loop to generate the lines.
  for (int i = 0; i <= gridSize; i+=distance) {
    for (int j = 0; j <= gridSize; j+=distance) { 
      fill(random(baseMinColor, baseMaxColor)); // We make the color of the current loop a random grey color
      rect(i+startPoint, j+startPoint, distance, distance); // For each time it goes through, it adds a rectangle after our variables. 
      // It generates them depending on which number the i and j have reached, creating 10 per line before going to the next line to do the same.
    }
    line(i+startPoint, startPoint, i+startPoint, width-endPoint); // Then after it adds the rectangles, we then add the lines, which ends a bit offset of our width, to give it a nice edge
    line(startPoint, i+startPoint, width-endPoint, i+startPoint); // The above only adds horizontal lines, so we also need to add vertical lines
  }
  cursor(HAND); // I turn the cursor into a hand, to tell the user that you can click on the canvas.
}

// We add the continual draw so we can actually add the new rectangles
void draw(){}

// We make an event in the form of mousePressed
void mousePressed() {
  // We make the same two loops as above, just with different variables for the loops.
  // These loops generates each area of the buttons with the same coordinates as the above loops
  for (int h = 0; h <= gridSize; h+= distance) {
    for (int g = 0; g <= gridSize; g+= distance) {

      // Here we have different booleans to check if the mouse is around a button
      leftSideOfButton = mouseX > h;              // First we check where the mouseX point is, in terms of is it bigger than a buttons "x" coordinate
      rightSideOfButton = mouseX < h + distance;  // then we check where the mouseX is, in terms of is it smaller than a buttons width
      upperPartOfButton = mouseY > g;             // then we do the same checks for the y coordinates
      lowerPartOfButton = mouseY < g + distance;
      // We then use these booleans to check if the mouse is within all the areas of a button, by using an if statement to check if they are all true.
      
      
      if ((leftSideOfButton && rightSideOfButton) && (upperPartOfButton && lowerPartOfButton))
      {
        // As we have not clicked before, we need to make sure it does not make a box that does not disappear
        if (previousRectX != 0 || previousRectY != 0){
          fill(random(baseMinColor, baseMaxColor)); // We give it a new random grey color
          rect(previousRectX, previousRectY, distance,distance); // We place a box on top of the previous box
        }
        fill(clickColor); // We set the color to a red color using our variable
        rect(h+startPoint, g+startPoint, distance, distance); // Then we make a rectangle above one of the rectangles we made earlier, sharing the same coordinates and and size.
        
        previousRectX = h+startPoint; // We save the clicked rectangle x and y position, so we can draw over the previous rectangle.
        previousRectY = g+startPoint;
      }
    }
  }
}
