
class Ball {

PVector Ballpos;
PImage  Bball = loadImage("ball.png");
  Ball(float x,float y){
  Ballpos = new PVector(x, y);
  }


void make () {
  image(Bball, Ballpos.x,Ballpos.y);
}
}
