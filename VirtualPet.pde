void setup(){
size(400,400)
}
void draw(){
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
  ellipse(170,120,30,30); 
  //right eye 
  ellipse(230,120,30,30);
  //nose
  triangle(195, 140, 205, 140, 200, 145);
  //color white
  fill(255,255,255);
  //left eye big shine
  ellipse(173,120,17,17); 
  //right eye big shine
  ellipse(232,120,17,17); 
  //left eye small shine
  ellipse(167,125,7,7); 
  //right eye small shine
  ellipse(227,125,7,7);
  //color black
  fill(0,0,0);
  //teddy bear text
  textSize(30);
  text("Teddy Bear", 130, 360); 
}
