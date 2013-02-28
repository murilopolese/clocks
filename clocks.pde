Panel p;
int clockSize = 20;

void setup() {
  size(1000, 600);
  background(255);
  smooth();
  p = new Panel(
    int(width/clockSize), 
    int(height/clockSize), 
    clockSize
  );
}

void draw() {
  background(255);
  p.step();
}

