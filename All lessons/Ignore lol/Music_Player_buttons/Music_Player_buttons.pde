import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim Library
//
//Global Variables
Minim minim;
int numberSoundEffects = 4;
int numberMusicSongs = 8; 
AudioPlayer[] playList;
AudioPlayer[] soundEffects;
int currentSong = 0;
//
int appWidth, appHeight;
//
void setup() {
  //Display
  //size(600, 400); 
  fullScreen(); 
  appWidth = displayWidth; 
  appHeight = displayHeight; 
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bruh, turn your phone";
  println(displayInstructions);
  //
  minim = new Minim(this);
  String pathwaySoundEffects = "../Songs/";
  String pathwayMusic = "../Songs/"; 
  String quitButtonSound = "Daytime Forrest Bonfire";
  String JulyJohnPatitucci = "July";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+JulyJohnPatitucci+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension );
  String pathMusic = sketchPath( pathwayMusic + JulyJohnPatitucci + extension );
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  playList[0] =  minim.loadFile( pathMusic );
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  //playList[0].loop(0);
  //
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  //if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousPressed
//
//End MAIN Program
