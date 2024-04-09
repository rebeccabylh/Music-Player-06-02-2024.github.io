//Global Variables
int appWidth, appHeight;
float backgroundX ,backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() {
  //Concatenation & Inspecting Variables with Character Escapes
  println("Width: "+width+"\tHeight: "+height+"\t\tDisplay Width: "+displayWidth+"\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithemtic errors
  //
  size(400, 500);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bruh, turn your phone";
  println( displayInstructions);
  //
  //Populate
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  albumCoverX = appWidth*18/100;
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16;
  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/8;
  playButtonHeight = appHeight*1/12;
  quitButtonX = appWidth*1/16;
  quitButtonY = appHeight*29/32;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*6/100;
  //Layout DIVs
  //rect(X ,Y, Width, Height);
  rect(backgroundX ,backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth * 1/2;
  int centerY= appHeight * 1/2;
  rect(centerX * 1/2, centerY * 1/2, appWidth *1/2, appHeight* 1/2);
  //rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
} // End Setup
//
void draw () {
} // End Draw
//
void keyPressed () {
} // End keyPressed
//
void mousePressed () {
} // End mousePressed
//
// End Main Program
