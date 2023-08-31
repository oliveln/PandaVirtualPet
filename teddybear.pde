import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[3], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}


//INSTRUCTIONS
//Expose the light sensor to light to make the eyes bigger + the shine in the eyes shinier.
//Cover the light sensor to make the eyes smaller + reduce shine in the eyes.

//INSTRUCTIONS IF IT'S NOT WORKING
//If the eyes look weird (ex: there's only one circle), recallibrate the code by making the x and y in "lightLevel < x && lightLevel > y" lower.
//If you don't want to rewrite the code but the light sensor isn't reading above or at 700, shine a flashlight on the light sensor.

public void draw(){
  int lightLevel = arduino.analogRead(5);
  System.out.println(lightLevel);
  int shine = 17;
  if (lightLevel > 700){
    shine = 17;
  } else if (lightLevel < 700 && lightLevel > 600){
      shine = 15;
  } else if (lightLevel < 600 && lightLevel > 500){
      shine = 13;
  } else if (lightLevel < 500 && lightLevel > 400){
      shine = 11;
  } else if (lightLevel < 400 && lightLevel > 300){
      shine = 9;
  } else if (lightLevel < 300 && lightLevel > 200){
      shine = 8;
  } else if (lightLevel < 200 && lightLevel > 100){
      shine = 5;
  } else if (lightLevel < 100){
      shine = 0;
  }
  int smallerShine = shine-10;
   if (smallerShine < 0){
     smallerShine = 0;
   }
  noStroke();
  //color brown
  fill(194, 151, 113);
  //head
  ellipse(200,125,140,140);
  //torso
  ellipse(200,225,130,175);
  //right arm
  ellipse(250,200,100,40);
  //left arm
  ellipse(150,200,100,40);
  //left leg
  ellipse(175,280,40,100);
  //right leg
  ellipse(225,280,40,100);
  //left ear
  ellipse(155,60,50,50);
  //right ear
  ellipse(245,60,50,50);
  //color light brown
  fill(214, 181, 152);
  //lighter torso
  ellipse(200,235,90,125);
  //lighter head
  ellipse(200,125,110,110);
  //lighter left ear
  ellipse(155,60,35,35);
  ellipse(245,60,35,35);
  //color black
  fill(0,0,0);
  //left eye
  ellipse(170,120,30 + shine / 2,30 + shine / 2); 
  //right eye 
  ellipse(230,120,30 + shine / 2,30 + shine / 2);
  //nose
  triangle(195, 140, 205, 140, 200, 145);
  //color white
  fill(255,255,255);
  //left eye big shine
  ellipse(173,120,shine,shine); 
  //right eye big shine
  ellipse(232,120,shine,shine); 
  //left eye small shine
  ellipse(167,125,smallerShine,smallerShine); 
  //right eye small shine
  ellipse(227,125,smallerShine,smallerShine);
  //color black
  fill(0,0,0);
  //teddy bear name text
  textSize(30);
  text("Teddy Bear", 130, 360); 
  //teddy bear warning text
  textSize(13);
  text("put your hand over the light sensor and watch the light leave his eyes!", 10, 380);
}
