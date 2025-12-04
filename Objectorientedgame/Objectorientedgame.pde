Ball ball = new Ball(500,150,-12,-7,random(15,90)); //constructs ball
  PImage  Bball; //loads in image of ball
  
void setup() {
  size(600,400);
  imageMode(CENTER);
Bball = loadImage("Ball.png");

}

void draw() {
  background (255);
  rectMode(CENTER);
  stroke(0);
  rect(150,300,70,140);
  

  ball.exist();
  
}
