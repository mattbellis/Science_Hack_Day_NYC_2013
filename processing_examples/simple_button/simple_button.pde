int windowHeight = 640;
int windowWidth = 700;

float bx; // button x-position
float by; // button y-position
int boxSize = 75;

boolean overBox = false; // This tracks whether or not the mouse is over the box.
boolean locked = false; // This tracks whether or not the box is ``locked".
float xOffset = 0.0; 
float yOffset = 0.0; 

void setup() 
{
    size(640, 360);
    size(windowWidth, windowHeight);  // Size must be the first statement
    bx = 100;
    by = 100;
    //rectMode(RADIUS); // 
}

////////////////////////////////////////////////////////////////////////////////
// This is always the part where we deal with all the drawing.
////////////////////////////////////////////////////////////////////////////////
void draw() 
{ 
    background(0);

    // Test if the cursor is over the box 
    if (mouseX > bx-boxSize && mouseX < bx+boxSize && mouseY > by-boxSize && mouseY < by+boxSize) {
        overBox = true;  
        if(!locked) { 
            stroke(255); // If we are over the box, change the colors.
            fill(153);
        } 
    } else {
        stroke(153);
        fill(153);
        overBox = false;
    }

    // Draw the box
    rect(bx, by, boxSize, boxSize);
}

////////////////////////////////////////////////////////////////////////////////
// Here is where we tell the program how to deal with:
//   1) When the mouse button is pressed.
//   2) When the mouse is moved when the button is pressed.
//   3) When the mouse button is released.
////////////////////////////////////////////////////////////////////////////////

// This code tells us what to do when the box is pressed.
void mousePressed() {

    if(overBox) { 
        locked = true; 
        fill(255, 255, 255);
        background(1);
    } else {
        locked = false;
    }
    xOffset = mouseX-bx; 
    yOffset = mouseY-by; 

}

// Note that this command lets us move the box around!
void mouseDragged() {
    if(locked) {
        bx = mouseX-xOffset; 
        by = mouseY-yOffset; 
    }
}

// We need a command to deal with when the mouse button is released.
void mouseReleased() {
    locked = false;
}

