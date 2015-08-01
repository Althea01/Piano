import processing.serial.*;
import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer kingk1;
AudioPlayer kingk2;
AudioPlayer kingk3;
AudioPlayer kingk4;
AudioPlayer kingk5;
AudioPlayer kingk6;
AudioPlayer kingk7;
FFT fft;

 Serial myPort;        
 
 void setup () {
  size (640,480);
  minim = new Minim(this);
  
  kingk1 = minim.loadFile("src/do.mp3");
  kingk2 = minim.loadFile("src/re.mp3");
  kingk3 = minim.loadFile("src/mi.mp3");
  kingk4 = minim.loadFile("src/fa.mp3");
  kingk5 = minim.loadFile("src/sol.mp3");
  kingk6 = minim.loadFile("src/la.mp3");
  kingk7 = minim.loadFile("src/si.mp3");

 println(Serial.list());
 
 myPort = new Serial(this, Serial.list()[2], 9600);
 
 myPort.bufferUntil('\n');
 
 background(0);
 }
 void draw () {
 }

 void serialEvent (Serial myPort) {
 String inString = myPort.readStringUntil('\n');
 inString = trim(inString);
 float a = float (inString);
 
  
  background (255);
  if (a == 1){
    kingk1.play();
  }
  if (a == 2){
    kingk2.play();
  }
  if (a == 3){
    kingk3.play();
  }
  if (a == 4){
    kingk4.play();
  }
  if (a == 5){
    kingk5.play();
  }
  if (a == 6){
    kingk6.play();
  }
  if (a == 7){
    kingk7.play();
  }
 
 }
