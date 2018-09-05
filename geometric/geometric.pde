int x = 25;
int x1 = 0;
int x2 = 50;

size(501,501);

stroke(255,0,0);
fill(255);
rectMode(CENTER);
for (int i=0; i<10; i++) {
  for (int j=0; j<10; j++) {
    rect(x+50*i,x+50*j,50,50);
  }
}
noStroke();
fill(0);
for (int k=0; k<10; k++) {
  for (int m=0; m<10; m++) {
    triangle(x1+50*k,x1+1+50*m,x+50*k,x+50*m,x2+50*k,x1+1+50*m);
    triangle(x1+50*k,x2+50*m,x+50*k,x+50*m,x2+50*k,x2+50*m);
  }
}
stroke(255,0,0);
fill(255);
for (int w=2; w<8; w++) {
  for (int z=2; z<8; z++) {
    rect(x+50*w,x+50*z,50,50);
  }
}
noStroke();
fill(0);
for (int I=2; I<8; I++) {
  for (int J=2; J<8; J++) {
    triangle(x1+1+50*I,x1+50*J,x1+1+50*I,x2+50*J,x+50*I,x+50*J);
    triangle(x+50*I,x+50*J,x2+50*I,x1+50*J,x2+50*I,x2+50*J);
  }
}
