class Missile
{
  float X, Y;
  float xSpeed, ySpeed;
  boolean active;
  int target;
  
  public Missile()
  {
    xSpeed = 0;
    ySpeed = -4;
    if(chargingLeftMissile)
      X = mouseX-30;
    else
      X = mouseX+30;
    //chargingLeftMissile = !chargingLeftMissile;
    Y = height - 45;
    active = true;
    
    target = int( random( activeFaces ) );
  }
  
  void moveAndDrawMissile()
  {
    noStroke();
    fill( random(100,255), random(100), 0 );
    ellipse(X,Y,15,15);
    
    if(faces[target].destroyed)
      target = int( random( activeFaces ) );
    
    if( X < faces[target].X )
      xSpeed+=0.2+(missileBonus*.01);
    else
      xSpeed-=0.2+(missileBonus*.01);
    
    if( Y < faces[target].Y )
      ySpeed+=0.05+(missileBonus*.01);
    else
      ySpeed-=0.05+(missileBonus*.01);
    
    if(xSpeed > 6)
      xSpeed = 6;
    if(xSpeed < -6)
      xSpeed = -6;
    if(ySpeed > 8)
      ySpeed = 8;
    if(ySpeed < -8)
      ySpeed = -8;
      
    X+=xSpeed;
    Y+=ySpeed;
    
    fill( 105,125,170);
    ellipse(X,Y,15,15);
  }
}
