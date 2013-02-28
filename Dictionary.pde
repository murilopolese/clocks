class Dictionary
{ 
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

