// week10_5_tree_many angle_ID_mouseDragged
PImage tree,head,body,uparm1,hand1,uparm2,hand2;
float [] angle = new float[20];
int ID = 0;
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key=='1') ID = 1;
  if(key=='2') ID = 2;
  if(key=='3') ID = 3;
  if(key=='4') ID = 4;
  if(key=='5') ID = 5;
  if(key=='6') ID = 6;
  if(key=='0') ID = 0;
}
void setup(){
  size(560,560);
  tree = loadImage("tree.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(tree,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
    translate(+225,+159);
    rotate(radians(angle[1]));
    translate(-225,-159);
    image(uparm1,0,0);
  popMatrix();
  pushMatrix();
    translate(+292,+155);
    rotate(radians(angle[3]));
    translate(-292,-155);
    image(uparm2,0,0);
  popMatrix();
  pushMatrix();
    translate(+207,+215);
    rotate(radians(angle[2]));
    translate(-207,-215);
    image(hand1,0,0);
  popMatrix();pushMatrix();
    translate(+340,+99);
    rotate(radians(angle[4]));
    translate(-340,-99);
    image(hand2,0,0);
  popMatrix();
  pushMatrix();
    translate(+250,+124);
    rotate(radians(angle[5]));
    translate(-250,-124);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
