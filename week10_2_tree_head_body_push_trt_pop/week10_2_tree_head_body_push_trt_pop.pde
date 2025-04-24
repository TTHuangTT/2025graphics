// week10_2_tree_head_body_push_trt_pop
PImage tree,head,body;
void setup(){
  size(560,560);
  tree = loadImage("tree.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(tree,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
    translate(+250,+124);
    rotate(radians(mouseX));
    translate(-250,-124);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
