
class Ball {
//initializing variables
  PVector Ballpos; //the balls position
  PVector velocity; //the balls velocity
  float speed;
  float gravity = .6; //gravity on the ball
  float angle = random(15,90);
  float v;
  float theta;

  Ball(float x, float y, float speed, float falling, float angle) {
    Ballpos = new PVector(x, y); // makes position pvector
    velocity = new PVector(speed*cos(angle), falling*cos(angle)); //makes velocity pvector
    theta = radians(angle);
    v =sqrt(1962*gravity/(sin(theta*2)));
    
  }

  void exist() { //vreates ball
    balledges();
    ballgo();
    make();
  }

  void make () { //draws ball
    image(Bball, Ballpos.x, Ballpos.y);
    Bball.resize(35, 0);
    image(Bball, Ballpos.x, Ballpos.y);
  }
  void ballgo() { //makes the ball move and be effetced by gravity
  velocity.y += gravity;
    Ballpos.add(velocity);
  }

  void balledges () { //collides with edges
    if ((Ballpos.x+17.5) >= width || (Ballpos.x-17.5) < 0) {
      velocity.x = velocity.x* -1;
    }
    if ((Ballpos.y+17.5) >= height || (Ballpos.y-17.5) < 0) {
      velocity.y = velocity.y* -1;
    }
  }
}
