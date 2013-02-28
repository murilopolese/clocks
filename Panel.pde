class Panel
{
  Clock[][] c; // Clocks
  int w; // Width
  int h; // Height
  int s; // Clock size
  Dictionary d = new Dictionary();

  Panel(int w, int h, int s)
  {
    this.w = w;
    this.h = h;
    this.s = s;
    this.c = this.setup();
  }

  Clock[][] setup()
  {
    Clock[][] tc = new Clock[this.w][this.h];
    for (int i = 0; i < tc.length-1; i++)
    {
      for (int j = 0; j < tc[0].length-1; j++)
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

  void step()
  {
    PVector[][] cha = d.two(new PVector(int(2), int(2)));
    for (int i = 0; i < c.length-1; i++)
    {
      for (int j = 0; j < c[0].length-1; j++)
      {
        if (cha[i][j] != null)
        {
          this.verifyHour(c[i][j], cha[i][j].x);
          this.verifyMin(c[i][j], cha[i][j].y);
        }
        else
        {
          this.c[i][j].stepHour();
          this.c[i][j].stepMin();
        }
        this.c[i][j].render();
      }
    }
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

