class Monster {

  int x, y;
  boolean isAngry;
  int timeAngry = 0;

  Monster(int xi,int yi) {
    x=xi;
    y=yi;
    isAngry=false;
  }
  void draw() {
    //changes color and timeAngry value
    if (isAngry==true) {
      fill(255,0,0);
      timeAngry -= 1;
      if (timeAngry==-60) {
        timeAngry=0;
        isAngry=false;
      }
    }
    else {
      fill (75,0,170);
    }
    //draws monster
    ellipse(x,y+timeAngry*2,75,75);
    ellipse(x+45,y+timeAngry*2,23,8);
    ellipse(x-45,y+timeAngry*2,23,8);
    fill(0);
    ellipse(x-12.5,y+timeAngry*2-10,7,7);
    ellipse(x+12.5,y+timeAngry*2-10,7,7);
    ellipse(x,y+timeAngry*2+10,40,15);
    fill(200,0,200);
    ellipse(x+20,y+timeAngry*2+38,25,10);
    ellipse(x-20,y+timeAngry*2+38,25,10);
    if (isAngry==true) {
      //draws angry monster (changes eye color and adds eyebrows)
      fill(255,0,0);
      noStroke();
      ellipse(x-12.5,y+timeAngry*2-10,4.5,4.5);
      ellipse(x+12.5,y+timeAngry*2-10,4.5,4.5);
      stroke(5);
      fill(0);
      line(x-5,y+timeAngry*2-15,x-20,y+timeAngry*2-20);
      line(x+5,y+timeAngry*2-15,x+20,y+timeAngry*2-20);
      
    }
  }
  void poke() {
    isAngry=true;
  }
}

Monster monster;
Monster monster2;

void setup() {
  size(400,400);
  monster = new Monster(100,300);
  monster2 = new Monster(300,300);
}

void draw() {
  //draws separate monsters and gives them separate causes of anger
  background(255);
  monster.draw();
  monster2.draw();
  if (keyPressed) {
    monster.poke();
  }
  if (mousePressed) {
    monster2.poke();
  }
}
