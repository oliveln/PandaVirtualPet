void setup(){
  size(400,400);
  background(0,100,66);
 
};

void draw(){
//noStroke();
//fill black 
  fill(0,0,0);
//body
  ellipse(200,350,250,300);
//fill white
  fill(255,255,255);
//white part of body
  ellipse(200,375,200,250);
//fill black
  fill(0,0,0);
//left ear
  ellipse(125,120,70,70);
//right ear
  ellipse(275,120,70,70);
//fill white
  fill(255,255,255);
//head  
  ellipse(200,200,200,200);
//fill black
  fill(0,0,0);
//left eye black 
  ellipse(150,190,60,60);
// right eye black 
  ellipse(250,190,60,60);
//fill white
  fill(255,255,255);
// left eye first white
  ellipse(155,185,20,20);
//right eye first white
  ellipse(245,185,20,20);
// left eye second white
  ellipse(140,200,10,10);
//right eye second white
  ellipse(260,200,10,10);
//fill black
  fill(0,0,0);
//mouth?
  ellipse(200,225,40,25);
//fill white
  fill(255,255,255);
//mouth shine
  ellipse(210,223,7,7);
}
