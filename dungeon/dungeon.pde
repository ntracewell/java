int x=0;
int y=0;
void setup() {
  size(540,540);
  noStroke();
  noLoop();
}

void draw() {
  for (int i=0; i<6; i++) {
    for (int j=0; j<6; j++) {
      drawTile(x+i*90,y+j*90,90,random(1),random(1),random(1),random(1));
    }
  }
}

void mousePressed() {
  redraw();
}

void drawTile(int t,int u,int size,float up,float right,float left,float down) {
  rectMode(CENTER);
  fill(0,255,0);
  rect(t+45,u+45,90,90);
  fill(255,255,0);
  if (left<.25) {
    rect(t+7.5,u+45,15,30);
  }
  else {
    rect(t+30,u+45,60,30);
  }
  if (right<.25) {
    rect(t+82.5,u+45,15,30);
  }
  else {
    rect(t+60,u+45,60,30);
  }
  if (up<.25) {
    rect(t+45,u+7.5,30,15);
  }
  else {
    rect(t+45,u+15,30,60);
  }
  if (down<.25) {
    rect(t+45,u+82.5,30,15);
  }
  else {
    rect(t+45,u+60,30,60);
  }
}


