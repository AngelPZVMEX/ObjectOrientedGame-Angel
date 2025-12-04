Ball ball = new Ball(500, 150, -12, -7, random(10, 80)); //constructs ball
PImage  Bball; //loads in image of ball
PVector ryuPos;
float ballR = 17.5;
void setup() {
  size(600, 400);
  imageMode(CENTER);
  Bball = loadImage("Ball.png");
  ryuPos = new PVector(150, 300);
}

void draw() {
  background (255);
  rectMode(CENTER);
  stroke(0);
  rect(ryuPos.x, ryuPos.y, 78, 111);


  ball.exist();
  
  if(ball.Ballpos.x >= (ryuPos.x-39) && ball.Ballpos.x <= (ryuPos.x+39)){
    
  }
}
