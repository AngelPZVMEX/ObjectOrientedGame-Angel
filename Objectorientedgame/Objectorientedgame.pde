Ball ball = new Ball(40,40,3,5); //constructs ball
  PImage  Bball; //loads in image of ball
  
void setup() {
  size(600,400);
  imageMode(CENTER);
Bball = loadImage("Ball.png");

}

void draw() {
  background (255);
  

  ball.exist();
  
}
