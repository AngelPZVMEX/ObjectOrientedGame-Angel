//declaring PImages
PImage ryuIdle[];
PImage ryuParry[];
PImage stage;
int idleFrame;
int parryFrame;
int parryTime;

void setup() {
  size(600,400);
  
  stage = loadImage("Cody-SFA3-Stage.png");
  ryuIdle = new PImage[10];
  ryuParry = new PImage[5];
  
  for (int i = 0; i< ryuIdle.length; i++)
  {
    ryuIdle[i] = loadImage("Ryu-stance_"+(i)+".png");
  }
  
  for (int i = 0; i< ryuParry.length; i++)
  {
      ryuParry[i] = loadImage("(ryuhparry)_"+(i)+".png");
  }
}

void draw() {
  background (255);
  stage.resize(0,400);
  image(stage,250,200);
imageMode(CENTER);

if(frameCount % 5 ==0) {
  idleFrame = (idleFrame+1) % ryuIdle.length;
}

image(ryuIdle[idleFrame], 150,300);
  
  
}
