// week10_3_tree_head_body_upaarm1_hand1_push_trt_pop
PImage tree,head,body,uparm1,hand1;
void setup(){
  size(560,560);
  tree = loadImage("tree.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
}
void draw(){
  background(#FFFFF2);
  image(tree,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
    translate(+225,+159);
    //rotate(radians(mouseX));
    translate(-225,-159);
    image(uparm1,0,0);
  popMatrix();
  pushMatrix();
    translate(+207,+215);
    //rotate(radians(mouseX));
    translate(-207,-215);
    image(hand1,0,0);
  popMatrix();
  pushMatrix();
    translate(+250,+124);
    //rotate(radians(mouseX));
    translate(-250,-124);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
