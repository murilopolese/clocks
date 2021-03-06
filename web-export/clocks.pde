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
  Clock(PVector pos, float hour, float min, float size)
  {
    this.pos = pos;
    this.hourDegree = hour;
    this.minDegree = min;
    this.size = size;
  }
  void stepHour()
  {
    this.hourDegree++;
  }
  void stepMin()
  {
    this.minDegree+=2;
  }
  void render()
  {
    strokeWeight(3);
    // Draw hour arrow
    line(
    this.pos.x, 
    this.pos.y,
    this.pos.x+((this.size*0.7)*cos(radians(this.hourDegree))), 
    this.pos.y+((this.size*0.7)*sin(radians(this.hourDegree)))
      );
    // Draw minute arrow
    line(
    this.pos.x, 
    this.pos.y, 
    this.pos.x+((this.size*0.9)*cos(radians(this.minDegree))), 
    this.pos.y+((this.size*0.9)*sin(radians(this.minDegree)))
      );
  }
}

class Dictionary
{ 
  PVector[][] empty()
  {
    PVector[][] m = new PVector[50][30];
    return m;
  }
  PVector[][] zero(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(90, 270);
    m[x+1][y+1] = new PVector(0, 90);
    m[x+2][y+1] = new PVector(90, 180);
    m[x+3][y+1] = new PVector(90, 270);
    // Third line
    m[x+0][y+2] = new PVector(90, 270);
    m[x+1][y+2] = new PVector(90, 270);
    m[x+2][y+2] = new PVector(270, 90);
    m[x+3][y+2] = new PVector(90, 270);
    // Fourth line
    m[x+0][y+3] = new PVector(90, 270);
    m[x+1][y+3] = new PVector(90, 270);
    m[x+2][y+3] = new PVector(270, 90);
    m[x+3][y+3] = new PVector(90, 270);
    // Fifth line
    m[x+0][y+4] = new PVector(90, 270);
    m[x+1][y+4] = new PVector(0, 270);
    m[x+2][y+4] = new PVector(270, 180);
    m[x+3][y+4] = new PVector(90, 270);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] one(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 90);
    //m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(0, 270);
    m[x+1][y+1] = new PVector(180, 90);
    m[x+2][y+1] = new PVector(90, 270);
    //m[x+3][y+1] = new PVector(90, 270);
    // Third line
    //m[x+0][y+2] = new PVector(90, 270);
    m[x+1][y+2] = new PVector(90, 270);
    m[x+2][y+2] = new PVector(270, 90);
    //m[x+3][y+2] = new PVector(90, 270);
    // Fourth line
    //m[x+0][y+3] = new PVector(90, 270);
    m[x+1][y+3] = new PVector(90, 270);
    m[x+2][y+3] = new PVector(270, 90);
    //m[x+3][y+3] = new PVector(90, 270);
    // Fifth line
    m[x+0][y+4] = new PVector(0, 90);
    m[x+1][y+4] = new PVector(180, 270);
    m[x+2][y+4] = new PVector(270, 0);
    m[x+3][y+4] = new PVector(90, 180);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] two(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(0, 270);
    m[x+1][y+1] = new PVector(180, 0);
    m[x+2][y+1] = new PVector(180, 90);
    m[x+3][y+1] = new PVector(90, 270);
    // Third line
    m[x+0][y+2] = new PVector(0, 90);
    m[x+1][y+2] = new PVector(0, 180);
    m[x+2][y+2] = new PVector(270, 180);
    m[x+3][y+2] = new PVector(90, 270);
    // Fourth line
    m[x+0][y+3] = new PVector(270, 90);
    m[x+1][y+3] = new PVector(90, 0);
    m[x+2][y+3] = new PVector(180, 0);
    m[x+3][y+3] = new PVector(270, 180);
    // Fifth line
    m[x+0][y+4] = new PVector(270, 90);
    m[x+1][y+4] = new PVector(270, 0);
    m[x+2][y+4] = new PVector(180, 0);
    m[x+3][y+4] = new PVector(180, 90);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }

  PVector[][] three(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(0, 270);
    m[x+1][y+1] = new PVector(180, 0);
    m[x+2][y+1] = new PVector(180, 90);
    m[x+3][y+1] = new PVector(90, 270);
    // Third line
    m[x+0][y+2] = new PVector(0, 90);
    m[x+1][y+2] = new PVector(0, 180);
    m[x+2][y+2] = new PVector(270, 180);
    m[x+3][y+2] = new PVector(90, 270);
    // Fourth line
    m[x+0][y+3] = new PVector(270, 0);
    m[x+1][y+3] = new PVector(180, 0);
    m[x+2][y+3] = new PVector(180, 90);
    m[x+3][y+3] = new PVector(270, 90);
    // Fifth line
    m[x+0][y+4] = new PVector(0, 90);
    m[x+1][y+4] = new PVector(180, 0);
    m[x+2][y+4] = new PVector(180, 270);
    m[x+3][y+4] = new PVector(270, 90);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] four(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 90);
    m[x+2][y+0] = new PVector(90, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(270, 90);
    m[x+1][y+1] = new PVector(270, 90);
    m[x+2][y+1] = new PVector(270, 90);
    m[x+3][y+1] = new PVector(270, 90);
    // Third line
    m[x+0][y+2] = new PVector(270, 90);
    m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(270, 180);
    m[x+3][y+2] = new PVector(90, 270);
    // Fourth line
    m[x+0][y+3] = new PVector(270, 0);
    m[x+1][y+3] = new PVector(180, 0);
    m[x+2][y+3] = new PVector(180, 90);
    m[x+3][y+3] = new PVector(270, 90);
    // Fifth line
    //m[x+0][y+4] = new PVector(0, 90);
    //m[x+1][y+4] = new PVector(180, 0);
    m[x+2][y+4] = new PVector(270, 90);
    m[x+3][y+4] = new PVector(270, 90);
    // Sixth line
    //m[x+0][y+5] = new PVector(270, 0);
    //m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(270, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] five(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(270, 90);
    m[x+1][y+1] = new PVector(90, 0);
    m[x+2][y+1] = new PVector(180, 0);
    m[x+3][y+1] = new PVector(270, 180);
    // Third line
    m[x+0][y+2] = new PVector(270, 90);
    m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(180, 0);
    m[x+3][y+2] = new PVector(180, 90);
    // Fourth line
    m[x+0][y+3] = new PVector(0, 270);
    m[x+1][y+3] = new PVector(180, 0);
    m[x+2][y+3] = new PVector(180, 90);
    m[x+3][y+3] = new PVector(90, 270);
    // Fifth line
    m[x+0][y+4] = new PVector(0, 90);
    m[x+1][y+4] = new PVector(0, 180);
    m[x+2][y+4] = new PVector(270, 180);
    m[x+3][y+4] = new PVector(90, 270);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] six(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(270, 90);
    m[x+1][y+1] = new PVector(0, 90);
    m[x+2][y+1] = new PVector(180, 0);
    m[x+3][y+1] = new PVector(270, 180);
    // Third line
    m[x+0][y+2] = new PVector(90, 270);
    m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(180, 0);
    m[x+3][y+2] = new PVector(180, 90);
    // Fourth line
    m[x+0][y+3] = new PVector(90, 270);
    m[x+1][y+3] = new PVector(0, 90);
    m[x+2][y+3] = new PVector(90, 180);
    m[x+3][y+3] = new PVector(90, 270);
    // Fifth line
    m[x+0][y+4] = new PVector(90, 270);
    m[x+1][y+4] = new PVector(0, 270);
    m[x+2][y+4] = new PVector(270, 180);
    m[x+3][y+4] = new PVector(90, 270);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(180, 270);
    return m;
  }
  PVector[][] seven(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(270, 0);
    m[x+1][y+1] = new PVector(180, 0);
    m[x+2][y+1] = new PVector(180, 90);
    m[x+3][y+1] = new PVector(270, 90);
    // Third line
    //m[x+0][y+2] = new PVector(90, 270);
    //m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(270, 90);
    m[x+3][y+2] = new PVector(270, 90);
    // Fourth line
    //m[x+0][y+3] = new PVector(90, 270);
    //m[x+1][y+3] = new PVector(0, 90);
    m[x+2][y+3] = new PVector(270, 90);
    m[x+3][y+3] = new PVector(270, 90);
    // Fifth line
    //m[x+0][y+4] = new PVector(90, 270);
    //m[x+1][y+4] = new PVector(0, 270);
    m[x+2][y+4] = new PVector(270, 90);
    m[x+3][y+4] = new PVector(270, 90);
    // Sixth line
    //m[x+0][y+5] = new PVector(270, 0);
    //m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(270, 0);
    m[x+3][y+5] = new PVector(270, 180);
    return m;
  }
  PVector[][] eight(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(90, 270);
    m[x+1][y+1] = new PVector(0, 90);
    m[x+2][y+1] = new PVector(90, 180);
    m[x+3][y+1] = new PVector(90, 270);
    // Third line
    m[x+0][y+2] = new PVector(270, 90);
    m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(270, 180);
    m[x+3][y+2] = new PVector(270, 90);
    // Fourth line
    m[x+0][y+3] = new PVector(270, 90);
    m[x+1][y+3] = new PVector(0, 90);
    m[x+2][y+3] = new PVector(180, 90);
    m[x+3][y+3] = new PVector(270, 90);
    // Fifth line
    m[x+0][y+4] = new PVector(270, 90);
    m[x+1][y+4] = new PVector(270, 0);
    m[x+2][y+4] = new PVector(270, 180);
    m[x+3][y+4] = new PVector(270, 90);
    // Sixth line
    m[x+0][y+5] = new PVector(270, 0);
    m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(180, 0);
    m[x+3][y+5] = new PVector(270, 180);
    return m;
  }
  PVector[][] nine(PVector pos)
  {
    PVector[][] m = new PVector[50][30];
    int x = int(pos.x);
    int y = int(pos.y);
    // First line
    m[x+0][y+0] = new PVector(90, 0);
    m[x+1][y+0] = new PVector(180, 0);
    m[x+2][y+0] = new PVector(180, 0);
    m[x+3][y+0] = new PVector(180, 90);
    // Second line
    m[x+0][y+1] = new PVector(90, 270);
    m[x+1][y+1] = new PVector(0, 90);
    m[x+2][y+1] = new PVector(90, 180);
    m[x+3][y+1] = new PVector(90, 270);
    // Third line
    m[x+0][y+2] = new PVector(270, 90);
    m[x+1][y+2] = new PVector(270, 0);
    m[x+2][y+2] = new PVector(270, 180);
    m[x+3][y+2] = new PVector(270, 90);
    // Fourth line
    m[x+0][y+3] = new PVector(270, 0);
    m[x+1][y+3] = new PVector(180,0);
    m[x+2][y+3] = new PVector(180, 90);
    m[x+3][y+3] = new PVector(270, 90);
    // Fifth line
    //m[x+0][y+4] = new PVector(90, 270);
    //m[x+1][y+4] = new PVector(0, 270);
    m[x+2][y+4] = new PVector(270, 90);
    m[x+3][y+4] = new PVector(270, 90);
    // Sixth line
    //m[x+0][y+5] = new PVector(270, 0);
    //m[x+1][y+5] = new PVector(180, 0);
    m[x+2][y+5] = new PVector(270, 0);
    m[x+3][y+5] = new PVector(270, 180);
    return m;
  }
}

class Panel
{
  Clock[][] c; // Clocks
  int w; // Width
  int h; // Height
  int s; // Clock size
  PVector pos;
  Dictionary d;
  ;

  ArrayList<PVector[][]> word = new ArrayList<PVector[][]>();

  Panel(int w, int h, PVector pos, int s)
  {
    this.w = w;
    this.h = h;
    this.pos = pos;
    this.s = s;
    this.c = this.setupClocks();
    this.d = new Dictionary();
    this.setupWord();
  }

  Clock[][] setupClocks()
  {
    Clock[][] tc = new Clock[this.w][this.h];
    for (int i = 0; i < tc.length; i++)
    {
      for (int j = 0; j < tc[0].length; j++)
      {
        tc[i][j] = new Clock();
        tc[i][j].size = this.s;
        tc[i][j].minDegree = 180+(i*10);
        tc[i][j].hourDegree = 0+(i*10);
        tc[i][j].pos = new PVector(
        tc[i][j].size+(i*(2*tc[i][j].size)), 
        tc[i][j].size+(j*(2*tc[i][j].size))
          );
      }
    }
    return tc;
  }

  void clearWord()
  {
    word.clear();
    this.word.add(d.empty());
    this.word.add(d.empty());
    this.word.add(d.empty());
    this.word.add(d.empty());
  }
  void setupWord()
  {
    word.clear();
    int h = hour();
    int h1 = int(h/10);
    int h2 = int(h%10);
    this.addCharacter(h1, new PVector(int(this.pos.x), int(this.pos.y)));
    this.addCharacter(h2, new PVector(int(this.pos.x+4), int(this.pos.y)));
    int m = minute();
    int m1 = int(m/10);
    int m2 = int(m%10);
    this.addCharacter(m1, new PVector(int(this.pos.x+8), int(this.pos.y)));
    this.addCharacter(m2, new PVector(int(this.pos.x+12), int(this.pos.y)));
  }

  void step()
  {    
    this.stepClocksPointer();
    this.stepClocksGeneral();
  }

  void stepClocksGeneral()
  {
    for (int i = 0; i < this.c.length; i++)
    {
      for (int j = 0; j < this.c[0].length; j++)
      {
        if (
        ((i<this.pos.x) || (i>(this.pos.x+15))) ||
          ((j<this.pos.y) || (j>(this.pos.y+5)))
          )
        {
          this.c[i][j].stepHour();
          this.c[i][j].stepMin();
          this.c[i][j].render();
        }
      }
    }
  }

  void stepClocksPointer()
  {
    for (int k = 0; k < word.size(); k++)
    {
      for (int i = int(this.pos.x)+(k*4); i < this.pos.x+(k*4)+4; i++)
      {
        for (int j = int(this.pos.y); j < this.pos.y+6; j++)
        {
          this.verifyCharacter(word.get(k)[i][j], c[i][j]);
        }
      }
    }
  }

  private void verifyCharacter(PVector cha, Clock clock)
  {
    if (cha != null)
    {
      this.verifyHour(clock, cha.x);
      this.verifyMin(clock, cha.y);
    }
    else
    {
      clock.stepHour();
      clock.stepMin();
    }
    clock.render();
  }

  private void verifyHour(Clock c, float d)
  {
    if ((c.hourDegree%360) != d)
    {
      c.stepHour();
    }
  }

  private void verifyMin(Clock c, float d)
  {
    if ((c.minDegree%360) != d)
    {
      c.stepMin();
    }
  }

  void addCharacter(int v, PVector pos)
  {
    switch(v)
    {
    case 0:
      word.add(d.zero(pos));
      break;
    case 1:
      word.add(d.one(pos));
      break;
    case 2:
      word.add(d.two(pos));
      break;
    case 3:
      word.add(d.three(pos));
      break;
    case 4:
      word.add(d.four(pos));
      break;
    case 5:
      word.add(d.five(pos));
      break;
    case 6:
      word.add(d.six(pos));
      break;
    case 7:
      word.add(d.seven(pos));
      break;
    case 8:
      word.add(d.eight(pos));
      break;
    case 9:
      word.add(d.nine(pos));
      break;
    default:
      break;
    }
  }
}


