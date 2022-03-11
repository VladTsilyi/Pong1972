void drawBall() {
fill(255,0,0);
ellipse(x, y, w, h);
}

void moveBall() {
x = x + speedX;
y = y + speedY;
}


void bounceBall() {
if ( x > width - 25){
setup();
speedX = -speedX;
scoreL = scoreL + 1;
}//if hits right wall reset and give score
else if (x < 0 + 25){
  speedX = -speedX;
  scoreR = scoreR + 1;
setup();
}//if hits left wall reset and give score

if (y > height - 25){
speedY = -speedY;
}

else if (y < 0 + 25){
speedY = -speedY;
  }
}
