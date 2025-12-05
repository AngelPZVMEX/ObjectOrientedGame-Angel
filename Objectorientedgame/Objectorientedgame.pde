//initializing variables
Ball ball = new Ball(500, 150, -12, -7, random(10, 80)); //constructs ball

PImage  Bball; //loads in image of ball
PVector ryuPos; //loads ryus position
float ballR = 17.5; //balls radius

PImage ryuIdle[]; //array of frames
PImage ryuParry[];//array of frames
PImage stage; //image of the background

int lives = 40;//lives
int gamestate = 0; // 0 means playing 1 means dead
//attempt at keeping track of time so that the parry can play
int idleFrame;
int parryFrame;
int parryTime = 20;
int parrystart = 0;
boolean parryplaying = false;
void setup() {
  size(600, 400);
  imageMode(CENTER);
  
  //setting up images and vectors
  Bball = loadImage("Ball.png");
  ryuPos = new PVector(150, 300);
 stage = loadImage("Cody-SFA3-Stage.png");
  ryuIdle = new PImage[10];
  ryuParry = new PImage[5];
  
  
  //initializing image arrays
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
  if(gamestate == 1){ //checking if game is active if not game over screen
  textAlign(CENTER);
  textSize(40);
  text("GAME OVER", width/2, height/2 - 20);

  textSize(20);
  text("Press R to Restart", width/2, height/2 + 20);
 
}
  
 else  if(gamestate == 0){
  background (255);
  rectMode(CENTER);
  stroke(0);
 




  stage.resize(0,400);
  image(stage,250,200);
imageMode(CENTER);

if(frameCount % 5 ==0) { //has every sprite last 5 frames
  idleFrame = (idleFrame+1) % ryuIdle.length;
}

image(ryuIdle[idleFrame], 150,300);



  
  
  
noFill();

    ball.exist(); //calls ball into existance
    
    if(ball.Ballpos.x >= (ryuPos.x-39) && ball.Ballpos.x <= (ryuPos.x+39) && ball.Ballpos.y > (ryuPos.y-105) && ball.Ballpos.y < (ryuPos.y+105)){ //checks if ball has collided with ryu and takes a life away
   
lives -=1;
  }
  
 
    
    if(keyPressed == true) { // makes him parry and deflect the ball when key is pressed by checking if ball would be inside the hit box
       if(ball.Ballpos.x >= (ryuPos.x-39) && ball.Ballpos.x <= (ryuPos.x+39) && ball.Ballpos.y > (ryuPos.y-105) && ball.Ballpos.y < (ryuPos.y+105)){
    ball.velocity.x= ball.velocity.x*-1;

  }
  
   if(ball.Ballpos.x >= (ryuPos.x-39) && ball.Ballpos.x <= (ryuPos.x+39) && ball.Ballpos.y < (ryuPos.y-105) && ball.Ballpos.y > (ryuPos.y+105)){
    ball.velocity.y= ball.velocity.y*-1;

  }
  image(ryuParry[2],150,300);
  } 
    }
    if (lives <= 0){
      gamestate = 1;
    }
}

void keyPressed() { //restarts game on r
  if (gamestate == 1 && (key == 'r' || key == 'R')) {
    restartGame();
  }
}

void restartGame() { // restarts game
  lives = 40;


  ball = new Ball(500, 150, -12, -7, random(10, 80));
  
  gamestate = 0;
}
  

  
  

  //  if (parryplaying == false){
  //    for (int i = 0; i< parryTime ; i++){
  //      parryplaying = true;
  //      if(frameCount % 5 ==0) {
  //parryFrame = (parryFrame+1) % ryuParry.length;
  //image(ryuParry[parryFrame], 150,300);
  //parrystart += 1;
  //  }
        
        
  //    }
  //    parryplaying = false;
  //  }
  //}
    
//    while(parrystart<= parryTime){
//    if(frameCount % 5 ==0) {
//  parryFrame = (parryFrame+1) % ryuParry.length;
//  image(ryuParry[parryFrame], 150,300);
//  parrystart += 1;
//    }
//}




  
