//Global Variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter, measleRadius;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, button4X, button4Y, buttonSide;
color resetColour = #FFFFFF, black =#000000, red = #e81123, green = #18C636, buttonGrey = #464a4e;
Boolean measles = false;
int size, measlesSize = 20;
Boolean measlesControl = false;
Boolean nightMode = false;
String start="Start", stop="Stop", quit="X", restart="Restart";
PFont defaultFont;
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
  noseY3 = leftEyeX;
  //
  mouthX1 = faceX;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  //
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
  //
  //
  //DIVs
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
  rect(button1X, button1Y, buttonSide, buttonSide);
  rect(button2X, button2Y, buttonSide, buttonSide);
  rect(button3X, button3Y, buttonSide, buttonSide);
  rect(button4X, button4Y, buttonSide, buttonSide);
  //
  defaultFont = createFont("Georgia", 50);
} //End setup
//
void draw() {
  //text code
  color hoverOverColour=resetColour;
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide ) { //Buton 1
    hoverOverColour = buttonGrey;
  } else if ( mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) { //Button 2
    hoverOverColour = buttonGrey;
  } else if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) { //Button 3
    hoverOverColour = buttonGrey;
      } else if ( mouseX>button4X && mouseX<button4X+buttonSide && mouseY>button4Y && mouseY<button4Y+buttonSide ) { //Button 4
    hoverOverColour = buttonGrey;
  } else { //No Buttons
    fill( resetColour );
  }
  rect(button1X, button1Y, buttonSide, buttonSide);
  rect(button2X, button2Y, buttonSide, buttonSide);
  rect(button3X, button3Y, buttonSide, buttonSide);
  rect(button4X, button4Y, buttonSide, buttonSide);
  fill( resetColour );
  //
  int size = 50;
  textAlign(CENTER, CENTER);
  textFont(defaultFont, size);
  fill(green);
  text(start, button1X, button1Y, buttonSide, buttonSide);
  //
  fill(red);
  text(stop, button2X, button2Y, buttonSide, buttonSide);
  //
  fill(black);
  textFont(defaultFont, size);
  text(quit, button3X, button3Y, buttonSide, buttonSide);
  textFont(defaultFont, 45);
  text(restart, button4X, button4Y, buttonSide, buttonSide);
  //
  fill(resetColour);
  //
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); //Right Eye
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(mouthReset);
  //
  //
  color mealseColour = color(255, random(0, 84), random(0, 103));
  if (measles==true) {
    fill(mealseColour);
    measleDiameter = random( smallerDimension*1/100, smallerDimension*1/measlesSize );
    measleRadius = measleDiameter/2;
    measleX = random( backgroundX+(measleRadius), (backgroundWidth+backgroundX)-measleRadius);
    while (measleX < button1X+buttonSide) measleX = random( backgroundX+(measleRadius), (backgroundWidth+backgroundX)-measleRadius);
    //
    measleY = random(backgroundY+(measleRadius), (backgroundHeight+backgroundY)-measleRadius );
    while (measleY < button1Y+buttonSide) measleY = random(backgroundY+(measleRadius), (backgroundHeight+backgroundY)-measleRadius );
    //
    noStroke();
    {
      if ( measlesSize<15  ) {
        measlesSize=15;
      } else if (measlesSize>30) {
        measlesSize=30;
      } else {
        //Empty ELSE
      }
    }
  } else {
    fill(mealseColour);
    noStroke();
  }

  ellipse( measleX, measleY, measleDiameter, measleDiameter);
  stroke(1);
  fill(resetColour);
  //
} //End draw
//
void keyPressed() {
  if (key == 'n' || key=='N' ) {
    if (nightMode==true) {
      nightMode = false;
    } else {
      nightMode = true;
    }
  }


  if (key == 'p' || key=='P' ) {
    if (measles==true) {  //Nightmode, basic control is Boolean
      measles = false;
    } else {
      measles = true;
    }
  }
  if (key == CODED && keyCode == UP || keyCode == DOWN ) {
    measlesControl = true;
    if (key == CODED && keyCode == UP) measlesSize--;
    if (key == CODED && keyCode == DOWN) measlesSize++ ;
  }
} //End keyPressed
//
void mousePressed() {
  if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) exit();
  //
} //End mousePressed
//
//End MAIN Program
