//Charizard

void setup() {
size(400,400);
}
void draw() {
ellipseMode(CENTER);

//tail
background(255,255,255);
noStroke();
fill(237,144,22);
ellipse(275,175,150,200);
fill(255,255,255);
ellipse(285,175,132,177);
rect(0,0,400,200);
fill(255,0,0);
ellipse(340,225,20,20);
triangle(330,225,350,225,mouseX,mouseY);
fill(255,255,0);
ellipse(340,225,15,15);
triangle(332,228,347,222,mouseX,mouseY+15);
//try to keep mouse centered above tip of tail

//ears
stroke(0);
fill(237,144,22);
triangle(200,37.5,185,20,185,50);
fill(237,144,22);
triangle(200,37.5,215,20,215,50);

//legs
ellipse(183,275,25,50);
ellipse(217,275,25,50);

//feet
strokeWeight(1);
ellipse(175,292,35,20);
ellipse(225,292,35,20);
fill(255,255,255);
triangle(162,286,153,288,161,290);
triangle(160,291,151,293,159,295);
triangle(161,296,153,298,163,300);
triangle(238,286,247,288,239,290);
triangle(240,291,249,293,241,295);
triangle(239,296,247,298,237,300);

//wings
fill(237,144,22);
triangle(220,135,275,45,360,125);
triangle(180,135,125,45,40,125);
fill(8,118,118);
triangle(224,132,277,58,354,123);
triangle(176,132,123,58,46,123);

//arms
rectMode(CORNERS);
fill(237,144,22);
rect(285,150,270,195);
rect(220,135,285,150);
noStroke();
rect(285,151,270,136);
stroke(0,0,0);
ellipse(277.5,195,17,13);
fill(255,255,255);
triangle(270,198,272,208,274,200);
triangle(275,200,277,210,279,200);
triangle(280,200,282,208,284,198);
fill(237,144,22);
rect(115,150,130,195);
rect(180,135,115,150);
noStroke();
rect(116,151,130,136);
stroke(0,0,0);
ellipse(122.5,195,17,13);
fill(255,255,255);
triangle(130,198,128,208,126,200);
triangle(125,height/2,123,210,121,200);
triangle(120,height/2,118,208,116,198);

//body
rectMode(CENTER);
stroke(0,0,0);
fill(237,144,22);
rect(width/2,120,30,20);
ellipse(width/2,198,95,144);
fill(255,237,144);
ellipse(width/2,204,85,135);

//head
fill(237,144,22);
ellipse(200,75,60,85);
fill(0,0,0);
strokeWeight(2);
point(197,90);
point(203,90);

//eyes
strokeWeight(1);
fill(255,255,255);
triangle(193,65,185,65,185,57);
fill(0,0,0);
ellipse(189,63,3,3);
fill(255,255,255);
triangle(207,65,215,65,215,57);
fill(0,0,0);
ellipse(212,63,3,3);

//mouth
fill(0,0,0);
ellipse(200,100,20,10);
noStroke();
fill(255,255,255);
triangle(197,95,195,100,193,96);
triangle(203,95,205,100,207,96);
triangle(198,103,196,104,194,102);
triangle(202,103,204,104,206,102);
}
