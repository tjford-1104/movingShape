Shape tria;
Shape tuff;
Shape abc;
Shape tri;

void setup() {
  size(800, 700);
  tria = new Shape(300, 400, 50, 30, 0);
  tuff = new Shape(700, 600, 100, 100, 0);
  abc = new Shape(400, 350, 40, 30, 1);
  tri = new Shape(0, 50, 7, 5, 2);
} 

void draw () { 
  background(0);
  tria.display(); 
  tuff.display();
  abc.display();
  tuff.update();
  tria.update();
  abc.update();
  tri.display();
  tri.update();
}

void drawMovingCircleA() {
  background(128);
  fill(#0C9503);
  ellipse(circlexa, circleya, 20, 20); 

  circlexa += xvel;
  circleya += yvel;

  if (circlexa >= 800)
  {
    circlexa = 0;
    circleya = 0; 
    circlexb = 800;
    circleyb = 0;
  }
} 

void drawMovingCircleB() {
  fill(#0C9503);
  ellipse(circlexb, circleyb, 20, 20); 

  circlexb -= xvel;
  circleyb += yvel;
} 

void drawMovingCircleC() {
  fill(#0C9503);
  ellipse(circlexc, circleyc, 20, 20); 

  circlexc += xvel;
  circleyc -= yvel;

  if (circlexc >= 800)
  {
    circlexc = 0;
    circleyc = 700;
    circlexd = 800;
    circleyd = 700;
  }
} 

void drawMovingCircleD() {
  fill(#0C9503);
  ellipse(circlexd, circleyd, 20, 20); 

  circlexd -= xvel;
  circleyd -= yvel;
}

void drawMovingTriangleA() {
  fill(#86F6FF);
  triangle(trix1a, triy1a, trix2a, triy2a, trix3a, triy3a); 



  if (trix2a < 400)
  {
    trix1a += yvel;
    trix2a += yvel;
    trix3a += yvel;
  }

  if (trix2a == 400) {
    trix1a = 400-28;
    trix2a = 400;
    trix3a = 400+28;
    triy1a += yvel;
    triy2a += yvel;
    triy3a += yvel;
  }

  if (triy3a > 700) {
    trix1a = 0;
    triy1a = 55;
    trix2a = 28;
    triy2a = 0;
    trix3a = 56;
    triy3a = 55;
    trix1b = 800-56;
    triy1b = 700-55;
    trix2b = 800-28;
    triy2b = 700;
    trix3b = 800;
    triy3b = 700-55;
  }
}

void drawMovingTriangleB() {
  fill(#86F6FF);
  triangle(trix1b, triy1b, trix2b, triy2b, trix3b, triy3b); 

  if (trix2b > 400)
  {
    trix1b -= yvel;
    trix2b -= yvel;
    trix3b -= yvel;
  }

  if (trix2b <= 400 && triy2b < 800) {
    trix1b = 400-28;
    trix2b = 400;
    trix3b = 400+28;
    triy1b -= yvel;
    triy2b -= yvel;
    triy3b -= yvel;
  }
}

void drawMovingTriangleC() {
  triangle(trix1c, triy1c, trix2c, triy2c, trix3c, triy3c); 

  if (triy2c > 350+54/2)
  {
    triy1c -= yvel;
    triy2c -= yvel;
    triy3c -= yvel;
  }

  if (triy2c <= 350+54/2 ) {
    trix1c -= xvel;
    trix2c -= xvel;
    trix3c -= xvel;
    triy1c = 350-54/2;
    triy2c = 350+54/2;
    triy3c = 350-54/2;
  }

  if (triy2c <= 350+54/2 && trix1c==0) {
    trix1c = 800-56;
    triy1c = 700-55;
    trix2c = 800-28;
    triy2c = 700;
    trix3c = 800;
    triy3c = 700-55;
    trix1d = 0;
    triy1d = 55;
    trix2d = 28;
    triy2d = 0;
    trix3d = 56;
    triy3d = 55;
  }
}

void drawMovingTriangleD() {
  triangle(trix1d, triy1d, trix2d, triy2d, trix3d, triy3d); 

  if (triy2d < 350+54/2)
  {
    triy1d += yvel;
    triy2d += yvel;
    triy3d += yvel;
  }

  if (triy2c <= 350+54/2 ) {
    trix1d += xvel;
    trix2d += xvel;
    trix3d += xvel;
    triy1d = 350+54/2;
    triy2d = 350-54/2;
    triy3d = 350+54/2;
  }
}

void drawMovingSquareA() {
  fill(#8130ED);
  square(sqxa, sqya, 55);

  sqxa += xvel;

  if (sqxa >= 400-54/2) {
    sqxa = 400-54/2;
    sqya -= yvel;
  }

  if (sqxa >= 400-54/2 && sqya < 0) {
    sqxa = 0;
    sqya = 350-(54/2);
    sqxb = 800-55;
    sqyb = 350-(54/2);
  }
}

void drawMovingSquareB() {
  square(sqxb, sqyb, 55);

  sqxb -= xvel;

  if (sqxb <= 400-54/2) {
    sqxb = 400-54/2;
    sqyb += yvel;
  }
}

void drawMovingSquareC() {
  square(sqxc, sqyc, 55);

  sqyc += yvel;

  if (sqyc >= 350-(54/2)) {
    sqyc = 350-(54/2);
    sqxc -= xvel;
  }
}

void drawMovingSquareD() {
  square(sqxd, sqyd, 55);

  sqyd -= yvel;

  if (sqyd <= 350-(54/2)) {
    sqyd = 350-(54/2);
    sqxd += xvel;
  }

  if (sqxd == 800-55) {
    sqxd = 400-54/2;
    sqyd = 700-55;
    sqxc = 400-54/2;
    sqyc = 0;
  }
}
