Panel p;
int clockSize = 20;

void setup() {
  size(1000, 600);
  background(255);
  frameRate(30);
  smooth();
  p = new Panel(
    int(width/clockSize),
    int(height/clockSize),
    new PVector(4, 4),
    clockSize
  );
  p.setupWord();
}

void draw() {
  background(255);
  if(second() == 0)
  {
    p.setupWord();
  }
  if(second() == 50)
  {
    //p.clearWord();
  }
  p.step();
}
