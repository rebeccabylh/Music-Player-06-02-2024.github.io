//Global varaibles
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight,albumCoverWidthAdjusted, albumCoverHeightAdjusted;
PImage albumCoverImage;
//
void setup () {
  fullScreen ();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  albumCoverX = appWidth;
  albumCoverY = appHeight;
  albumCoverWidth = appWidth;
  albumCoverHeight = appHeight;
  //
  albumCoverX = appWidth*3.7/17;
  albumCoverY = appHeight*22/100;
  albumCoverWidth = appWidth*9/16;
  albumCoverHeight = appHeight*45/100;
  //
  String lilyOfTheValley = "gettyimages-550196925";
  String extensionJPG = ".jpg";
  String pathway = "../../../Images/";
  String albumCoverImagePath = pathway + lilyOfTheValley + extensionJPG;
  albumCoverImage = loadImage(albumCoverImagePath);
  //
  Float smallerAlbumCoverDimension = (albumCoverWidth < albumCoverHeight) ? albumCoverWidth : albumCoverHeight;
  Float albumCoverImageWidthPixel = 700.0;
  Float albumCoverImageHeightPixel = 500.0;
  Float albumCoverAspectRatio = albumCoverImageWidthPixel/albumCoverImageHeightPixel;
  Float largerAlbumCoverDimension = smallerAlbumCoverDimension*albumCoverAspectRatio;
  if ( albumCoverWidth < largerAlbumCoverDimension) {
    while (albumCoverWidth <largerAlbumCoverDimension) {
    largerAlbumCoverDimension -= 1;
    smallerAlbumCoverDimension -=1;
    }
  };
albumCoverWidthAdjusted = largerAlbumCoverDimension;
albumCoverHeightAdjusted = smallerAlbumCoverDimension;
//
rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
}
//end setup
//
void draw() {
  image( albumCoverImage, albumCoverX, albumCoverY, albumCoverWidthAdjusted, albumCoverHeightAdjusted);
}
//end draw
//
void mousePressed () {
}
//mousePressed
//
void keyPressed () {
}
//end keyPressed
//
//end main program
