int state = 0; 
String result=""; 


void setup() { 
  size(800, 800);
  textFont(createFont("Arial", 24));
}
 
void draw() { 
 
 
  background(126); 
 
 
  if (state==0) {

    fill(200,193,0);
    rect(100,100,527, 49);
    fill(100,255,28);
    text ("Please enter something and hit enter to go on: \n"+result, 100, 120); 
  }
 
  else {
    fill(255, 2, 2); 
    text ("Thanks \n"+result, 133, 633); 
    
  }
}
 
void keyPressed() {
 
  if (key==ENTER||key==RETURN) {
 
    state++;
   
  }
  else if (key==BACKSPACE) { 
   result = result.substring( 0, result.length()-1 ); // deleting the last character 
               // from the string
  } 
  else if (key==CODED) {}
  else
  result = result + key;  // appending a chatacter to a string

}
