//The dreaded Cookie-Dog

class Boss
{
  float X,Y,fade;
  int health, maxHealth, bossCounter;
  boolean active, movingRight,
  canTakeBeamDamage, fading;
  BossShot left,right;
  
  public Boss()
  {
    X = -100;
    Y = random(0,height*2/3);
    bossCounter = 500;
    fade = 100;
    maxHealth = health = 5;
    active = false;
    movingRight = true;
    canTakeBeamDamage=true;
    fading = false;
    left = new BossShot();
    right = new BossShot();
  }
  
  void reset()
  {
    active = false;
    movingRight = true;
    canTakeBeamDamage =true;
    fading = false;
    X = -100;
    Y = random(0,height*2/3);
    fade = 100;
    maxHealth++;
    health = maxHealth;
    bossCounter = maxHealth*100;
    left = new BossShot();
    right = new BossShot();
  }
  
  void drawBoss()
  {
    fill(170+((maxHealth-health)*10),170,170,fade*2.5);ellipse(X+0,Y+0,250,250);fill(0+((maxHealth-health)*10),0,0,fade*2.5);ellipse(X-105,Y+0,55,200);ellipse(X+105,Y+0,55,200);fill(255,255-((maxHealth-health)*10),255-((maxHealth-health)*10),fade*2.5);ellipse(X-50,Y-25,50,50);ellipse(X+50,Y-25,50,50);fill(0+((maxHealth-health)*10),0,0,fade*2.5);ellipse(X-50,Y-25,40,40);ellipse(X+50,Y-25,40,40);fill(255,255-((maxHealth-health)*10),255-((maxHealth-health)*10),fade*2.5);ellipse(X-40,Y-40,7.5,7.5);ellipse(X+60,Y-40,7.5,7.5);fill(0+((maxHealth-health)*10),0,0,fade*2.5);ellipse(X+0,Y+15,20,15);

    if(fading)
      fade--;
    if(fade<=0)
      reset();
  }
  
  void moveBoss()
  {
    if(movingRight)
      X+=(maxHealth+1)-health;
    else
      X-=(maxHealth+1)-health;
      
    if(X>width+150)
    {
      movingRight =false;
      Y = random(0,height*2/3);
    }
    if(X<-150)
    {
      movingRight =true;
      Y = random(0,height*2/3);
    }
    
    if(!left.active && X > width/4 && X < width/2 )
      left.shoot(X-50,Y-25);
      
    if(!right.active && X > width/2 && X < width*3/4 )
      right.shoot(X+50,Y-25);

  }
  
  void takeDamage()
  {
    score += 15;
    health--;
    if(health==0)
    {
      score += 100;
      fading=true;
      health=maxHealth+1;
    }
  }
}
