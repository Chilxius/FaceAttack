class ShotPowerup extends Powerup
{
   public ShotPowerup( float x, float y, float s )
   {
     super(x,y,s);
   }
   
   void drawPowerup()
   {
     stroke(0,255,0);
     strokeWeight(3);
     fill(250,150,0);
     circle(X,Y,25);
   }
   
   int collect()
   {
     active=false;
     return 0;
   }
}
