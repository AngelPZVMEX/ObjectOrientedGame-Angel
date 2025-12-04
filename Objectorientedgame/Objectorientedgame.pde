<<<<<<< HEAD
Ball ball = new Ball(500, 150, -12, -7, random(10, 80)); //constructs ball
PImage  Bball; //loads in image of ball
PVector ryuPos;
float ballR = 17.5;
void setup() {
  size(600, 400);
  imageMode(CENTER);
  Bball = loadImage("Ball.png");
  ryuPos = new PVector(150, 300);
=======
//declaring PImages
PImage ryuIdle[];
PImage ryuParry[];
PImage stage;
int idleFrame;
int parryFrame;
int parryTime = 0;

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
>>>>>>> character
}

void draw() {
  background (255);
<<<<<<< HEAD
  rectMode(CENTER);
  stroke(0);
  rect(ryuPos.x, ryuPos.y, 78, 111);


  ball.exist();
=======
  stage.resize(0,400);
  image(stage,250,200);
imageMode(CENTER);

if(frameCount % 5 ==0) {
  idleFrame = (idleFrame+1) % ryuIdle.length;
}

image(ryuIdle[idleFrame], 150,300);


>>>>>>> character
  
  if(ball.Ballpos.x >= (ryuPos.x-39) && ball.Ballpos.x <= (ryuPos.x+39)){
    
  }
}

  
  void keyPressed(){
    if(frameCount % 5 ==0) {
  parryFrame = (parryFrame+1) % ryuParry.length;
}

image(ryuParry[parryFrame], 150,300);
  }
