
class Ball {

PVector Ballpos;
PVector velocity;
  int direction;
  
  Ball(float x,float y, float speed, float gravity){
  Ballpos = new PVector(x, y);
  velocity = new PVector(speed, gravity);
  direction = 1;
  }


void make () { //creates ball
  image(Bball, Ballpos.x,Ballpos.y);
  Bball.resize(35,0);
  image(Bball, Ballpos.x,Ballpos.y);
}
 void ballgo() { //makes the ball move
    Ballpos.add(velocity.mult(direction));
  }

}
