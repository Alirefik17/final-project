import processing.sound.*;



color Blue = #0032C4, yellow = #FAFF03;
color boarder = yellow, inside = #FAFF03;
int totalSongs= 2;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;
PImage[] pic = new PImage[1]; //Array; .length is "1"
color white=#FFFFFF;
color green=#03FF1D;
color black= #000000;
int lcolor = 0;
boolean bbutton = false;



void setup () {
  size(600, 600);


  pic[0] = loadImage("lambo.jpg");
  image(pic[0], 0, 0, 600, 600);   

  song[0] = new SoundFile (this, "song.mp3");
  song[0] .play();

  fill(Blue);
  rect(10, 10, 50, 50);
  fill(green);
  rect(90, 10, 50, 50);
  fill(black);
  rect( 170, 10,50,50);
  fill(yellow);
  rect(260, 10, 50,50);
  
}

void draw () {
  fill(boarder);
  rect(500, 550, 100, 50);
  fill(inside);
  rect(500+10, 550+10, 100-10-10, 50-10-10);
  rect(10, 550, 20, 20);
}

void mousePressed () {
  if (mouseX>=500 && mouseX <=600 && mouseY>=550 && mouseY<=600) {
    exit ();
  } //End of Exit() QuitButton
  stroke(lcolor);
  strokeWeight(11);
  println ("Mouse X Variaable is " + mouseX);
  println ("Mouse X Variaable is " + mouseY);
  strokeWeight(random (11));
  stroke(1);

  if (mouseX>=10 && mouseX <=60 && mouseY>=10 && mouseY<=60) {
     lcolor=Blue;
      
    }
    
    
  if (mouseX>=90 && mouseX<=140 && mouseY>=10 && mouseY<=60) {
    lcolor=green;
  }
  
    if (mouseX>=170 && mouseX<=220 && mouseY>=10 && mouseY<=60) {
    lcolor=black;
  }
   if (mouseX>=260 && mouseX<=310 && mouseY>=10 && mouseY<=60) {
    lcolor=yellow;
  }
   if (mouseX>=260 && mouseX<=310 && mouseY>=10 && mouseY<=60) {
    lcolor=yellow;
  }
   if (mouseX>=10 && mouseX<=30 && mouseY>=550 && mouseY<=570) {
    lcolor=white;
  }
  
  }




void mouseDragged() {
  stroke(lcolor);
  strokeWeight(11);
  line(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(1);
}