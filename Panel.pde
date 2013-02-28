class Panel
{
  Clock[][] c; // Clocks
  int w; // Width
  int h; // Height
  int s; // Clock size

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
    for (int i = 0; i < c.length-1; i++)
    {
      for (int j = 0; j < c[0].length-1; j++)
      {
        this.c[i][j].step();
      }
    }
  }
}

