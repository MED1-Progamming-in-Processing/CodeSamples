void setup () {
size (400, 500);
  
int x1=10; 
int y1=10; 
int x2=210; 
int y2=110; 

rectMode(CORNERS);
rect(x1, y1, x2, y2);
fillRectWithParallelLines(x1, y1, x2, y2, 5, 30);

}


void fillRectWithParallelLines (float x1, float y1, float x2, float y2, float dist, float alphaD) 
{  
  float xLine,yLine;
  
  if (alphaD == 0) {
    // drawHorisontal(x1, y1, x2, y2, dist)
    println ("Call function for drawing horisontal lines");
  }
  else if (alphaD == 90) {
    // drawVertical(x1, y1, x2, y2, dist))
       println ("Call function for drawing vertical lines");
  }
  else {
    float alphaR = radians(alphaD);
    float vDist=dist/cos(alphaR);  // adjusting for"slanted" distance
    yLine=y1+vDist; // setting y-coordinate for the first slanted line
    while (yLine <= y2 + (x2-x1)) {
      if (yLine <= y2) {
        xLine = x1 + ((yLine-y1) / tan(alphaR));
        line(x1, yLine, xLine, y1);
      }
      else {
        
      
      }
      yLine += vDist; 
    }
   
  }
}
  
  
