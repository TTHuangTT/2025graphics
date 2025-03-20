// week05_4_translate_mouseX_mouseY_rotate_radians_frameCount
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  // 在電腦圖學裡,畫圖時,會照著(累積的移動、旋轉)來放東西
  translate(mouseX,mouseY); // 移到mouse所在位置
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10); // 寬度100的棒子,但放在左上角
}
