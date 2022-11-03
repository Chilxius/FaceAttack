//Base class for the three different kinds of powerup

class Powerup
{
  float X,Y;
  float speed;
  boolean active;
  
  public Powerup( float x, float y, float s )
  {
    X=x;
    Y=y;
    speed=s;
    active=false;
  }
  
  void activate()
  {
    active=true;
  }
  
  int collect()
  {
    active=false;
    return 0;
  }
  
  void drawPowerup()
  {}
     
  void movePowerup()
  {
    Y+=speed;
    if(Y<0)
    active=false;
  }
}
