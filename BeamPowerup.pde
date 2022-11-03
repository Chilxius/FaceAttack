class BeamPowerup extends Powerup
{
   public BeamPowerup( float x, float y, float s )
   {
     super(x,y,s);
   }
   
   void drawPowerup()
   {
     stroke(0,255,0);
     strokeWeight(3);
     fill(250,0,150);
     circle(X,Y,25);
   }
   
   int collect()
   {
     active=false;
     return 1; //false for beam
   }

}
