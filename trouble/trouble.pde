Tribble[] tribbles = new Tribble[200];

boolean excited=false;

class Tribble {
  float x;
  float y;
  int count;
  Tribble(float xi,float yi) {
    x=xi;
    y=yi;
    count=0;
  }
  void excited() {
    x=x+random(-1,1);
    y=y+random(-1,1);
  }
  void draw() {
    fill(252,210,140);
    ellipse(x,y,75,50);
    count++;
    if (count>150) {
      excited=true;
    }
    if (count>210) {
      count=0;
    }
  }
}

void setup() {
  size(300,300);
  for (int i=0; i<200; i++) {
    tribbles[i] = new Tribble(random(50,250),random(50,250));
  }
}

void draw() {
  background(255);
  for (int i=0; i<200; i++) {
    tribbles[i].draw();
    if (excited==true) {
      tribbles[i].excited();
    }
  }
}
