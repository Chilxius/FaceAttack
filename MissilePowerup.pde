class MissilePowerup extends Powerup
{
   public MissilePowerup( float x, float y, float s )
   {
     super(x,y,s);
   }
   
   void drawPowerup()
   {
     stroke(0,255,0);
     strokeWeight(3);
     fill(125,0,250);
     circle(X,Y,25);
   }
   
   int collect()
   {
     active=false;
     return 2;
   }

}
