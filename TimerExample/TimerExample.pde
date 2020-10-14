
    int last = 0;
    int m = 0;
    void draw(){
    m = millis()-last;
      if(m > +5000){
          last = millis();
          println("Hi!");
        // do something every 5 seconds 
      }
    }
