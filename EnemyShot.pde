//Basic nose-missiles

class EnemyShot
{
  float X,Y,speed;
  boolean active;
  
  public EnemyShot( float x, float y, float s )
  {
    X = x;
    Y = y;
    speed = s;
    active = false;
  }
  
  public void shoot(float x, float y)
  {
    X=x;
    Y=y;
    active = true;
  }
    
  public void drawShot()
  {
    noStroke();
    fill(255,0,0,50);
    ellipse(X,Y-10,15,15);
    ellipse(X,Y-17,17,17);
    ellipse(X,Y-24,20,20);
    fill(127);
    rect(X-7,Y-14,14,30);
    triangle(X-7,Y+15,X+7,Y+15,X,Y+25);
  }
  
  public void moveShot()
  {
    Y+=speed+(7-speed);
    if(Y>height+30)
      active=false;
  }
}
