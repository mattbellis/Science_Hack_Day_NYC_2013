float t = 0.0;

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
    
    float x = 200 + t;
    float y = 100;
    float ellipse_width=20*sin(t/10);
    float ellipse_height=40;
  
    // Draw an ellipse.
    ellipse(x,y,ellipse_width,ellipse_height);

    t = t + 1;
    
    if (t>400)
    {
      t = 0;
    }

} 
