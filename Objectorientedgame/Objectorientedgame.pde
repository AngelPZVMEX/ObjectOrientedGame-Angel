Ball ball = new Ball(10,10,2,4); //constructs ball
  PImage  Bball; //loads in image of ball
  
void setup() {
  size(600,400);
Bball = loadImage("Ball.png");
imageMode(CENTER);
}

void draw() {
  background (255);
  
  ball.make();
  ball.ballgo();
  
}
