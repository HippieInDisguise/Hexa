import gifAnimation.*;
import processing.sound.*;
import processing.serial.*;

Serial myPort;

int counter = 0;
int blur = 21;
int strt = 0;

int sensor1;
int sensor2;
int sensor3;
int sensor4;
int sensor5;
int sensor6;
int sensor7;
int sensor8;

int sv1 = 0;
int sv2 = 0;
int sv3 = 0;
int sv4 = 0;
int sv5 = 0;
int sv6 = 0;
int sv7 = 0;
int sv8 = 0;

SoundFile start;
SoundFile win;
SoundFile lose;
SoundFile placement ;

float timeelapsed;
float wintime;
PImage photo;
PImage[] animation;
Gif hexaloop;

void serialEvent(Serial myPort) {
  // read the serial buffer:
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    myString = trim(myString);    
    String tempData[] = split(myString,',');   
    //convert from string to the correct data type
    sensor1 = int(tempData[0]);
    sensor2 = int(tempData[1]);    
    sensor3 = int(tempData[2]);
    sensor4 = int(tempData[3]);
    sensor5 = int(tempData[4]);
    sensor6 = int(tempData[5]);
    sensor7 = int(tempData[6]);
    sensor8 = int(tempData[7]);
    
    //println(myString);   
  }
}

void startscreen(){
     background(50,50,50);  
     imageMode(CENTER);  
     image(hexaloop, displayWidth/2, displayHeight/2);
     hexaloop.play();
     textSize(100);
     text("Hexa", displayWidth/3 + 120, displayHeight/2 + 30); 
}

void setup(){
  // List all the available serial ports
  //println(Serial.list());
  //size(1200,1000);
  noStroke();
  // Initialize port:
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  fullScreen();
  photo = loadImage("14.jpg");
  //photo.resize(1200,1000);
  photo.resize(displayWidth,displayHeight);
  
  hexaloop = new Gif(this, "hexa.gif");
  hexaloop.loop();
  animation = Gif.getPImages(this, "hexa.gif");
  
  start = new SoundFile(this,"Start.mp3");
  win = new SoundFile(this,"Win.mp3");
  lose = new SoundFile(this,"Lose.mp3");
  placement = new SoundFile(this,"placement.mp3");
}

void draw(){
  println(counter);
  if(sensor1 == 1 && sv1 == 0 && blur == 21){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv1 = 1;
    start.play();
    counter++;
    strt = 1;
    timeelapsed = millis();
     
  }if(sensor2 == 1 && sv2 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv2 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }if(sensor3 == 1 && sv3 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv3 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }if(sensor4 == 1 && sv4 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv4 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }if(sensor5 == 1 && sv5 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv5 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
   
  }if(sensor6 == 1 && sv6 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv6 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }if(sensor7 == 1 && sv7 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv7 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }if(sensor8 == 1 && sv8 == 0 && sv1 == 1){ 
    photo.loadPixels();
    if(blur >= 1){
      for(int x = 0; x < displayWidth; x += blur){
        for(int y = 0; y < displayHeight; y +=blur){
          color c = photo.pixels[y * photo.width + x];
          fill(c);
          rect(x,y,blur,blur);
        }
      }
      blur -= 3;
      }else{
        background(photo);
      }
    sv8 = 1;
    counter++;
    if(counter <= 7)
    placement.play();
    
  }else{
    //println(blur);
    if(millis() - timeelapsed >= 50000 && sv1 == 1 && counter <= 7){
    sv1 = 0;
    sv2 = 0;
    sv3 = 0;
    sv4 = 0;
    sv5 = 0;
    sv6 = 0;
    sv7 = 0;
    sv8 = 0;
    blur = 21;
    counter = 0;
    background(51);  
    lose.play();
    }
    if(counter == 8 && sv1 == 1){
      win.play();
      sv1 = 0;
      sv2 = 0;
      sv3 = 0;
      sv4 = 0;
      sv5 = 0;
      sv6 = 0;
      sv7 = 0;
      sv8 = 0;
      blur = 21;
      counter = 0;
      wintime = millis();
    }
    if(millis() - wintime >= 5000 && sv1 == 0 && blur == 21){
       startscreen();
    }
    if(strt == 0){
      startscreen();
    }
  }
}
