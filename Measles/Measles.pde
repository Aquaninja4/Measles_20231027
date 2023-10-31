//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter;
//
void setup() {
  fullScreen();
  //size();
  appWidth = width;
  appHeight = height;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension: "+ smallerDimension);
  //
  //Population
  faceX = appWidth*1/2 ;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  //
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  //
  leftEyeX = backgroundX+smallerDimension*1/4;
  leftEyeY = backgroundY+smallerDimension*1/4;
  //
  rightEyeX = backgroundX+smallerDimension*3/4;
  rightEyeY = leftEyeY;
  //
  eyeDiameter = smallerDimension*1/5;
  //
  noseX1 = faceX;
  noseY1 = leftEyeY;
  noseX2 = faceX;
  noseY2 = faceY;
  noseX3 = backgroundX+smallerDimension*1.5*3/4;
  noseY3 = leftEyeX;
  //
  mouthX1 = leftEyeX;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  //
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
  //measleX = ;
  //measleY = ;
  //measleDiameter = ;
  //
  //DIVs
  //
} //End setup
//
void draw() {
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); // ONLY CIRCLE
  ellipse(faceX, faceY,faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter,eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter,eyeDiameter); //Right Eye
  triangle(noseX1, noseY1, noseX2,noseY2,noseX3,noseY3);
  strokeWeight(mouthOpen); 
  line(mouthX1, mouthY1, mouthX2,mouthY2);
  strokeWeight(mouthReset);
  //
  ellipse(measleX, measleY, measleDiameter, measleDiameter );
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
