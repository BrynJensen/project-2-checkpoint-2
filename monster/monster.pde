//monster drawing



void setup() { //start setup =================================================
  size(1000, 1000);
} // end setup ===============================================================

void draw() { //start draw ===================================================
  eye(500, 200, 70);
  eye(430, 150, 70);
  eye(570, 150, 70);
  
} //end draw =================================================================

void eye(int eyeX, int eyeY, int eye) {
 pushMatrix();
 translate(eyeX, eyeY);
 
 //eye white
 fill(255);
 circle(0, 0, eye);
 
 //pupil
 fill(0);
 circle(0, 0, eye - 30);
 
 popMatrix();
}
