//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
void setup() {
  fullScreen();
  //size();
  appWidth = width;
  appHeight = height;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth ;
  println("Smaller Dimension: "+ smallerDimension);
  //
  //Population
  faceX = appWidth*1/2 ;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  //
  leftEyeX = ;
  leftEyeY = ;
  //
  rightEyeX = ;
  rightEyeY = ;
  //
  eyeDimater = ;
  noseX1 = ;
  noseY1 = ;
  noseX2 = ;
  noseY2 = ;
  noseX3 = ;
  noseY3 = ;
  //
  mouthX1 = ;
  mouthY1 = ;
  mouthX2 = ;
  mouthY2 = ;
  //
  //DIVs
  //
  backgroundX = faceX-faceDiameter*1/2;
  backgroundY = faceY-faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  //
} //End setup
//
void draw() {
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); // ONLY CIRCLE
  ellipse(faceX, faceY,faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter,eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeX, eyeDiameter,eyeDiameter); //Right Eye
  triangle(noseX1, noseY1, noseX2,noseY2,noseX3,noseY3);
  line(mouthX1, mouthY1, mouthX2,mouthY2);
} //End draw
//
void keyPressed() {
  
} //End keyPressed
//
void mousePressed() {
  //if(mouseX>faceX && mouseX<faceX+faceDiameter && mouseY>faceY && mouseY<faceY+appHeight) exit(); //?
  
} //End mousePressed
//
//End MAIN Program
