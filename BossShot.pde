//Wobbly Seeker Shots

class BossShot
{
  float X,Y,speed,maxSpeed;
  boolean active;
  
  public BossShot()
  {
    X=0;
    Y=0;
    speed=0;
    maxSpeed=3;
    active = false;
  }
  
  void shoot( float x, float y )
  {
    X=x;
    Y=y;
    active=true;
  }
  
  void activate()
  {
    active = true;
  }
  
  void moveBossShot( float x )
  {
    if(x>X && speed < maxSpeed)
      speed+=.3;
    else if( x<X && speed > -maxSpeed)
      speed-=.3;
    X+=speed;
    Y+=3;
    
    if(Y>height+15)
      active=false;
  }
  
  void drawBossShot()
  {
    fill(random(255),0,random(255));
    ellipse(X,Y,30,30);
  }
}
