PGraphics pg;

void setup() {
  size( 416, 500 );
  fill( 0 );
  noStroke();
  pg = createGraphics( 416, 500, P2D );
  
  rotate(-0.01);
  drawSquares();
}

void draw() {
}

void drawSquares() {
  background( 240 );
  pg.beginDraw();
    pg.background( 240 );
    for( int r = 2; r < 15; r++ ) {
      for( int c = 0; c < 28; c++ ) {
        int rand = (int)round(random(0,1));
        pg.noStroke();
        if( rand == 1 ) {
          pg.fill( 63 );
        } else {
          pg.noFill();
        }
        pg.rect( r*26, c*26, 26, 26 );
      }
    }
  pg.endDraw();

  image(pg, 0, 0);
}

void mousePressed() {
  rotate(-0.01);
  drawSquares();
}