void drawPaddles() {
 fill(colorL);
 rect(paddleX, paddleY, paddleW, paddleH);
 fill(colorR);
 rect(rightpaddleX, rightpaddleY, paddleW, paddleH);
}

void restrictPaddles() {
if (paddleY - paddleH/2 < 0){
   paddleY = paddleY + paddleS;
}
if (paddleY + paddleH/2 > height){
  paddleY = paddleY - paddleS;
  }
  if (rightpaddleY - paddleH/2 < 0){
   rightpaddleY = rightpaddleY + paddleS;
}
if (rightpaddleY + paddleH/2 > height){
  rightpaddleY = rightpaddleY - paddleS;
  }
}

void bouncePaddles(){
if (x - w/2 < paddleX + paddleW/2 && y - h/2 < paddleY + paddleH/2 && y + h/2 > paddleY - paddleH/2){
  if(speedX < 0){
  speedX = -speedX;
  } 
}
else if (x + w/2 > rightpaddleX - paddleW/2 && y - h/2 < rightpaddleY + paddleH/2 && y + h/2 > rightpaddleY - paddleH/2){
  if(speedX > 0) {
     speedX = -speedX;
  }
}

}

void movePaddles() {
if (up == true){
  paddleY = paddleY - paddleS;
}
if (down == true){
  paddleY = paddleY + paddleS;
}
}

void moverightpaddles() {
if (upR == true){
  rightpaddleY = rightpaddleY - paddleS;
}
if (downR == true){
  rightpaddleY = rightpaddleY + paddleS;
  }
}
