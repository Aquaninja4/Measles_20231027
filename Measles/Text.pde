void splashscreenText () {
  //how does one remove this text after a mouse press
  textAlign(CENTER, CENTER);
  textFont(defaultFont, 100);
  fill(black);
  text(splashText, splashScreenX1, splashScreenY1, splashScreenX2, splashScreenY2);
  fill(resetColour);
} //End Splash Screen Text
//
void buttonText () {
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
} //End Button Text
