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
int numberSoundEffects = 2;
int numberMusicSongs = 3;
AudioPlayer[] playList = new AudioPlayer[1];
AudioPlayer[] soundEffects = new AudioPlayer [1];
int currentSong = 0;
AudioMetaData[] playListMetaData = new AudioMetaData [1];
//
int appWidth, appHeight;
//
Boolean looping=false;
//
PFont generalFont;
color black = #000000;
color pink = #FFEDF8;
//
int size;
//
void setup() {
  //Display
  //size();
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bruh, turn your phone";
  println(displayInstructions);
  //
  size= (appWidth > appHeight) ? appHeight : appWidth;
  generalFont = createFont("Consolas", size);
  //
  minim = new Minim(this);
  String pathwaySoundEffects = "../../../Songs/";
  String pathwayMusic = "../../../Songs/";
  String quitButtonSound = "Daytime Forrest Bonfire";
  String PuttingOnTheRitz = "Putting On The Ritz - Freedom Trail Studio";
  String July = "July - John Patitucci";
  String CamptownRaces = "Camptown Races - Freedom Trail Studio";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+PuttingOnTheRitz+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension );
  String pathMusic = sketchPath( pathwayMusic + PuttingOnTheRitz + extension );
  String pathMusic = sketchPath( pathwayMusic + July + extension );
  String pathMusic = sketchPath( pathwayMusic + CamptownRaces + extension );
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  playList[0] =  minim.loadFile( pathMusic );
  playListMetaData[0] = playList[0].getMetaData();
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  //
  if (!playList[currentSong].isPlaying() ) println ("Nothing is playing, pick a song");
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  //
  if ( playList[currentSong].isPlaying() ) {
  } else if ( playList[currentSong].length() < 160000 ) {
    playList[currentSong].rewind();
  } else if ( !playList[currentSong].isPlaying()  && ( playList[currentSong].position() > playList[currentSong].length()*0.75 ) ) {
    playList[currentSong].rewind();
    //
    currentSong = currentSong + 1;
    playList[currentSong].play();
  } else {
  }
  if ( playList[currentSong].isPlaying() ) {
  } else {
    playList[currentSong].rewind();
  }
//
 if ( playList[currentSong].isMuted() ) println ("You're on mute bud");
//
fill(pink);
  rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(black); 
  int size = 40; 
  textFont(generalFont, size);
  //printArray(playListMetaData[0]);
  println("Variable is:", playListMetaData[0].title());
  text(playListMetaData[0].title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(black);
//
/*if ( playList[currentSong].isPlaying() ) {
    //Empty IF, TRUE
  } else {
    //currentSong at end of FILE
    playList[currentSong].rewind();
    currentSong = currentSong + 1;
    elements and 1-index value until playlist done, then recopy array to make new shuffle and not repeat songs
    playList[currentSong].play();
  }
  */
//
}
//End draw
  //
  void keyPressed() {
    if ( key=='P' || key=='p' ) {
      if ( playList[currentSong].isPlaying() ) {
        playList[currentSong].pause();
      } else {
        playList[currentSong].play();
      }
    }
    //
    if ( key=='L' || key=='l' ) {
      playList[currentSong].loop(1);
      looping = true;
    }
    //
    if ( key=='I' || key=='i' ) {
      playList[currentSong].loop();
      looping = true;
    }
    if ( key=='S' || key=='s' ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      looping = false;
    }
    //
    if ( key=='R' || key=='r') playList[0].skip(4000);
    if  (key=='F' || key=='f') playList[0].skip(-1000);
    //
    if (key== 'M' || key=='m') {
      if ( playList[currentSong].isMuted() ) {
        playList[currentSong].unmute();
      } else {
        playList[currentSong].mute();
      }
    }
    //
    } //End keyPressed
  //
  void mousePressed() {
  } //End mousePressed
  //
  //End MAIN Program
