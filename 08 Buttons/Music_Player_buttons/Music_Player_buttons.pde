import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Minim Library
//
int appWidth, appHeight;
//
//Global Variable
Minim minim;
AudioPlayer playList1;
AudioPlayer soundEffects1;
//
//
void setup() {
  //size();
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bruh, turn your phone";
  println( displayInstructions);
  //
  minim = new Minim (this);
  String extension = ".mp3";
  String quitButtonSound = "Daytime Forrest Bonfire";
  String pathwaySoundEffects = "../../Songs";
  String JulyByJohnPatitucci = "July";
  println(pathwayMusic+July+extension);
  String pathMusic = sketchPath(pathwaySoundEffects+quitButtonSound+extension);
  println(pathMusic);
  //soundEffects1 = minim.loadFile(path);
  playList1 = minim.loadFile(pathMusic);
  //
} // end setup
//
void draw() {
} // end draw
//
void keyPressed() {
}
//end keyPressed
//
void mousePressed() {
} // end mousePressed
//
//end main Program
