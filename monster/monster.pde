//monster drawing

int spin;

void setup() { //start setup =================================================
  size(1000, 1000, P2D);
} // end setup ===============================================================

void draw() { //start draw ===================================================
  println(mouseX, mouseY);
  background(0);
  noStroke();


  //arms
  Rarm(325, 510, spin + 35, 1.5);
  Rarm(320, 545, spin + 5, 1.5);
  Rarm(310, 580, spin - 25, 1.3);
  Larm(675, 510, -spin - 35, 1.5);
  Larm(680, 545, -spin - 5, 1.5);
  Larm(690, 580, -spin + 25, 1.3);
 
  spin = spin + 1;
  
  if (spin > 35) {
    spin = -spin;
  }

  //body
  stroke(0);
  strokeWeight(1);
  fill(75, 0, 150);
  ellipse(500, 640, 400, 600);


  //horns
  horn(650, 150, 50, 1.5);
  horn(350, 150, -50, 1.5);

  //head
  fill(75, 0, 150);
  circle(500, 275, 400);

  //angry
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
  tooth(535, 271, 3);
  tooth(570, 274, 6);
  tooth(605, 280, 10.5);
  tooth(640, 289, 16);

  //eyes
  noFill();
  noStroke();
  eye(500, 200, 70);
  eye(430, 170, 70);
  eye(570, 170, 70);
} //end draw =================================================================

void eye(int eyeX, int eyeY, int eye) { // start eye ==========================
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

void tooth(int toothX, int toothY, float rotate) { //start tooth =============
  pushMatrix();
  translate(toothX, toothY);
  rotate(radians(rotate));

  fill(242, 230, 230);
  arc(0, 0, 30, 45, 0, PI);

  popMatrix();
} //end tooth ================================================================

void horn(int hornX, int hornY, float deg, float sz) { // start horn =========
  pushMatrix();
  translate(hornX, hornY);
  rotate(radians(deg));
  stroke(0);
  strokeWeight(1);
  fill(234, 176, 99);
  scale(sz);

  triangle(-20, 0, 0, -100, 10, 0);

  popMatrix();
} // end horn ================================================================

void Rclaw(int clawX, int clawY, float degree) { // start claw ================
  pushMatrix();
  translate(clawX, clawY);
  rotate(radians(degree));
  noFill();
  stroke(225, 229, 196);
  strokeWeight(10);

  arc(-10, 0, 20, 50, PI + QUARTER_PI, TWO_PI);
  popMatrix();
} // end claw ================================================================

void Lclaw(int LclawX, int LclawY, float Ldegree) { // start claw ================
  pushMatrix();
  translate(LclawX, LclawY);
  rotate(radians(Ldegree));
  noFill();
  stroke(225, 229, 196);
  strokeWeight(10);

  arc(-10, 0, 20, 50, 0, HALF_PI);
  popMatrix();
} // end claw ================================================================


void Rarm(int armX, int armY, float rot, float sze) { // start arm ====================
  pushMatrix();
  noStroke();
  translate(armX, armY);
  rotate(radians(rot));
  scale(sze);

  fill(75, 0, 150);
  ellipse(-75, 0, 150, 35);
  circle(-150, 0, 40);

  Rclaw(-165, -15, -55);
  Rclaw(-170, 0, -60);
  Rclaw(-165, 15, -70);

  popMatrix();
} // end arm =================================================================

void Larm(int LarmX, int LarmY, float rott, float siz) { // start arm ====================
  pushMatrix();
  noStroke();
  translate(LarmX, LarmY);
  rotate(radians(rott));
  scale(siz);

  fill(75, 0, 150);
  ellipse(75, 0, 150, 35);
  circle(150, 0, 40);

  Lclaw(165, -15, -90);
  Lclaw(170, 0, -90);
  Lclaw(165, 15, -90);

  popMatrix();
} // end arm =================================================================
