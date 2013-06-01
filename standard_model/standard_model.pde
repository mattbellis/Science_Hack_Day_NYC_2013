PFont f;

// The statements in the setup() function 
// execute once when the program begins
void setup() {
    size(640, 360);  // Size must be the first statement
    stroke(255);     // Set line drawing color to white
    frameRate(30);   // How many frames per second to show.
}

// This function is run everytime a new frame is 
// shown. 
void draw() { 
  
    background(0);   // Set the background to black

    f = createFont ("Arial", 16, true);
    textFont (f, 24);
    fill (40,90,222);
    text ("The Standard Model", 10, 40);
    
} 
