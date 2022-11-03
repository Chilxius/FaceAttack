//The player's shots.

class Shot
{
  float X,Y;
  boolean active;
  
  public Shot()
  {
    X=mouseX;
    Y=height-50;
    active=false;
  }
  
  void drawShot()
  {
    noStroke();
    fill(200,250,50,200);
    ellipse(X,Y,10,40);
  }
  
  void moveShot()
  {
    Y-=7;
    if(Y<0)
    {
      active=false;
    }
  }
  
  void shoot()
  {
    X=mouseX;
    Y=height-50;
    active=true;
  }
  
  public boolean hitScored( float faceX, float faceY )
  {
    if( dist( faceX, faceY, X, Y ) < 75 )
      return true;
    return false;
  }
}
