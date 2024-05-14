//Global variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float appWidth;
float appHeight;
int displayWidth;
int displayHeight;
PImage backgroundImage;
String backgroundImageName;
boolean lightMode = true, dayMode = false, nightMode = false;
int brightness = 255;
String pathway = "../../../Images/";
String extension = ".jpg";
String path;
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
  //String lilyOfTheValley = "gettyimages-550196925"; //???
  String backgroundImageName = "lilyOfTheValley";
  String path = pathway + backgroundImageName + extension;
  backgroundImage = loadImage(path);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //end setup
//
void draw() {
  background (255);
  if (lightMode == true ) {
  backgroundImageName = "lilyofthevalley";
  path = pathway + backgroundImageName + extension;
  backgroundImage = loadImage(path);
  }
  tint(255, 200);
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
