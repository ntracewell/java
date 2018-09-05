int x = 7;
int y = 7;
boolean target = false;
int xt;
int yt;
int xp=350;
int yp=225;
boolean pmovement = false;
int xs;
int ys;

void setup() {
  size(500,500);
  frameRate(100);
}

void draw() {
  background(50,0,75);
  stroke(255);
  strokeWeight(6);
  for (int i=0; i<70; i++) {
    for (int j=0; j<70; j++) {
      point (x + 3*x*i, y + 3*y*j);
    }
  }
  
//planet
strokeWeight(1);
stroke(0);
fill(45,150,90);
ellipse(xp,yp,155,150);
if (pmovement) {
if (xp<xt) {
        xp=xp+1;
      }
      else {
        xp=xp-1;
      }
      if (yp<yt) {
        yp=yp+1;
      }
      else {
        yp=yp-1;
      }
}

noStroke();

  fill(255,0,0);
  ellipse(xs,ys,25,25);
  fill(255);
  ellipse(xs,ys,20,20);
  fill(255,0,0);
  ellipse(xs,ys,14,14);
  fill(255);
  ellipse(xs,ys,7,7);
}

void mousePressed(){
  target=true;
  xs = mouseX;
  ys = mouseY;
}

void keyPressed() {
  if (keyCode == 32) {
    if (keyPressed) {
      pmovement = true;
      xt=xs;
      yt=ys;
    }
  }
  if (!target) {
    xt=xp;
    yt=yp;
  }
}


