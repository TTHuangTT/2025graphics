// week12_6_sound
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw(){
  
}
