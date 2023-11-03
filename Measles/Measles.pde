//Global Variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter;
color resetColour = #FFFFFF;
Boolean measles = false;
int measlesSize = 20;
Boolean measlesControl = false;
Boolean nightMode = false;
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
  //
} //End setup
//
void draw() { // ONLY CIRCLE
  //
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); //Right Eye
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(mouthReset);
  color mealseColour = color(255, random(0, 84), random(0, 103));
  if (measles==true) {
    fill(mealseColour);
    measleDiameter = random( smallerDimension*1/100, smallerDimension*1/measlesSize );
    measleX = random( backgroundX+(measleDiameter/2), (backgroundWidth+backgroundX)-measleDiameter/2);
    measleY = random(backgroundY+(measleDiameter/2), (backgroundHeight+backgroundY)-measleDiameter/2 );
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

  ellipse( measleX, measleY, measleDiameter, measleDiameter );
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
  //
} //End mousePressed
//
//End MAIN Program
