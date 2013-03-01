class Panel
{
  Clock[][] c; // Clocks
  int w; // Width
  int h; // Height
  int s; // Clock size
  PVector pos;
  Dictionary d = new Dictionary();

  ArrayList<PVector[][]> word = new ArrayList<PVector[][]>();

  Panel(int w, int h, PVector pos, int s)
  {
    this.w = w;
    this.h = h;
    this.pos = pos;
    this.s = s;
    this.c = this.setupClocks();
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

  void setupWord()
  {
    word.add(d.two(new PVector(int(this.pos.x), int(this.pos.y))));
    word.add(d.three(new PVector(int(this.pos.x+4), int(this.pos.y))));
    word.add(d.five(new PVector(int(this.pos.x+8), int(this.pos.y))));
    word.add(d.two(new PVector(int(this.pos.x+12), int(this.pos.y))));
  }

  void step()
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
    
    for(int i = 0; i < this.c.length; i++)
    {
      for (int j = 0; j < this.c[0].length; j++)
      {
        if(
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

  private void verifyCharacter(PVector cha, Clock clock)
  {
    if (cha != null)
    {
      this.verifyHour(clock, cha.x);
      this.verifyMin(clock, cha.y);
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
}

