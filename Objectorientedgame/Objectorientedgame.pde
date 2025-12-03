PImage ryuIdle;
PImage ryuParry;
PImage stage;
void setup() {
  size(600,400);
  
  stage = loadImage("Cody-SFA3-Stage.png");
}

void draw() {
  background (255);
  stage.resize(0,400);
  image(stage,-200,0);

  
  
}
