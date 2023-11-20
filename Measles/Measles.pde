//Global Variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, nose3YLandscape, nose3YPortrait, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter, measleRadius;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, button4X, button4Y, buttonSide;
float splashScreenX1, splashScreenY1, splashScreenX2, splashScreenY2 ;
color white = #FFFFFF, resetColour = #FFFFFF, black =#000000, red = #e81123, green = #18C636, buttonGrey = #464a4e;
Boolean measlesOn= false;
int size, measlesSize = 20;
Boolean measlesControl = false, splashScreen = false;
//Boolean nightMode = false;
String start="Start", stop="Stop", quit="X", restart="Restart", splashText="Click to begin";
PFont defaultFont;
color hoverOverColour=resetColour;
//
void setup() {
  fullScreen();
  //size(300, 700);
  appWidth = width;
  appHeight = height;
  smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension: "+ smallerDimension); //Started as local variable
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
  noseX3 = backgroundWidth+backgroundX;
  nose3YPortrait = faceY+leftEyeY;
  nose3YLandscape = faceY+leftEyeX;
  noseY3 = ( appHeight >= appWidth) ? nose3YLandscape : nose3YPortrait ;
  //
  mouthX1 = faceX;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  //
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
  splashScreenX1 = backgroundX;
  splashScreenY1=  backgroundY;
  splashScreenX2 = backgroundWidth;
  splashScreenY2 = backgroundHeight;
  //
  //
  //DIVs
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  button1X = backgroundX;
  button1Y = backgroundY;
  button2X = backgroundX+faceDiameter-buttonSide;
  button2Y = button1Y;
  button3X = button2X;
  button3Y = backgroundY+faceDiameter-buttonSide;
  button4X = button1X;
  button4Y = backgroundY+faceDiameter-buttonSide;
  defaultFont = createFont("Georgia", 50);
  //

  //
  if (splashScreen==false) {
    beginShape(); //processing.org/reference/beginShape_.html
    vertex(splashScreenX1, splashScreenY1 );
    vertex(splashScreenX1, splashScreenY2);
    vertex(splashScreenX2, splashScreenY1);
    vertex(splashScreenX2, splashScreenY2);
  } else if (splashScreen==true) {
    endShape();
    rect(button1X, button1Y, buttonSide, buttonSide);
    rect(button2X, button2Y, buttonSide, buttonSide);
    rect(button3X, button3Y, buttonSide, buttonSide);
    rect(button4X, button4Y, buttonSide, buttonSide);
  }
  //rect(splashScreenX1,splashScreenY1,splashScreenX2,splashScreenY2);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  ellipse( faceX, faceY, faceDiameter, faceDiameter);
  //
/*
  textAlign(CENTER, CENTER);
  textFont(defaultFont, 100);
  if (splashScreen==false) {
    fill(white);
  } else if (splashScreen==true) {
    fill(black);
  }
  text(splashText, splashScreenX1, splashScreenY1, splashScreenX2, splashScreenY2);
  */
  //
} //End setup
//
void draw() {
  if (splashScreen==true) mealsesProgram();
} //End draw
//
void keyPressed() {
  /**
   if (key == 'n' || key=='N' ) {
   if (nightMode==true) {
   nightMode = false;
   } else {
   nightMode = true;
   }
   }
   
  /**/

  //
  if (key == CODED && keyCode == UP || keyCode == DOWN ) {
    measlesControl = true;
    if (key == CODED && keyCode == UP) measlesSize--;
    if (key == CODED && keyCode == DOWN) measlesSize++ ;
  }
  //
  if (keyCode == ENTER) measlesOn=true; //START
  if (keyCode== BACKSPACE ) measlesOn=false; //STOP
  if (keyCode== ESC ) exit(); //QUIT
  if (key==' ' ) println ("Restart"); //RESTART //SPACEBAR
  //
} //End keyPressed
//
void mousePressed() {
  //
  if (splashScreen==true) buttons();
  splashScreen=true;
  //if (mouseX>splashScreenX1 && mouseX<splashScreenX1+splashScreenX2 && mouseY>splashScreenY1 && mouseY<splashScreenY1+splashScreenY2)splashScreen=true;
} //End mousePressed
//
//End MAIN Program
