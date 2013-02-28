Clock[][] c = new Clock[20][12];

void setup() {
  size(800, 500);
  background(255);
  smooth();
  for (int i = 0; i < c.length; i++)
  {
    for (int j = 0; j < c[0].length; j++)
    {
      c[i][j] = new Clock();
      c[i][j].size = 20;
      c[i][j].minDegree = 180+(i*10);
      c[i][j].hourDegree = 0+(i*10);
      c[i][j].pos = new PVector(
            c[i][j].size+(i*(2*c[i][j].size)), 
            c[i][j].size+(j*(2*c[i][j].size))
        );
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < c.length; i++)
  {
    for (int j = 0; j < c[0].length; j++)
    {
      c[i][j].step();
    }
  }
}

class Clock 
{
  float hourDegree;
  float minDegree;
  float size;
  PVector pos;
  Clock() 
  {
    this.hourDegree = 0;
    this.minDegree = 180;
    this.size = 100;
  };
  Clock(PVector pos, int hour, int min, float size)
  {
    this.pos = pos;
    this.hourDegree = hour;
    this.minDegree = min;
    this.size = size;
  }
  void step()
  {
    this.minDegree++;
    this.hourDegree++;
    this.render();
  }
  void render()
  {
    strokeWeight(3);
    // Draw hour arrow
    line(
    this.pos.x, 
    this.pos.y, 
    this.pos.x+((this.size*0.8)*cos(radians(this.hourDegree))), 
    this.pos.y+((this.size*0.8)*sin(radians(this.hourDegree)))
      );
    // Draw minute arrow
    line(
    this.pos.x, 
    this.pos.y, 
    this.pos.x+(this.size*cos(radians(this.minDegree))), 
    this.pos.y+(this.size*sin(radians(this.minDegree)))
      );
  }
}

class Panel
{
  Clock[][] c; // Clocks
  int w; // Width
  int h; // Height
  Panel(int w, int h)
  {
    this.w = w;
    this.h = h;
    //c = this.setup();
  }
}

