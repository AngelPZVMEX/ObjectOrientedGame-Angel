Ball ball = new Ball(10,10);
  PImage  Bball;
void setup() {
  size(600,400);
Bball = loadImage("Ball.png");
imageMode(CENTER);
}

void draw() {
  background (255);
  
  ball.make();
  
}
