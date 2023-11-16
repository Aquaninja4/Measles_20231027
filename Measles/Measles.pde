//Global Variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, nose3YLandscape,nose3YPortrait, smallerNose , noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter, measleRadius;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, button4X, button4Y, buttonSide;
float splashScreenX, splashScreenY, splashScreenWidth, splashScreenHeight;
color resetColour = #FFFFFF, black =#000000, red = #e81123, green = #18C636, buttonGrey = #464a4e;
Boolean measlesOn= false;
int size, measlesSize = 20;
Boolean measlesControl = false, splashScreen = false;
//Boolean nightMode = false;
String start="Start", stop="Stop", quit="X", restart="Restart";
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
  nose3YPortrait = leftEyeX*2.7;
  nose3YLandscape = faceY+leftEyeX;
  smallerNose = ( appHeight >= appWidth) ? nose3YLandscape : nose3YPortrait;
  noseY3 = smallerNose wasdwasd;
  //
  mouthX1 = faceX;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  //
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
  splashScreenX = appWidth*0;
  splashScreenY =  appHeight*0;
  splashScreenWidth = appWidth-1;
  splashScreenHeight = appHeight-1;
  //
  //
  //DIVs
    if (splashScreen==false) {
    beginShape(); //processing.org/reference/beginShape_.html
    vertex(splashScreenX, splashScreenWidth);
    vertex(splashScreenX, splashScreenHeight);
    vertex(splashScreenY, splashScreenWidth);
    vertex(splashScreenY, splashScreenHeight);
  } else if (splashScreen==true) endShape();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  button1X = backgroundX;
  button1Y = backgroundY;
  button2X = backgroundX+faceDiameter-buttonSide;
  button2Y = button1Y;
  button3X = button2X;
  button3Y = backgroundY+faceDiameter-buttonSide;
  button4X = button1X;
  button4Y = backgroundY+faceDiameter-buttonSide;
  //
  rect(button1X, button1Y, buttonSide, buttonSide);
  rect(button2X, button2Y, buttonSide, buttonSide);
  rect(button3X, button3Y, buttonSide, buttonSide);
  rect(button4X, button4Y, buttonSide, buttonSide);
  //
    if (splashScreen==false) {
    beginShape(); //processing.org/reference/beginShape_.html
    vertex(splashScreenX, splashScreenWidth);
    vertex(splashScreenX, splashScreenHeight);
    vertex(splashScreenY, splashScreenWidth);
    vertex(splashScreenY, splashScreenHeight);
  } else if (splashScreen==true) endShape();
  defaultFont = createFont("Georgia", 50);
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
  if (splashScreen=true);
  //
  if (mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide )measlesOn=true;
  if (mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) measlesOn=false;
  if (mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) exit();
  if (mouseX>button4X && mouseX<button4X+buttonSide && mouseY>button4Y && mouseY<button4Y+buttonSide ) println("Restart");
} //End mousePressed
//
//End MAIN Program
