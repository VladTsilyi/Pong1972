int x, y, w, h, speedX, speedY;
int paddleX, paddleY, paddleW, paddleH, paddleS;
int rightpaddleX, rightpaddleY, rightpaddleW, rightpaddleH, rightpaddleS;
int scoreL = 0;
int scoreR = 0;
color colorL = color(0,255,0);
color colorR = color(255,255,0);
int winScore = 5;
boolean up, down;
boolean upR, downR;
void setup() {
  size(500, 500);
  population();

}

void draw() {
background(0);
drawBall();
moveBall();
bounceBall();
drawPaddles();
movePaddles();
moverightpaddles();
restrictPaddles();
bouncePaddles();
scoreboard();
gameOver();
}


void scoreboard(){
fill(255);
text(scoreL, 150, 50);
text(scoreR, 350, 50);
}




void gameOver() {
 if(scoreL == winScore) {
    gameOverPage("Left Wins!", colorL);
  }
  if(scoreR == winScore){
    gameOverPage("Right Wins!", colorR);
  }
}

   
  void gameOverPage(String text, color c) {
   speedX = 0;
   speedY = 0;
  text("Game Over!", width/2, height/3 -40);
  fill(c);
  text(text, width/2, height/3);
  text("Click to play again", width/2, height/3 + 40);
  
  if(mousePressed) {
    scoreL = 0;
    scoreR = 0;
    speedX = 5;
    speedY = 5;
  }
}

void keyPressed(){
  if (key == 'w' || key == 'W'){
  up = true;
  }
  if (key == 's' || key == 'S'){
  down = true;
  }
  if (keyCode == UP){
  upR = true;
  }
  if (keyCode == DOWN){
  downR = true;
  }
  }


    
void keyReleased(){
 if (key == 'w' || key == 'W'){
  up = false;
  }
  if (key == 's' || key == 'S'){
  down = false;
  } 
  if (keyCode == UP){
  upR = false;
  }
  if (keyCode == DOWN){
  downR = false;
  }
}


    
