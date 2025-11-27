
class Ball {

PVector Ballpos;

  Ball(float x,float y){
  Ballpos = new PVector(x, y);
  }


void make () {
  image(Bball, Ballpos.x,Ballpos.y);
}
}
