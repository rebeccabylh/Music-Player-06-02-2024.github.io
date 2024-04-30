//Golbal variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float appWidth;
float appHeight;
int displayWidth;
int displayHeight;
PImage backgroundImage;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  albumCoverX = appWidth*0;
  albumCoverY = appHeight*0;
  albumCoverWidth = appWidth-1;
  albumCoverHeight = appHeight-1;
  //
  String backgroundImage = "";
  String extension = ".jpg";
  String pathway = "";
  //String landscape = "";
  //String path = ;
  //backgroundImage = loadImage(""); 
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //end setup
//
void draw() {
  image(backgroundImage, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //end draw
//
void mousePressed() {
} //end mousepressed
//
void keyPressed() {
} //end keypressed
//
//end main program
