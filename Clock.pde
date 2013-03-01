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
    this.minDegree++;
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

