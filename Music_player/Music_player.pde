//Global Variables
int appWidth, appHeight;
float backgroundX ,backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float progressBarX, progressBarY, progressBarWidth, progressBarHeight;
float backButtonX, backButtonY, backButtonWidth, backButtonHeight;
float nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight;
float playlistNameX, playlistNameY, playlistNameWidth, playlistNameHeight;
float nameOfSongX, nameOfSongY, nameOfSongWidth, nameOfSongHeight;
float artistNameX, artistNameY, artistNameWidth, artistNameHeight;
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
  albumCoverY = appHeight*18/100;
  albumCoverWidth = appWidth*6/16;
  albumCoverHeight = appHeight*15/100;
  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/8;
  playButtonHeight = appHeight*1/12;
  quitButtonX = appWidth*1/16;
  quitButtonY = appHeight*29/32;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*6/100;
  progressBarX = appWidth*20/100;
  progressBarY = appHeight*8.3/11;
  progressBarWidth = appWidth*60/100;
  progressBarHeight = appHeight*0.5/6;
  backButtonX = appWidth*22/100;
  backButtonY = appHeight*8/9;
  backButtonWidth = appWidth*1/12;
  backButtonHeight = appHeight*1/14;
  nextButtonX  = appWidth*3.5/5;
  nextButtonY  = appHeight*8/9;
  nextButtonWidth  = appWidth*1/12;
  nextButtonHeight  = appHeight*1/14;
  playlistNameX  = appWidth*29/100;
  playlistNameY  = appHeight*2/16;
  playlistNameWidth  = appWidth*5/12;
  playlistNameHeight  = appHeight*1.5/18;
  nameOfSongX  = appWidth*3.5/8;
  nameOfSongY  = appHeight*6/7.1;
  nameOfSongWidth  = appWidth*1/8;
  nameOfSongHeight  = appHeight*1/28;
  artistNameX  = appWidth*3.5/8;
  artistNameY  = appHeight*4/4.55;
  artistNameWidth  = appWidth*1/8;
  artistNameHeight  = appHeight*1/80;
  //Layout DIVs
  //rect(X ,Y, Width, Height);
  rect(backgroundX ,backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth * 1/2;
  int centerY= appHeight * 1/2;
  rect(centerX * 1/2, centerY * 1/2, appWidth *1/2, appHeight* 1/2);
  //rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(progressBarX, progressBarY, progressBarWidth, progressBarHeight);
  rect(backButtonX, backButtonY, backButtonWidth, backButtonHeight);
  rect(nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
  rect(playlistNameX, playlistNameY, playlistNameWidth, playlistNameHeight);
  rect(nameOfSongX, nameOfSongY, nameOfSongWidth, nameOfSongHeight);
  rect(artistNameX, artistNameY, artistNameWidth, artistNameHeight);
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
