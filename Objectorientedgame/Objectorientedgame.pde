PImage ryuIdle[];
PImage ryuParry[];
PImage stage;
int idleFrame;
void setup() {
  size(600,400);
  
  stage = loadImage("Cody-SFA3-Stage.png");
  ryuIdle = new PImage[10];
  
  for (int i = 0; i< ryuIdle.length; i++)
  {
    ryuIdle[i] = loadImage("Ryu-stance_"+(i)+".png");
  }
  
}

void draw() {
  background (255);
  stage.resize(0,400);
  
  image(stage,-200,0);

if(frameCount % 5 ==0) {
  idleFrame = (idleFrame+1) % ryuIdle.length;
}

image(ryuIdle[idleFrame], 200,200);
  
  
}
