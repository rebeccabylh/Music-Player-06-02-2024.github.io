//Global Variables
int appWidth, appHeight;
float backgroundX ,backgroundY, backgroundWidth, backgroundHeight;
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
  backgroundX = appWidth*o;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //Layout DIVs
  //rect(X ,Y, Width, Height);
  rect(backgroundX ,backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth * 1/2;
  int centerY= appHeight * 1/2;
  rect(centerX * 1/2, centerY * 1/2, appWidth *1/2, appHeight* 1/2);
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
