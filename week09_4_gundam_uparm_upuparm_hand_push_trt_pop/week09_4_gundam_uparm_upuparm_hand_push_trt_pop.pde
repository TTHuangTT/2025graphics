// week09_4_gundam_uparm_upuparm_hand_push_trt_pop
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
void draw(){
  background(204);
  translate(200,300);
  sphere(3); // 原點的球
  scale(10,-10,10); // y要上下再反過來
  shape(upuparm1,0,0); // 上上手臂
  pushMatrix();
    translate(-4.1,19.9);
    translate(4.1,-19.9);
    shape(uparm1,0,0); // 上手臂
    pushMatrix();
      translate(-4.5,16.9);
      rotateX(radians(mouseY));
      translate(4.5,-16.9);
      shape(hand1,0,0);
    popMatrix();
  popMatrix();
}
