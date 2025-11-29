
class Ball {

PVector Ballpos;
PVector velocity;
  int direction;
  
  Ball(float x,float y, float speed, float gravity){
  Ballpos = new PVector(x, y);
  velocity = new PVector(speed, gravity);
  direction = 1;
  }

void exist(){
  balledges();
  ballgo();
  make();
}

void make () { //creates ball
  image(Bball, Ballpos.x,Ballpos.y);
  Bball.resize(35,0);
  image(Bball, Ballpos.x,Ballpos.y);
}
 void ballgo() { //makes the ball move
    Ballpos.add(velocity.mult(direction));
  }
  
  void balledges () { //collides with edges
    if((Ballpos.x+17.5) >= width || (Ballpos.x-17.5) < 0) {
      velocity.x = velocity.x* -1;
    }
     if((Ballpos.y+17.5) >= height || (Ballpos.y-17.5) < 0) {
      velocity.y = velocity.y* -1;
  }

}
}
