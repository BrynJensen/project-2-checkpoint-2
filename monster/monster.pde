//monster drawing



void setup() { //start setup =================================================
  size(1000, 1000, P2D);
} // end setup ===============================================================

void draw() { //start draw ===================================================
  println(mouseX, mouseY);
  background(225);
  noStroke();
  //head
  fill(75, 0, 150);
  circle(500, 275, 400);
  
  //angry
  stroke(0);
  strokeWeight(30);
  line(430, 100, 485, 140);
  line(570, 100, 515, 140);
  
  //mouth
  fill(12);
  noStroke();
  ellipse(500, 315, 350, 90);
  
  //teeth
  tooth(500, 270, 0);
  tooth(465, 271, -3);
  tooth(430, 274, -6);
  tooth(395, 280, -10.5);
  tooth(360, 289, -16);
  
  //eyes
  noFill();
  noStroke();
  eye(500, 220, 70);
  eye(430, 170, 70);
  eye(570, 170, 70);
  
  //head
  
  
} //end draw =================================================================

void eye(int eyeX, int eyeY, int eye){ // start eye ==========================
 pushMatrix();
 translate(eyeX, eyeY);
 
 //eye white
 fill(255);
 circle(0, 0, eye);
 
 //pupil
 fill(0);
 circle(0, 0, eye - 30);
 
 popMatrix();
} // end eye =================================================================

void tooth(int toothX, int toothY, float rotate) { //start tooth ===============
  pushMatrix();
  translate(toothX, toothY);
  rotate(radians(rotate));
  
  fill(242, 230, 230);
  arc(0, 0, 30, 45, 0, PI);
  
  popMatrix();
} //end tooth ================================================================
