// week14_9b_inverse_kinematics_part8
void setup(){
  size(400, 400);
  for(int i=0;i<N;i++){
    p[i] = new PVector(200,350-L*i);
  }
}
int N = 20, L = 300 / N;
PVector [] p = new PVector[N];
void draw(){
  background(255);
  for(int i=0;i<N;i++){
    if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255, 0, 0);
    ellipse(p[i].x,p[i].y, 8, 8);
    fill(0);
    text("p:"+i,p[i].x+10,p[i].y);
  }
  PVector now = new PVector(mouseX,mouseY);
  p[N-1].x = now.x;
  p[N-1].y = now.y;
  for(int i=N-2;i>0;i--){
    PVector v = PVector.sub(p[i+1],p[i]).normalize().mult(L);
    p[i].x = p[i+1].x - v.x;
    p[i].y = p[i+1].y - v.y;
  }
  for(int i=1;i<N;i++){
    PVector v = PVector.sub(p[i],p[i-1]).normalize().mult(L);
    p[i].x = p[i-1].x + v.x;
    p[i].y = p[i-1].y + v.y;
  }
  ellipse(mouseX,mouseY,6,6);
  //line(p[4].x,p[4].y,mouseX,mouseY);
}
