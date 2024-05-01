//Golbal variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float appWidth;
float appHeight;
int displayWidth;
int displayHeight;
PImage backgroundImage;
boolean lightMode = false, dayMode = false, nightMode = false;
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
  String lilyOfTheValley = "gettyimages-550196925";
  String backgroundImageName = "lilyOfTheValley";
  String extension = ".jpg";
  String pathway = "../../../Images/";
  String portrait = "portrait/";
  String path = pathway + portrait + backgroundImageName + extension;
  backgroundImage = loadImage(path);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //end setup
//
void draw() {
  image(backgroundImage, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  //
  println(lightMode);
} //end draw
//
void mousePressed() {
} //end mousepressed
//
void keyPressed() {
  if (key=='W' || key=='w') {
    if (lightMode == false) {
      lightMode = true;
    } else {
      lightMode = false;
    }
  }
  //if () {
  }
  //if () {}
//} //end keypressed
//
//end main program
