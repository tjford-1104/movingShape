//class = definition of supervariable
// this. + my. + self. means that this variable stands for itself
class Shape {
  int xpos;
  int ypos;
  int xvel;
  int yvel;
  int xsize;
  int ysize;
  int type;

  Shape(int xpos, int ypos, int xsize, int ysize, int type) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.xsize = xsize;
    this.ysize = ysize;
    this.type = type;
    this.xvel = 1;
    this.yvel = 1;
  } 

  void display() {
    if (type == 0) {
      ellipse(xpos, ypos, xsize, ysize);
    }
    if (type == 1) {
      rect(xpos, ypos, xsize, ysize);
    }
    if (type == 2) {
      triangle(xpos, ypos, xpos + 30, ypos - 50, xpos + 60, ypos);
    }
  }

  void update() {
    if (keyPressed) {
      if (key == 'd') {
        xpos += xvel;
      }
    }
    if (keyPressed) {
      if (key == 's') {
        ypos += yvel;
      }
    }
    if (keyPressed) {
      if (key == 'a') {
        xpos -= xvel;
      }
    }
    if (keyPressed) {
      if (key == 'w') {
        ypos -= yvel;
      }
    }
  }
}
