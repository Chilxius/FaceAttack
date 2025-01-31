/*####################*\
*  Face Attack Game!!  *
# By: Bennett Ritchie  #
#   and his classes    #
#                      #
# Many appologies for  #
# the poorly documented#
# code. I get sloppy   #
* when I code quickly, *
\*####################*/


/**********************************\
* Use mouse to move your ship      *
* and left click to shoot the      *
* attacking faces. Hold down       *
* 'f' to charge your beam weapon.  *
* Orange powerups increase your    *
* main gun's power, pink powerups  *
* improve your charged beam, and   *
* purple improves your seeker      *
* missiles.                        *
* Every face that gets by you      *
* will steal one of your cookies.  *
*                                  *
* Beware of Cookie-Dog.            *
\**********************************/

//For Background, which will be black/purple with stars
int starCount = 500;
float star[][] = new float[2][starCount];
float red,blue;
boolean redUp,blueUp;

//For the enemy faces, which will grow more numerous as the game goes on
int faceCount = 100; 
int activeFaces = 1;
int activeShot = 0;
Face faces[] = new Face[faceCount];
int enemyShotCounter = 0;
int randomFace=0;
float rotation;
float faceRed = 255, faceGreen = 255, faceBlue = 255;
boolean rUp, gUp, bUp;

//Player's main shots
int shotsAllowed = 100;
Shot shots[] = new Shot[shotsAllowed];
float shotChargeCounter = 0;
float shotRefilBonus = 0;
int chargedShots=1;
int maxShots=2;

//Player's missiles
Missile missiles[];
boolean chargingLeftMissile = true;
boolean missilesActive = false;
float missileBonus = 0, missileCountDown = 500;

//This is for the charge beam. Sorry for the confusing names.
float chargeRecharge = 100;
float maxChargeSize = 70;
float chargeShotSize = 0;
float chargeShotX;
float chargeSpeedBonus = 0;

//Game data
int score = 0;
boolean gameOver = false;
boolean paused = false;
boolean charging = false;

//For powerups that faces drop
int powerupChance;
Powerup power;

//For Cookie-Dog
Boss doggo;

//For the 'treasures'
int maxTreasures = 22;
int treasureCount = maxTreasures;
color [] treasCol = new color[treasureCount];
float boomCount[] = new float [maxTreasures];
PImage cookie;
int cookieSpace;

//Variables for student images
int ballColor = 0; //For pokeball
float size = 150; //For ghost nebula thing
float scale = 0.3; //For snowman grenade
PImage bee, panda, edame;

void setup()
{
  fullScreen();
  //size(1100,900); 
  for(int i = 0; i < faceCount; i++)
    faces[i] = new Face(random(width),-150);
  for(int i = 0; i < shots.length; i++)
    shots[i] = new Shot();
  for(int i = 0; i < starCount; i++)
  {
    star[0][i] = random(width);
    star[1][i] = random(height);
  }
  for(int i = 0; i < treasureCount; i++)
  {
    treasCol[i] = color(random(0,175),random(0,175),random(0,175));
    boomCount[i] = 0;
  }
  red = random(35);
  blue = min(red,random(70));
  redUp=blueUp=true;
  textSize(30);
  
  //Missiles
  missiles = new Missile[10];
  for(int i = 0; i < missiles.length; i++)
  {
    missiles[i] = new Missile();
    missiles[i].active = false;
  }
  
  power = new Powerup(0,0,0);
  powerupChance = 1;
  
  doggo = new Boss();
  
  cookieSpace = width/maxTreasures;
  cookie = loadImage("cookie.png");
  cookie.resize(int(cookieSpace*0.8),0);
  imageMode(CENTER);
  
  bee = loadImage("bee.png");
  panda = loadImage("panda.png");
  edame = loadImage("edame.png"); edame.resize(200,0);
}

void draw()
{
  rectMode(CORNER);
  textAlign(LEFT);
  if(treasureCount <= 0) //End game
  {
    gameOver = true;
  }
    
  background(min(red,blue),0,blue);
  cycleBackground();
  drawStars();
  
  if(!doggo.active && doggo.bossCounter < 0)
    doggo.active=true;
  if(doggo.active)
  {
    doggo.drawBoss();
    doggo.moveBoss();
          
    if(doggo.left.active)
    {
      doggo.left.moveBossShot(mouseX);
      doggo.left.drawBossShot();
      if(dist(doggo.left.X,doggo.left.Y,mouseX,height-50) < 30)
      {
        treasureCount-=3;
        doggo.left.active=false;
      }
    } 
    if(doggo.right.active)
    {
      doggo.right.moveBossShot(mouseX);
      doggo.right.drawBossShot();
      if(dist(doggo.right.X,doggo.right.Y,mouseX,height-50) < 30)
      {
        treasureCount-=3;
        doggo.right.active=false;
      }
    }
  }
  for(int i = 0; i < activeFaces; i++)
  {
    if(faces[i].moveDown()) //returns true if made it past the ship
      treasureCount--;
    faces[i].drawFace();
  }
  textAlign(LEFT);
  
  //Missiles
  for(int i = 0; i < missiles.length; i++)
    if(missiles[i].active)
      missiles[i].moveAndDrawMissile();
  chargeMissiles();
  detectMissileHits();
  
  if(!gameOver)
    enemyShotCounter++;
  if( enemyShotCounter>=100-(activeFaces*2) )
  {
    randomFace = int(random(activeFaces));
    if(!faces[randomFace].destroyed)
    {
      faces[randomFace].shoot();
      enemyShotCounter = 0;
    }
    else
      enemyShotCounter--;
  }
  for(int i = 0; i < activeFaces; i++)
  {
    if(faces[i].shot.active)
    {
      faces[i].shot.moveShot();
      faces[i].shot.drawShot();
    }
    
    if( dist(faces[i].shot.X,faces[i].shot.Y,mouseX,height-50) < 30 && faces[i].shot.active )
    {
      /*textSize(50);
      text("GAME OVER",width/3,height/2);
      noLoop();
      gameOver = true;
      paused = true;*/
      treasureCount-=3;
      faces[i].shot.active = false;
    }
  }
  
  if(!gameOver)
  {
    for(int i = 0; i < shots.length; i++)
    {
      if(shots[i].active)
      {
        shots[i].drawShot();
        shots[i].moveShot();
        
        //Shots against boss
        if(doggo.health > 0 && dist(doggo.X,doggo.Y,shots[i].X,shots[i].Y)<125)
        {
          doggo.takeDamage();
          shots[i].active=false;
        }
        
        for(int j = 0; j < activeFaces; j++)
        {
          if( !faces[j].destroyed && shots[i].hitScored( faces[j].X, faces[j].Y ) )
          {
            faces[j].destroyed=true;
            shots[i].active=false;
            score += 10;
            doggo.bossCounter -=10;
            if(!power.active)
              powerupChance--;
            if(powerupChance<=0)
            {
              powerupChance=int(random(10,15+activeFaces));
              int choice = int(random(3));
              if(choice==2)
                power = new MissilePowerup(faces[j].X,faces[j].Y,3);
              else if(choice==1)
                power = new ShotPowerup(faces[j].X,faces[j].Y,3);
              else
                power = new BeamPowerup(faces[j].X,faces[j].Y,3);
              power.activate();
            }
          }
        }
      }
    }
  }
  fill(255);
  textSize(20);
  text("Score: " + score,30,30);
  
  if(power.active)
  {
    power.drawPowerup();
    power.movePowerup();
    if(dist(power.X,power.Y,mouseX,height-50)<30)
    {
      if(power.collect()==0) //shot
      {
        maxShots++;
        shotRefilBonus+=0.1;
      }
      else if(power.collect()==2) //missile
      {
        missileBonus++;
      }
      else //beam
      {
        chargeSpeedBonus+=0.15;
        maxChargeSize+=maxChargeSize/12;
      }
      powerupChance=int(random(10,20+activeFaces));
    }
    else if(power.Y>height) //Get a new powerup quickly if they miss it.
    {
      powerupChance=5;
      power.active=false;
    }
  }
  
  if(!gameOver)
  {
    chargeShot();
    drawShotHud();
    drawShip();
    if(chargeRecharge<100)
    {
      chargeRecharge+=.5;
      if(chargeRecharge<15)
      {
        drawChargedBeam();
        for(int i = 0; i < activeFaces; i++)
        {
          if(dist(faces[i].X,0,chargeShotX,0)<chargeShotSize)
          {
            if(!faces[i].destroyed)
            {
              faces[i].destroyed=true;
              score+=10;
              doggo.bossCounter -= 10;
              if(!power.active)
                powerupChance--;
            }
          }
          if(dist(faces[i].shot.X,0,chargeShotX,0)<chargeShotSize)
          {
            if(faces[i].shot.active)
            {
              faces[i].shot.active=false;
              score+=3;
              doggo.bossCounter -= 3;
            }
          }
          //Beam against boss
          if(doggo.health > 0 && doggo.canTakeBeamDamage && dist(doggo.X,0,chargeShotX,0)<125)
          {
            doggo.takeDamage();
            doggo.canTakeBeamDamage=false;
          }
        }
      }
      else if(chargeRecharge==20)
      {
        chargeShotSize=0;
        doggo.canTakeBeamDamage=true;
      }
    }
  }
  
  //May work on this formula
  if((score/10 > (activeFaces-1)*(activeFaces-1)
  ||  score/10 > activeFaces*activeFaces) //for first trigger
  &&  activeFaces < faceCount)
    activeFaces++;
    
  drawTreasures();
}

void drawTreasures()
{
  for(int i = 0; i < maxTreasures; i++)
  {
    if(i < treasureCount)
    {
      translate((cookieSpace/2)+i*(cookieSpace),height);
      rotate(1.3*i);
      image(cookie,0,0);
      rotate(-1.3*i);
      translate(-((cookieSpace/2)+i*(cookieSpace)),-height);
    }
    else
      drawExplosion(i);
  }
}

void cycleBackground()
{
  //Background
  if(redUp)
    red+=0.02;
  else
    red-=0.03;
  if(blueUp)
    blue+=0.03;
  else
    blue-=0.02;
  
  if(blue>90)
    blueUp=false;
  if(blue<=0)
    blueUp=true;
  if(red>30)
    redUp=false;
  if(red<=0)
    redUp=true;
    
  //Faces
  if(rUp)
    faceRed+=0.5;
  else
    faceRed-=0.6;
  if(gUp)
    faceGreen+=0.4;
  else
    faceGreen-=0.7;
  if(bUp)
    faceBlue+=0.8;
  else
    faceBlue-=0.3;
    
  if( faceRed > 255 )   rUp = false;
  if( faceGreen > 255 ) gUp = false;
  if( faceBlue > 255 )  bUp = false;
  if( faceRed < 0 )   rUp = true;
  if( faceGreen < 0 ) gUp = true;
  if( faceBlue < 0 )  bUp = true;

}

void drawStars()
{
  fill(250,200,50);
  noStroke();
  for(int i = 0; i < starCount; i++)
  {
    if(i%10==0) //closer star
    {
      circle(star[0][i],star[1][i],5);
      star[1][i]+=0.06*activeFaces;
    }
    else
    {
      circle(star[0][i],star[1][i],3);
      star[1][i]+=0.03*activeFaces;
    }
    
    if( star[1][i] > height )
    {
      star[0][i] = random(width);
      star[1][i] = -5;
    }
  }
}

void chargeShot() //charging normal shots - bad name I'm sorry
{
  if(shotChargeCounter<100)
    shotChargeCounter+=1+shotRefilBonus;
  if(shotChargeCounter>=100 && chargedShots < maxShots)
  {
    shotChargeCounter=0;
    chargedShots++;
  }
}

void drawChargedBeam()
{
  fill(random(255),random(255),0);
  noStroke();
  rect(chargeShotX-chargeShotSize/2,-chargeShotSize,chargeShotSize,height-80+chargeShotSize,chargeShotSize);
}

void drawShotHud()
{
  textSize(16);
  fill(255);
  text("SEEKER MISSILE",30,height-110);
  text("BEAM CANNON",30,height-70);
  text("LASER GUN",30,height-30);
  textSize(12);
  text(int(missileBonus),15,height-128);
  text(int(chargeSpeedBonus*100/15),15,height-88);
  text(int(maxShots),15,height-48);
  stroke(230);
  strokeWeight(2);
  fill(0,0,50);
  rect(30,height-60,100,15);
  rect(30,height-100,100,15);
  rect(30,height-140,100,15);
  noStroke();
  fill(shotChargeCounter*2.5,shotChargeCounter*1.5,0);
  rect(31,height-59,shotChargeCounter-1,14);
  fill(chargeRecharge*2.5,0,chargeRecharge*1.5);
  rect(31,height-99,chargeRecharge-1,14);
  fill(0,255-missileCountDown/4,255-missileCountDown/2);
  rect(31,height-139,100-missileCountDown/5,14);
  
  fill(250,150,0);
  for(int i = 0; i < chargedShots; i++)
  {
    ellipse(153+i*35,height-45,27,27);
  }
}

void drawShip()
{
  //Layton L
  noStroke();fill(180);rect(mouseX-38, height-50+2.5, 5, 40);rect(mouseX-33, height-50+17.5, 5, 15);rect(mouseX-28, height-50+12.5, 5, 15);rect(mouseX-23, height-50-17.5, 5, 40);rect(mouseX-18, height-50+2.5, 5, 30);rect(mouseX-13, height-50-7, 5, 30);rect(mouseX-8, height-50-22.5, 5, 50);rect(mouseX-3, height-50-32.5, 5, 70);rect(mouseX+2, height-50-22.5, 5, 50);rect(mouseX+6.5, height-50-7.5, 5, 30);rect(mouseX+11, height-50+2.5, 5, 30);rect(mouseX+16, height-50-17.5, 5, 40);rect(mouseX+21, height-50+12.5, 5, 15);rect(mouseX+26, height-50+17.5, 5, 15);rect(mouseX+31, height-50+2.5, 5, 40);fill(255, 0, 0);rect(mouseX-38, height-50-7.5, 5, 10);rect(mouseX-23, height-50-17.5, 5, 10);rect(mouseX-8, height-50+2.5, 5, 10);rect(mouseX-13, height-50+17.5, 5, 15);rect(mouseX-18, height-50+22.5, 5, 10);fill(0, 0, 200);square(mouseX-23, height-50+2.5, 5);square(mouseX-18, height-50-2.5, 5);fill(255, 0, 0);rect(mouseX+31, height-50-7.5, 5, 10);rect(mouseX+16, height-50-17.5, 5, 10);rect(mouseX-3, height-50-2.5, 5, 10);rect(mouseX+2, height-50+2.5, 5, 10);rect(mouseX+6, height-50+17.5, 5, 15);rect(mouseX+11, height-50+22.5, 5, 10);fill(0, 0, 200);square(mouseX+16, height-50+2.5, 5);square(mouseX+11, height-50-2.5, 5);
  
  /*
  fill(mouseX/4,255-(mouseX-width/2),mouseY/4);
  triangle(mouseX,height-75,mouseX-25,height-25,mouseX+25,height-25);
  if(missileBonus>0)
  {
    quad(mouseX-30-missileBonus/2,height-45+5+missileBonus,  mouseX-30-missileBonus/2+5+missileBonus,height-45,  mouseX-30-missileBonus/2,height-45-5-missileBonus,  mouseX-30-missileBonus/2-5-missileBonus,height-45);
    quad(mouseX+30+missileBonus/2,height-45+5+missileBonus,  mouseX+30+missileBonus/2+5+missileBonus,height-45,  mouseX+30+missileBonus/2,height-45-5-missileBonus,  mouseX+30+missileBonus/2-5-missileBonus,height-45);
    //circle(mouseX-30-missileBonus/2,height-45,10+missileBonus);
    //circle(mouseX+30+missileBonus/2,height-45,10+missileBonus);
  }
  */
  
  if(charging)
  {
    if(chargeShotSize<maxChargeSize)
    {
      chargeShotSize+=.1+chargeSpeedBonus;
    }
    fill(random(255),random(255),0);
    ellipse(mouseX,height-70-(chargeShotSize/2),chargeShotSize,chargeShotSize);
  }
}

void chargeMissiles()
{
  if(!gameOver)
    missileCountDown-=missileBonus/2.0;
  if(missileCountDown<=0)
  {
    if(chargingLeftMissile && !missiles[0].active)
    {
      for(int i = 0; i < 5; i++)
        if( missileBonus > i*4 && !missiles[i*2].active )
        {
          missiles[i*2] = new Missile();
          missiles[i*2].xSpeed -= i;
        }
      missileCountDown = 500;
      chargingLeftMissile = false;
    }
    else if(!chargingLeftMissile && !missiles[1].active)
    {
      for(int i = 0; i < 5; i++)
        if( missileBonus > i*4 && !missiles[i*2+1].active )
        {
          missiles[i*2+1] = new Missile();
          missiles[i*2+1].xSpeed += i;
        }
      missileCountDown = 500;
      chargingLeftMissile = true;
    }
    else
      missileCountDown=0;
  }   
}

void detectMissileHits()
{
  for( int i = 0; i < faceCount; i++)
  {
    for( int j = 0; j < missiles.length; j++ )
    {
      if( missiles[j].active && dist( missiles[j].X, missiles[j].Y, faces[i].X, faces[i].Y ) < 75 && !faces[i].destroyed )
      {
        faces[i].destroyed=true;
        missiles[j].active=false;
        score += 10;
        doggo.bossCounter -=10;
        if(!power.active)
          powerupChance--;
        if(powerupChance<=0)
        {
          powerupChance=int(random(10,15+activeFaces));
          int choice = int(random(3));
          if(choice==2)
            power = new MissilePowerup(faces[j].X,faces[j].Y,3);
          else if(choice==1)
            power = new ShotPowerup(faces[j].X,faces[j].Y,3);
          else
            power = new BeamPowerup(faces[j].X,faces[j].Y,3);
          power.activate();
        }
      }
    }
  }
}

void resetFaces()
{
  for(int i = 0; i < activeFaces; i++)
    faces[i].resetFace();
  for(int i = 0; i < shots.length; i++)
    shots[i] = new Shot();
  textSize(30);
}

public void drawExplosion( int index )
{
  if(boomCount[index]<100)
  {
    noStroke();
    fill(255,100+boomCount[index],0,250-(2.5*boomCount[index]));
    circle( (cookieSpace/2)+index*(cookieSpace),height,boomCount[index]);
    boomCount[index]++;
  }
}

void mousePressed()
{
  if(chargedShots>0 && !charging)
  {
    chargedShots--;
    if(maxShots<10)
    {
      shots[activeShot].shoot(mouseX);
      activeShot++;
      if(activeShot>=shotsAllowed)
        activeShot = 0;
    }
    else if(maxShots <20)
    {
      shots[activeShot].shoot(mouseX-20);
      activeShot++;if(activeShot>=shotsAllowed)activeShot = 0;
      shots[activeShot].shoot(mouseX+20);
      activeShot++;if(activeShot>=shotsAllowed)activeShot = 0;
    }
    else
    {
      shots[activeShot].shoot(mouseX-20);
      activeShot++;if(activeShot>=shotsAllowed)activeShot = 0;
      shots[activeShot].shoot(mouseX);
      activeShot++;if(activeShot>=shotsAllowed)activeShot = 0;
      shots[activeShot].shoot(mouseX+20);
      activeShot++;if(activeShot>=shotsAllowed)activeShot = 0;
    }
  }
  //faces[0].shoot(); //for testing
  //doggo.health--;
}

void keyPressed()
{
  if(key == 'f' && chargeRecharge == 100)
    charging=true;
  
  if(key == ' ')
  {
    //if(gameOver)
    //{
    //  gameOver = false;
    //  paused = false;
    //  resetFaces();
    //  loop();
    //}
    if(paused)
    {
      paused = false;
      loop();
    }
    else
    {
      paused = true;
      noLoop();
    }
  }
  if(key == ' ' && !gameOver);
}

void keyReleased()
{
  if(key == 'f')
  {
    if(charging)
    {
      charging=false;
      chargeRecharge = 0;
      chargeShotX=mouseX;
    }
  }
}

void printSpeeds() //for testing
{
  for(int i = 0; i < faceCount; i++)
  {
    text("Face " + i + ": " + faces[i].speed,30,50+i*50);
  }
}
