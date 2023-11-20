void mealsesProgram () {
  //text code
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide ) { //Buton 1
    hoverOverColour = buttonGrey;
    fill( hoverOverColour );
    rect( button1X, button1Y, buttonSide, buttonSide );
    fill( resetColour );
    //
  } else if ( mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) { //Button 2
    hoverOverColour = buttonGrey;
    fill( hoverOverColour );
    rect( button2X, button2Y, buttonSide, buttonSide );
    fill( resetColour );
    //
  } else if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) { //Button 3
    hoverOverColour = red;
    fill( hoverOverColour );
    rect(button3X, button3Y, buttonSide, buttonSide); //quit
    fill( resetColour );
    //
  } else if ( mouseX>button4X && mouseX<button4X+buttonSide && mouseY>button4Y && mouseY<button4Y+buttonSide ) { //Button 4
    hoverOverColour = buttonGrey;
    fill( hoverOverColour );
    rect(button4X, button4Y, buttonSide, buttonSide); //restart
    fill( resetColour );
    //
  } else { //No Buttons
    fill( resetColour );
    rect(button1X, button1Y, buttonSide, buttonSide); //start
    rect(button2X, button2Y, buttonSide, buttonSide); //stop
    rect(button3X, button3Y, buttonSide, buttonSide); //quit
    rect(button4X, button4Y, buttonSide, buttonSide); //restart
  }
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
  fill(mealseColour);
  measleDiameter = random( smallerDimension*1/100, smallerDimension*1/measlesSize );
  measleRadius = measleDiameter/2;
  measleX = random( backgroundX+(measleRadius), (backgroundWidth+backgroundX)-measleRadius);
  measleY = random(backgroundY+(measleRadius), (backgroundHeight+backgroundY)-measleRadius );
  //while (measleX < button1X+buttonSide) measleX = random( backgroundX+(measleRadius), (backgroundWidth+backgroundX)-measleRadius);
  //while (measleY < button1Y+buttonSide) measleY = random(backgroundY+(measleRadius), (backgroundHeight+backgroundY)-measleRadius );
  //
  noStroke();
  if ( ((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) < sq( ((faceDiameter/2)-(measleRadius)) ) ) { //Measle on Circle
    if ( measlesOn==true ) ellipse( measleX, measleY, measleDiameter, measleDiameter );
    fill(resetColour);
  } //  END Measle on Circle
  //
  {
    if ( measlesSize<15  ) {
      measlesSize=15;
    } else if (measlesSize>30) {
      measlesSize=30;
    } else {
      //Empty ELSE
    }
  }

  stroke(1);
  fill(resetColour);
  //
}
void buttons () {
  if (mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide )measlesOn=true;
  if (mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) measlesOn=false;
  if (mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) exit();
  if (mouseX>button4X && mouseX<button4X+buttonSide && mouseY>button4Y && mouseY<button4Y+buttonSide ) {
    println("Restart");
    exit();
  }
}
