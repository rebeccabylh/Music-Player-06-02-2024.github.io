//Golbal variables
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float appWidth;
float appHeight;
int displayWidth;
int displayHeight;
PImage backgroundImage;
boolean lightMode = true, dayMode = false, nightMode = false;
int brightness = 255;
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
  String lilyofthevalley = "gettyimages-550196925";
  String backgroundImageName = "lilyofthevalley";
  String extension = ".jpg";
  String pathway = "../../../Images/";
  String path = pathway + backgroundImageName + extension;
  backgroundImage = loadImage(path);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //end setup
//
void draw() {
  background (255);
  if (lightMode == true ) {
    brightness = 255;
  } else {
    brightness = 100;
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
