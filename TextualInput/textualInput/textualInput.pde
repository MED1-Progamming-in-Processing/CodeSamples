char [] c= new char [80]; //maximal lenght of an input constrained to a single line
int i=0;
boolean inputDone = false;

void setup() {
  size (500,100);
  textFont(createFont("Arial", 40));
}

void draw() {
  text(c, 0, i, 40, 40);
 if (inputDone == true){
 inputDone=false;
 background(234,0,0);
 } 
  

//text(d, 0, 4, 40, 40);
}

void keyPressed() { c[i]=key; 
if ((c[i]==ENTER)||(c[i]==RETURN)) {i=0; inputDone=true;}
else {i++;}
}
