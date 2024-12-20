//The game's enemies, which are faces drawn
//by my students and me.

//Edit the drawFace() method to add new faces.
//If they were using mouse X and mouse Y, change it to X and Y (find and replace)
//Edit the changeFace() method based on the faces available.

class Face
{
  float X,Y;
  float speed;
  boolean destroyed,goingRight;
  int boomCounter, faceChoice;
  float width1,height1; //for one of the faces' code
  EnemyShot shot;
  String creator = "";
  
  //For Maka'lyn's cookie
  int chipCount;
  float chipRotation[];
  float chipDist[];
  
  //For donut sprinkles
  int sprink[] = new int[13];
  
  //For harold's sans
  int character = (int)random(0,2);
  int papFace = (int)random(0,3);
  int sansFace = (int)random(0,3);
  
  public Face( float x, float y )
  {
    X = x;
    Y = y;
    speed = random(.5,2+activeFaces/10.0);
    destroyed = false;
    shot = new EnemyShot(X,Y,speed+(5-speed));
    goingRight = true;
    boomCounter = 0;
    faceChoice = changeFace();
    width1=175;
    height1=175;
    
  }
  
  public boolean moveDown()
  {
    if(!destroyed)
    {
      if(goingRight)
        X++;
      else
        X--;

      if(X>width)
        goingRight=false;
      if(X<0)
        goingRight=true;
      Y+=speed;
      if(Y>=height+100)
      {
        resetFace();
        return true;
      }
    }
    return false;
  }
  
  public void resetFace()
  {
    X = random(width);
    Y = -100;
    speed = random(.5,2);
    destroyed = false;
    boomCounter = 0;
    faceChoice = changeFace();
  }
  
  public void shoot()
  {
    if(!shot.active)
      shot.shoot(X,Y);
  }
  
  public void drawExplosion()
  {
    noStroke();
    fill(255,100+boomCounter,0,250-(2.5*boomCounter));
    circle(X,Y,boomCounter*2);
    boomCounter++;
    if(boomCounter==100)
      resetFace();
  }
  
  void drawEar() //for pig king
  {
    noStroke();
    fill(#013401);
    ellipse(X-250+131, Y-250+149, 25, 35);
    ellipse(X-250+193, Y-250+108, 27, 45);
  }

  void pickColor( int x )  //For donut
  {
    if(x==0)fill(60,100,255);
    if(x==1)fill(255,40,230);
    if(x==2)fill(100,0,200);
    if(x==3)fill(250,200,90);
    if(x==4)fill(0,200,50);
  }
  
  public int changeFace()
  {
    int choice = int(random(110));
    switch(choice)
    {
      case 0: creator = "Ja'Shawn Gilbert"; break;
      case 1: creator = "Erick Ortiz"; break;
      case 2: creator = "Jalon Shephard"; break;
      case 3: creator = "Josh Williams"; break;
      case 4: creator = "Josh Poppy"; break;
      case 5: creator = "Elisha Dollinger"; break;
      case 6: creator = "James M"; break;
      case 7: creator = "Jackson Crowder"; break;
      case 8: creator = "Dionte Palmer"; break;
      case 9: creator = "Omar Lee"; break;
      
      case 10: creator = "Oliver Hope"; break;
      case 11: creator = "Charles Brewer"; break;
      case 12: creator = "Averit Black"; break;
      case 13: creator = "Ethan Ashley"; break;
      case 14: creator = "Dea'von M"; break;
      case 15: creator = "Lena Querdo"; break;
      case 16: creator = "Josiah Byard"; break;
      case 17: creator = "Keylei Hicks"; break;
      case 18: creator = "Zack Johnson"; break;
      case 19: creator = "Sage Simpson"; break;
      
      case 20: creator = "Shayne Adams"; break;
      case 21: creator = ""; break;
      case 22: creator = "James Kirk"; break;
      case 23: creator = "Mr. Ritchie"; break;
      case 24: creator = "Logan Bevis"; break;
      case 25: creator = "Zane Tanner"; break;
      case 26: creator = "Kevin Tovar"; break;
      case 27: creator = "Avery Hogue"; break;
      case 28: creator = "Mr. Ritchie"; break;
      case 29: creator = "Josh Williams"; break;
      
      case 30: creator = "Riley Gill"; break;
      case 31: creator = "Jonathon Lewis"; break;
      case 32: creator = "Jamie Seigrist"; break;
      case 33: creator = "Shayne Castleberry"; break;
      case 34: creator = "Zach Morgan"; break;
      case 35: creator = "Peyton Harper"; break;
      case 36: creator = "Maalika Simmons"; break;
      case 37: creator = "Sage Simpson"; break;
      case 38: creator = "Ryan Avery"; break;
      case 39: creator = "Matthew Brown"; break;
      
      case 40: creator = "Xaine Cross"; break;
      case 41: creator = "Laila Howell"; break;
      case 42: creator = "Zach Johnson"; break;
      case 43: creator = "Shawn Hensley"; break;
      case 44: creator = "Spencer Benbrook"; break;
      case 45: creator = "Josh Williams"; break;
      case 46: creator = "Emory Reed"; break;
      case 47: creator = "Landon M"; break;
      case 48: creator = "Lance Hurst"; break;
      case 49: creator = "Kasey Fraley"; break;
      
      case 50: creator = "Gabby Dixon"; break;
      case 51: creator = "Katherine Knight"; break;
      case 52: creator = "Beth Hauk"; break;
      case 53: creator = "Zach Dugger"; break;
      case 54: creator = "Devin Rollason"; break;
      case 55: creator = "Kanon Canamore"; break;
      case 56: creator = "Cora Giddings"; break;
      case 57: creator = "Devin Osburn"; break;
      case 58: creator = "Lily Mann"; break;
      case 59: creator = "Rylee Osborne"; break;
 
      case 60: creator = "Jade Brown"; break;
      case 61: creator = "Gaston Fletcher"; break;
      case 62: creator = "Josh Williams"; break;
      case 63: creator = "Jacob Whittenburg"; break;
      case 64: creator = "Kyra Gleason"; break;
      case 65: creator = "Cora Franks"; break;
      case 66: creator = "Jackson Burch"; break;
      case 67: creator = "David Sherrill"; break;
      case 68: creator = "Reed Krablin"; break;
      case 69: creator = "Keshawn Thornton"; break;
 
      case 70: creator = "Sabra Morris"; break;
      case 71: creator = "Bryce Coleman"; break;
      case 72: creator = "Michaela Kahrig"; break;
      case 73: creator = "Owen Keathley"; break;
      case 74: creator = "Madelyn Scott"; break;
      case 75: creator = "Angel Flowers"; break;
      case 76: creator = "Valenzia Lenz"; break;
      case 77: creator = "Colton Amato"; break;
      case 78: creator = "Mariana Lopez"; break;
      case 79: creator = "Shane Whitehurst"; break;
 
      case 80: creator = "Zoey Rippeto"; break;
      case 81: creator = "Davion Sabbs"; break;
      case 82: creator = "Graham Stuart"; break;
      case 83: creator = "Imani Johnson"; break;
      case 84: creator = "Kya Flowers"; break;
      case 85: creator = "Izabelle Ashley"; break;
      case 86: creator = "Isabella Wallace"; break;
      case 87: creator = "Trey Parker"; break;
      case 88: creator = "Shayla Hibbs"; break;
      case 89: creator = "Alexia Christman"; break;
 
      case 90: creator = "Mylea Dozier"; break;
      case 91: creator = "Maka'lyn Cox"; break;
      case 92: creator = "Letitia Hall"; break;
      case 93: creator = "Weston Wicker"; break;
      case 94: creator = "Savannah Newton"; break;
      case 95: creator = "Lizbeth Garcia"; break;
      case 96: creator = "Chauncey Johnson"; break;
      case 97: creator = "Landon Smith"; break;
      case 98: creator = "Alex Whiting"; break;
      case 99: creator = "Zach Osburn"; break;
 
      case 100: creator = "Cade Norton"; break;
      case 101: creator = "Ella Johnston"; break;
      case 102: creator = "Michael Burch"; break;
      case 103: creator = "Wednesday Kelley"; break;
      case 104: creator = "Braeden Fouts"; break;
      case 105: creator = "Emaleigh Hammonds"; break;
      case 106: creator = "Carlee Hart"; break;
      case 107: creator = "Harold Coronado"; break;
      case 108: creator = "Canon Dorsey"; break;
      case 109: creator = "Michael Rousseau"; break;
      

      
    }
    
    //For cookie
    if(choice == 91){chipCount = 50;chipRotation = new float[chipCount];chipDist = new float[chipCount];for ( int i = 0; i < chipCount; i++ ){chipRotation[i] = (TWO_PI/chipCount)*i;chipDist[i] = random(20, 120);}}
    //For donut
    for(int i = 0; i < sprink.length; i++)
      sprink[i] = int(random(5));

    return choice; //Change this number based on how many faces there are
  }
  
  public void drawFace()
  {
    //noStroke();
    stroke(0);
    strokeWeight(1);
    fill(255);
    if(destroyed)
      drawExplosion();
    else if(faceChoice == 0) //Ja'Shawn G
    {
      noStroke();fill(#FFA600);rect(X-50,Y-80,20,40);rect(X+30,Y-80,20,40);fill(#FF0516);ellipse(X-0,Y-10,160,160);fill(#F7E00C);rect(X-30,Y+10,60,20);fill(#FFF700);rect(X-50,Y-40,40,20);rect(X+10,Y-40,40,20);fill(#FF0015);triangle(X-0,Y+0,X-10,Y+10,X-10,Y+10);
    }
    else if(faceChoice == 1 ) //Erick O
    {
      fill(255, 229, 180);rect(X-75,Y-75,150,150,20);if(mousePressed){fill(220,0,0);}else{fill(0,220,0);}rect(X-105,Y-105,210,80,30);fill(0);rect(X-25,Y-20,20,50,10);fill(0);rect(X+15,Y-20,20,50,10);fill(255);ellipse(X,Y-65,60,60);arc(X+100,Y-65,60,60,HALF_PI,PI * 1.5);arc(X-100,Y-65,60,60,1.5 * PI, TWO_PI);arc(X-100,Y-65,60,60,0, HALF_PI);
    }
    else if(faceChoice == 2 ) //Jalon S
    {
      fill(60,40,210);rect(X-100,Y-100,200,150);fill(225);ellipse(X-45,Y-50,90,30);ellipse(X+55,Y-50,90,30);fill(0);ellipse(X-15,Y-50,20,10);ellipse(X+80,Y-50,20,10);ellipse(X-30,Y+10,90,30);
    }
    else if(faceChoice == 3 ) //Josh W
    {
      noStroke();fill(210, 155, 130);rect(0 + X - width1 / 2, 0 + Y - height1 / 2, width1, height1);fill(70, 60, 40);rect(0 + X - width1 / 2, 0 + Y - height1 / 2, width1, height1 / 4);rect(0 + X - width1 / 2, height1 / 4 + Y - height1 / 2, width1 / 8, height1 / 8);rect(width1 / 8 * 7 + X - width1 / 2, height1 / 4 + Y - height1 / 2, width1 / 8, height1 / 8);fill(255, 255, 255);rect(width1 / 8 + X - width1 / 2, height1 / 2 + Y - height1 / 2, width1 / 8, height1 / 8);rect(width1 / 8 * 6 + X - width1 / 2, height1 / 2 + Y - height1 / 2, width1 / 8, height1 / 8);fill(110, 90, 220);rect(width1 / 4 + X - width1 / 2, height1 / 2 + Y - height1 / 2, width1 / 8, height1 / 8);rect(width1 / 8 * 5 + X - width1 / 2, height1 / 2 + Y - height1 / 2, width1 / 8, height1 / 8);fill(170, 135, 110);rect(width1 / 8 * 3 + X - width1 / 2, height1 / 8 *5 + Y - height1 / 2, width1 / 4, height1 / 8);rect(width1 / 4 + X - width1 / 2, height1 / 8 * 6 + Y - height1 / 2, width1 / 2, height1 / 8);
    }
    else if(faceChoice == 4 ) //Josh P
    {
      stroke(0); fill(220,220,220); triangle(X-50,Y+76,X+0,Y-37,X+40,Y+76);fill(255,255,255);rect(X-75,Y+0,25,25);rect(X+50,Y+0,25,25);ellipse(X+0,Y-49,50,50);fill(0,0,0);ellipse(X+12,Y-52,15,15);fill(255,255,255);ellipse(X-13,Y-52,15,15);ellipse(X+0,Y-37,25,10);
    }
    else if(faceChoice == 5) //Elisha D
    {
      fill(250,255,13);rect(X-50,Y-50,100,100);  fill(0,0,255);ellipse(X-30,Y-30,20,20);  ellipse(X+30,Y-30,20,20);  fill(255,0,0);rect(X-10,Y-10,20,20);  fill(0,0,0);rect(X-35,Y+10,10,30);  rect(X+25,Y+10,10,30);  rect(X-35,Y+30,60,10);
    }
    else if(faceChoice == 6) //James M
    {
      fill(0,0,255);rect(X-60,Y-60,120,120);fill(0,255,0);ellipse(X-30,Y-30,30,30);ellipse(X+30,Y-30,30,30);fill(255,0,150);rect(X-10,Y-10, 20, 20);fill(255,255,0);rect(X-40,Y+20,80,20);
    }
    else if(faceChoice == 7) //Jackson C
    {
      fill(250,0,0);rect(X-75,Y-105,150,200);fill(0,0,0);rect(X-60,Y-75,50,50);fill(0,0,0);rect(X+10,Y-75,50,50);fill(0,0,250);ellipse(X-20,Y+10,30,30);fill(0,0,250);ellipse(X+20,Y+10,30,30);fill(255,165,0);rect(X-35,Y+55,70,30);
    }
    else if(faceChoice == 8) //Dionte P
    {
      fill(0, 18, 255);ellipse(X+0, Y+0, 140, 150);fill(254, 255, 0);ellipse(X+20, Y-30, 20, 20);fill(255, 0, 0);rect(X-40, Y-40, 20, 20);fill(255,200,0);rect(X-10,Y +0, 20, 20);fill(200, 200, 200);rect(X-20, Y+30, 40, 10);    
    }
    else if(faceChoice == 9) //Omar L
    {
      fill(255);stroke(0);rect(X-80,Y-55,160,130);triangle(X+0,Y+0,X-5,Y+10,X+15,Y+10);rect(X-50,Y+35,80,20);rect(X-40,Y-35,20,20);rect(X+30,Y-35,20,20);
    }
    else if(faceChoice == 10) //Oliver H
    {
      stroke(0);fill(39,128,109);rect(X-90,Y-60,50,70);rect(X+40,Y-60,50,70);rect(X-40,Y-60,80,120);fill(200,0,255);rect(X-20,Y-30,10,10);rect(X+10,Y-30,10,10);noStroke();fill(55,247,234);rect(X-20,Y+10,10,20);rect(X+10,Y+10,10,20);rect(X-20,Y+30,40,10);ellipse(X,Y,20,20);
    }
    else if(faceChoice == 11) //Charles B
    {
      fill (255,255,0);ellipse(X,Y,200,200);fill(0,0,255);ellipse(X-50,Y-50,25,25);ellipse(X+50,Y-50,25,25);fill(255,192,203);rect(X-50,Y+50,100,25);fill(255,0,0);triangle(X-25,Y+25,X,Y-25,X+25,Y+25);
    }
    else if(faceChoice == 12) //Averit B
    {
      fill(255, 255, 0);rect(X-50, Y-50, 100, 100);fill(200, 200, 255);rect(X-30, Y-30, 20, 20);rect(X+10, Y-30, 20, 20);fill(100, 255, 100);triangle(X,Y,X-15,Y+15,X+15,Y+15);fill(255, 255, 222);rect(X-30, Y+25, 60, 10);
    }
    else if(faceChoice == 13) //Ethan A
    {
      fill(0,255,0);rect(X -70,Y -70,140,140);fill(255,0,0);rect(X +15,Y -50,40,40);rect(X -55,Y -50,40,40);fill(255);rect(X -50,Y +30,20,20);rect(X +30,Y +30,20,20);rect(X -50,Y +10,100,20);
    }
    else if(faceChoice == 14) //Dea'von M
    {
      fill(255, 255, 0);rect(X-60,Y-70, 130, 120);fill(0,0,255);rect(X-40,Y-40, 20, 20);rect(X+20,Y-40, 20, 20);fill(255, 255, 0);rect(X-10,Y-10, 20, 20);fill(255,255,255);rect(X-30,Y+20, 60, 20);fill(255);rect(X-10,Y+20,10,10);rect(X+10,Y+20,10,10);
    }
    else if(faceChoice == 15) //Lena Q
    {
      fill(253,185,200);triangle(X-60,Y-80,X-57,Y-20,X-20,Y-50);triangle(X+58,Y-80,X+17,Y-50,X+56,Y-20);ellipse(X+0,Y+0,120,120);fill(138,3,3);ellipse(X-30,Y,30,30);ellipse(X+30,Y,30,30);fill(0,0,0);ellipse(X,Y+30,10,10);
    }
    else if(faceChoice == 16) //Josiah B
    {
      stroke(20);fill(255);ellipse(X+5,Y-20, 20, 20);strokeWeight(3);line(X+5,Y-10,X+5,Y+23);line(X+5,Y+23,X+0,Y+50);line(X+5, Y+23, X+20,Y+50);line(X+4, Y-1,X-10,Y+10);line(X+4, Y-1, X+30, Y+10);strokeWeight(1);
    }
    else if(faceChoice == 17) //Kaylei H
    {
      fill(#FC0F0F);rect(X-80,Y-80,160,160);fill(0);rect(X-50,Y-50,30,30);fill(0);ellipse(X+25,Y-36,30,30);fill(#0902F5);triangle(X+5,Y-5,X-5,Y+20,X+15,Y+20);fill(#1AFFC4); ellipse(X-35,Y+40,15,15);ellipse(X+40,Y+40,15,15);fill(#BF2CF5);rect(X-23,Y+30,50,20);
    }
    else if(faceChoice == 18) //Zachery J
    {
      fill(254,255,0);ellipse (X+0,Y+0,200,200);fill(0);rect (X-78,Y-32,48,8);rect(X+12,Y-32,48,8);rect (X-52,Y+40,104,8);  
    }
    else if(faceChoice == 19) //Sage S
    {
      fill(255,255,0);rect(X-85,Y-85,170,170);fill(0,255,0);rect(X-50,Y-50,100,100);fill(0);rect(X-25,Y-25,50,50);fill(255,255,255);triangle(X-1,Y-26,X-26,Y+22,X+22,Y+21);
    }
    else if(faceChoice == 20) //Shayne A
    {
      stroke(0);fill (238,234,222);ellipse(X+0,Y+0,120,160);noStroke();fill(0);ellipse(X+25,Y-20,30,20);ellipse(X-35,Y-20,30,20);ellipse(X+0,Y+10,15,15);ellipse(X-10,Y+30,15,15);ellipse(X-10,Y+50,15,15);ellipse(X-10,Y+70,15,15);ellipse(X+10,Y+30,15,15);ellipse(X+10,Y+50,15,15);ellipse(X+10,Y+70,15,15);ellipse(X+0,Y-60,10,10);ellipse(X-25,Y-40,10,10);ellipse(X-25,Y-60,10,10);ellipse(X-40,Y-40,10,10);ellipse(X-30,Y-50,10,10);    ellipse(X+25,Y-40,10,10);ellipse(X+25,Y-50,10,10);ellipse(X+25,Y-60,10,10);fill(178,14,14);triangle(X-25,Y-5, X-25,Y+5, X-55,Y+5 );triangle(X+15,Y+5, X+15, Y-5, X+45,Y+5);triangle(X-20,Y-40, X+0,Y-10, X+20,Y-40);
    }
    else if(faceChoice == 21) //No name
    {
      fill(225,98,0);rect(X-50,Y-50,100,100);fill(0,255,240);rect(X+17.5,Y-37.5,15,15);rect(X-32.5,Y-37.5,15,15);fill(255,0,243);rect(X-2.5,Y-5,5,5);fill(255,0,0);ellipse(X,Y+30,42.5,35);
    }
    else if(faceChoice == 22) //James K
    {
    fill(250);ellipse(X,Y,200,200);if(mousePressed){fill(166,16,30);}else{fill(0);}ellipse(X,Y-10,195,190);fill(250);ellipse(X,Y-20,200,185);fill(166,16,30);triangle(X-40,Y-20,X-45,Y+50,X-50,Y+50);fill(0);ellipse(X-40,Y-10,50,100);ellipse(X+40,Y-10,50,100);if(mousePressed){fill(166,16,30);ellipse(X-40,Y-10,20,40);ellipse(X+40,Y-10,20,40);}
    }
    else if(faceChoice == 23) //Bennett R
    {
      noStroke();fill(#FF9100);ellipse(X+0,Y+0,150,150);triangle(X-100,Y+0,X+0,Y-50,X+0,Y+50);triangle(X+100,Y+0,X+0,Y-50,X+0,Y+50);triangle(X-80,Y-50,X+0,Y-50,X+0,Y+50);triangle(X-80,Y+50,X+0,Y-50,X+0,Y+50);triangle(X+80,Y-50,X+0,Y-50,X+0,Y+50);triangle(X+80,Y+50,X+0,Y-50,X+0,Y+50);triangle(X+0,Y-100,X-50,Y+0,X+50,Y+0);triangle(X+0,Y+100,X-50,Y+0,X+50,Y+0);fill(255);ellipse(X-30,Y-20,50,50);ellipse(X+30,Y-20,60,60);fill(0);ellipse(X+30,Y-20,20,20);ellipse(X-30,Y-20,30,30);ellipse(X+0,Y+30,40,20);
    }
    else if(faceChoice == 24) //Logan B
    {
      noStroke();fill(186,157,121);ellipse(X+0,Y+0,150,200);fill(255);circle(X-25,Y-25,25);circle(X+25,Y-25,25);fill(61,183,228);circle(X-25,Y-25,20);circle(X+25,Y-25,20);fill(0);rect(X-50,Y+50,100,3);fill(255);triangle(X-50,Y+51,X-40,Y+51,X-45,Y+63);fill(198,120,86);ellipse(X+0,Y+50,50,150);
    }
    else if(faceChoice == 25) //Zane T
    {
      noStroke();fill(255, 0, 0);ellipse(X,Y,150,150);rect(X-75,Y+10,50,100);rect(X+25,Y+10,50,100);fill(200,200,200);rect(X-43,Y-25,85,45);
    }
    else if(faceChoice == 26) //Kevin T
    {
      stroke(0);fill(123, 200, 238);ellipse(X +0, Y+0, 100, 140);fill(88, 137, 128);triangle(X-30, Y-40, X-20, Y-15, X-10,Y-40);rect(X+10, Y-40, 20, 20);rect(X+20, Y-20, 0, 90);fill(28, 16, 27);rect(X-10,Y +0, 20, 20);fill(59, 20, 3);ellipse(X+0, Y+40, 60, 20);fill(123, 200, 238); ellipse(X+0,  Y+40, 40, 10);
    }
    else if(faceChoice == 27) //Avery H
    {
      fill(255,255,0);circle(X+0,Y+0,140);fill(0);circle(X-30,Y-30,20);circle(X+30,Y-30,20);fill(255);rect(X-50,Y+20,96,30);fill(255,0,0);rect(X-12,Y-20,25,150);
    }
    else if(faceChoice == 28) //Dutchess
    {
      noStroke();fill(0, 200, 0);rect(X-100+0, Y-50+0, 200, 100);fill(255);circle(X-100+40, Y-50+30, 40);circle(X-100+100, Y-50+30, 40);circle(X-100+160, Y-50+30, 40);fill(255, 150, 240);rotation = atan2( Y-(Y-20), X-(X-60) );translate(X-100+40, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+40), -(Y-50+30));rotation = atan2( Y-(Y-30), X-X );translate(X-100+100, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+100), -(Y-50+30));rotation = atan2( Y-(Y-10), X-(X+60) );translate(X-100+160, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+160), -(Y-50+30));fill(200, 0, 0);rect(X-100+50, Y-50+60, 100, 30);fill(0);rect(X-100+60, Y-50+70, 80, 10);fill(255);triangle(X-100+50, Y-50+60, X-100+60, Y-50+60, X-100+55, Y-50+70);triangle(X-100+70, Y-50+60, X-100+80, Y-50+60, X-100+75, Y-50+70);triangle(X-100+90, Y-50+60, X-100+100, Y-50+60, X-100+95, Y-50+70);triangle(X-100+110, Y-50+60, X-100+120, Y-50+60, X-100+115, Y-50+70);triangle(X-100+130, Y-50+60, X-100+140, Y-50+60, X-100+135, Y-50+70);triangle(X-100+60, Y-50+90, X-100+70, Y-50+90, X-100+65, Y-50+80);triangle(X-100+80, Y-50+90, X-100+90, Y-50+90, X-100+85, Y-50+80);triangle(X-100+100, Y-50+90, X-100+110, Y-50+90, X-100+105, Y-50+80);triangle(X-100+120, Y-50+90, X-100+130, Y-50+90, X-100+125, Y-50+80);triangle(X-100+140, Y-50+90, X-100+150, Y-50+90, X-100+145, Y-50+80);triangle(X-100+50, Y-50+75, X-100+50, Y-50+85, X-100+60, Y-50+80);triangle(X-100+150, Y-50+65, X-100+150, Y-50+75, X-100+140, Y-50+70);
    }
    else if(faceChoice == 29) //Josh W
    {
      noStroke();fill(150,80,30);rect(X-80,Y-80,160,160);fill(80,20,10);rect(X-40,Y-50,30,50);rect(X-50,Y+20,120,30);rect(X-20,Y+50,10,10);rect(X+30,Y+50,10,10);rect(X+20,Y-40,30,40);rect(X+30,Y-20,30,20);fill(40,10,5);rect(X-40,Y-60,10,20);rect(X-30,Y-60,10,10);rect(X-20,Y-50,10,10);rect(X-50,Y-40,10,30);rect(X-60,Y+20,10,20);rect(X-60,Y+20,40,10);rect(X-50,Y+10,10,20);rect(X-30,Y+10,10,20);rect(X-50,Y+40,10,20);rect(X-0,Y+10,10,20);rect(X-10,Y+20,20,10);rect(X+30,Y+10,10,20);rect(X+20,Y+20,20,10);rect(X+50,Y+10,10,20);rect(X+10,Y-50,10,40);rect(X+10,Y-50,30,10);rect(X+40,Y-40,10,10);rect(X+20,Y-60,10,10);fill(150,80,30);rect(X+60,Y+20,10,10);rect(X-30,Y+40,10,10);rect(X-0,Y+40,10,10);rect(X+40,Y+40,10,10);rect(X-20,Y-10,10,10); fill(190,110,30);rect(X+60,Y-0,10,20);rect(X-70,Y-60,10,90);rect(X-60,Y-80,10,10);rect(X-30,Y-80,20,10);rect(X-40,Y-70,40,10);rect(X+10,Y-80,10,10);rect(X+40,Y-80,20,20);rect(X+60,Y-50,10,30);rect(X-70,Y+60,10,10);rect(X-60,Y+60,20,20);rect(X-20,Y+70,10,10);rect(X+10,Y+70,10,10);rect(X+40,Y+70,20,10);rect(X-10,Y+0,10,10);fill(210,130,30);rect(X-60,Y-70,10,30);rect(X-30,Y-70,20,10);rect(X-20,Y-60,20,10);rect(X+10,Y-70,20,10);rect(X+50,Y-70,20,20);rect(X+40,Y-60,10,10);rect(X+50,Y-50,10,10);rect(X+50,Y+60,20,10);rect(X+10,Y+50,20,20);rect(X-30,Y+50,10,20);rect(X-30,Y+60,20,10);rect(X-60,Y+60,10,10);rect(X-70,Y-10,20,20);rect(X-50,Y-0,10,10); fill(220,150,40);rect(X-70,Y-70,10,10);rect(X-70,Y-30,10,20);rect(X-10,Y-50,10,10);rect(X+10,Y-60,10,10);rect(X+10,Y+60,10,10);rect(X+50,Y+50,10,10);
    }
    else if(faceChoice == 30) //Riley G
    {
      noStroke();fill(0,250,25);ellipse(X+0,Y-75,100,110);noStroke();fill(255,0,0);ellipse(X+0,Y-80,50,35);noStroke();fill(0);ellipse(X+0,Y-80,20,10);stroke(0);strokeWeight(1.5);line(X-30,Y-55,X+30,Y-55);noStroke();fill(0,250,25);rect(X-40,Y-25,80,120,5);noStroke();fill(0,250,25);ellipse(X-55,Y-1,35,20);ellipse(X+55,Y-1,35,20);noStroke();fill(0,250,25);ellipse(X-45,Y+104,50,20);ellipse(X+45,Y+104,50,20);strokeWeight(1);
    }
    else if(faceChoice == 31) //J Lew
    {
      fill(#271702);rect(X-5,Y-40,10,15);fill(#F2951B);ellipse(X+25,Y-5,20,35);ellipse(X-25,Y-5,20,35);ellipse(X+15,Y-5,25,45);ellipse(X-15,Y-5,25,45);ellipse(X,Y-5,30,55);
    }
    else if(faceChoice == 32) //Jamie S
    {
      stroke(0);fill(255);circle(X+0,Y+0,100);if(mousePressed)ballColor = int(random(10));if(ballColor == 0)fill(0,0,255);if(ballColor == 1)fill(255,0,0);if(ballColor == 2)fill(#6D33CB);if(ballColor == 3)fill(255);if(ballColor == 4)fill(0);if(ballColor == 5)fill(#0A8B2D);if(ballColor == 6)fill(#F4F516);if(ballColor == 7)fill(#16D5F5);if(ballColor == 8)fill(#D616F5);if(ballColor == 9)fill(#D66C02);if(ballColor == 10)fill(#8B0D7F);arc(X+0,Y+0,100,100,PI,TWO_PI);fill(0);strokeCap(SQUARE);strokeWeight(10);line(X-50,Y-0,X+50,Y+0);strokeWeight(2);circle(X+0,Y+0,30);fill(255);circle(X+0,Y+0,20);circle(X+0,Y+0,10);noStroke();fill(255,255,255,100);ellipse(X+0,Y-30,50,10);strokeWeight(1);
    }
    else if(faceChoice == 33) //Shayne C
    {
      noStroke();fill(150);rect(X-100+50, Y-100+60, 130, 100);rect(X-100+60, Y-100+160, 100, 10);rect(X-100+60, Y-100+180, 20, 10);rect(X-100+110, Y-100+180, 20, 10);fill(#FF4882);square(X-100+50,Y-100+140, 20);square(X-100+160, Y-100+130, 20);fill(#0052FF);rect(X-100+50, Y-100+30, 40, 50);rect(X-100+30, Y-100+40, 20, 40);rect(X-100+90, Y-100+40, 40, 40);rect(X-100+60, Y-100+80, 30, 10);square(X-100+90, Y-100+10, 10);rect(X-100+120, Y-100+20, 60, 40);fill(#2100FF);square(X-100+40, Y-100+80, 20);rect(X-100+50, Y-100+90, 80, 20);rect(X-100+90, Y-100+80, 50, 10);square(X-100+120, Y-100+70, 10);square(X-100+130, Y-100+60, 20);rect(X-100+120, Y-100+50, 20, 10);square(X-100+120, Y-100+40, 10);square(X-100+110, Y-100+30, 10);square(X-100+90, Y-100+20, 10);square(X-100+150, Y-100+50, 10);rect(X-100+160, Y-100+40, 30, 10);rect(X-100+180, Y-100+30, 10, 30);square(X-100+170, Y-100+20, 10);rect(X-100+30, Y-100+70, 10, 20);fill(60);rect(X-100+50, Y-100+170, 120, 10);rect(X-100+40, Y-100+110, 70, 10);rect(X-100+70, Y-100+120, 20, 10);rect(X-100+40, Y-100+100, 10, 60);rect(X-100+50, Y-100+160, 10, 30);rect(X-100+60, Y-100+190, 30, 10);rect(X-100+110, Y-100+190, 30, 10);rect(X-100+80, Y-100+180, 10, 10);rect(X-100+130, Y-100+180, 10, 20);rect(X-100+100, Y-100+180, 10, 10);rect(X-100+160, Y-100+160, 10, 10);rect(X-100+170, Y-100+150, 10, 10);rect(X-100+180, Y-100+100, 10, 50);rect(X-100+170, Y-100+50, 10, 50);rect(X-100+180, Y-100+60, 10, 10);rect(X-100+190, Y-100+30, 10, 30);rect(X-100+180, Y-100+20, 10, 10);rect(X-100+130, Y-100+10, 50, 10);rect(X-100+100,Y-100+ 20, 30, 10);rect(X-100+100, Y-100+10, 10, 30);rect(X-100+90,Y-100+ 0, 10, 10);rect(X-100+80, Y-100+10, 10, 20);rect(X-100+90, Y-100+30, 10, 10);rect(X-100+50, Y-100+20, 30, 10);rect(X-100+40, Y-100+30, 10, 10);rect(X-100+30, Y-100+40, 10, 20);rect(X-100+20, Y-100+60, 10, 30);rect(X-100+30, Y-100+90, 10, 10);rect(X-100+110, Y-100+100, 20, 10);rect(X-100+130, Y-100+90, 10, 10);rect(X-100+140, Y-100+80, 10, 10);rect(X-100+150, Y-100+60, 10, 20);rect(X-100+160, Y-100+50, 10, 10);rect(X-100+110, Y-100+40, 10, 10);rect(X-100+120, Y-100+120, 10, 10);rect(X-100+140, Y-100+110, 20, 20);fill(255);rect(X-100+140, Y-100+110, 10, 10);fill(60);rect(X-100+80, Y-100+140, 10, 10);rect(X-100+110, Y-100+140, 10, 10);rect(X-100+140, Y-100+140, 10, 10);rect(X-100+80, Y-100+150, 70, 10);
    }
    else if(faceChoice == 34) //Zach M
    {
      garchomp(X,Y);
    }
    else if(faceChoice == 35) //Peyton H
    {
      fill(242,202,125);circle(X,Y,100);circle(X-20,Y+10,27);circle(X+20,Y+10,27);fill(255);circle(X-20,Y+5,30);circle(X+20,Y+5,30);fill(0);circle(X-20,Y+5,15);circle(X+20,Y+5,15);fill(255,70,70);arc(X,Y,100,100,PI,PI*2);rect(X-60,Y-15,120,20);fill(0);arc(X+9,Y+40,20,20,PI,PI*2);
    }
    else if(faceChoice == 36) //Maalika S
    {
      stroke(0);fill(#FAFF08);circle(X,Y,150);line(X-20,Y+30, X+50,Y+30);line(X-60,Y-20, X-10,Y-20);line(X+20,Y-20, X+70,Y-20);fill(#F22727);noStroke();rect(X+10,Y+30, 20,10);arc(X+20, Y+40, 20,20,0,PI);stroke(0);line(X+20,Y+30, X+20,Y+45);
    }
    else if(faceChoice == 37) //Sage S
    {
      fill(255,60,0);beginShape();vertex(X-250+143,Y-250+253);vertex(X-250+206,Y-250+274);vertex(X-250+188,Y-250+322);vertex(X-250+225,Y-250+294);vertex(X-250+249,Y-250+350);vertex(X-250+269,Y-250+295);vertex(X-250+317,Y-250+303);vertex(X-250+298,Y-250+270);vertex(X-250+348,Y-250+247);vertex(X-250+295,Y-250+232);vertex(X-250+313,Y-250+193);vertex(X-250+280,Y-250+209);vertex(X-250+255,Y-250+157);vertex(X-250+233,Y-250+207);vertex(X-250+188,Y-250+197);vertex(X-250+201,Y-250+232);vertex(X-250+143,Y-250+253);endShape();fill(255,200,0);ellipse(X-250+250,Y-250+250,100,100);
    }
    else if(faceChoice == 38) //Ryan A
    {
      fill(0,200,0);square(X-25,Y-25,50);fill(#FFC0CB);rect(X-15,Y+5,30,10);fill(0);square(X-15,Y-15,10);square(X+5,Y-15,10);fill(0,0,200);rect(X-15,Y-55,30,20);rect(X-25,Y-35,50,10);
    }
    else if(faceChoice == 39) //Matthew B
    {
      stroke(0);strokeWeight(1);fill(#FFF752);quad(X-50+0, Y-50+35, X-50+-5, Y-50+120, X-50+105, Y-50+120, X-50+100, Y-50+35);fill(#FADABB);ellipse(X-50+50, Y-50+60, 80, 80);fill(#FFF752);triangle(X-50+20, Y-50+50, X-50+70, Y-50+10, X-50+10, Y-50+12);fill(#FFF752);beginShape();vertex(X-50+30, Y-50+20);vertex(X-50+20, Y-50+100);vertex(X-50+0, Y-50+40);bezierVertex(X-50+0, Y-50+-20, X-50+100, Y-50+-20, X-50+100, Y-50+40);vertex(X-50+80, Y-50+100);vertex(X-50+70, Y-50+20);endShape();fill(#FFF752);beginShape();vertex(X-50+40, Y-50+20);bezierVertex(X-50+30, Y-50+30, X-50+45, Y-50+70, X-50+100, Y-50+40);bezierVertex(X-50+100, Y-50+40, X-50+70, Y-50+35, X-50+70, Y-50+20);endShape();stroke(0);line(X-50+60, Y-50+60, X-50+80, Y-50+60);line(X-50+80, Y-50+60, X-50+80, Y-50+70);fill(#C1BF0C);circle(X-50+65, Y-50+65, 10);stroke(0);strokeWeight(1);line(X-50+40, Y-50+60, X-50+20, Y-50+60);line(X-50+20, Y-50+60, X-50+20, Y-50+70);fill(#C1BF0C);circle(X-50+30, Y-50+65, 10);fill(0);triangle(X-50+50, Y-50+65, X-50+55, Y-50+70, X-50+50, Y-50+75);line(X-50+40, Y-50+85, X-50+60, Y-50+85);line(X-50+40, Y-50+55, X-50+20, Y-50+55);line(X-50+60, Y-50+55, X-50+80, Y-50+55);fill(255);triangle(X-50+50, Y-50+5, X-50+55, Y-50+15, X-50+45, Y-50+15);fill(0);fill(0, 255, 0);quad(X-50+50, Y-50+10, X-50+55, Y-50+20, X-50+50, Y-50+30, X-50+45, Y-50+20);line(X-50+40, Y-50+10, X-50+55, Y-50+40);line(X-50+60, Y-50+10, X-50+45, Y-50+40);
    }
    else if(faceChoice == 40) //Xaine C
    {
      fill(#F58207);rect(X-70,Y-80,140,140);fill(#CBAC8A);rect(X-60,Y-50,30,30);fill(#CBAC8A);rect(X+30,Y-50,30,30);fill(#CBAC8A);triangle(X+0,Y-20, X-10,Y+0, X+10,Y+0);fill(#CBAC8A);rect(X-40,Y+20,80,30);fill(255);triangle(X-40,Y+20, X-10,Y+20, X-25,Y+40);fill(255);triangle(X+10,Y+20, X+40,Y+20, X+25,Y+40);
    }
    else if(faceChoice == 41) //Laila H
    {
      strokeWeight(1);stroke(0);fill(#add8e6);push();translate(X-100+85, Y-200+55);rotate(-.7);rect(0, 0, 20, 30, 100);pop();push();rectMode(CENTER);translate(X+20, Y-200+65);rotate(-2.5);rect(0, 0, 20, 30, 100);pop();fill(#add8e6);circle(X+0,Y-80,100);circle(X+0,Y+0,100);circle(X+0,Y+80,100);fill(255);arc(X-100+80,Y-200+100,25,30, PI, TWO_PI);arc(X-100+80,Y-200+100,25,10, 0, PI);arc(X-100+120,Y-200+100,25,30, PI, TWO_PI);arc(X-100+120,Y-200+100,25,10, 0, PI);arc(X-100+80,Y-200+180,25,30, PI, TWO_PI);arc(X-100+80,Y-200+180,25,10,0,PI);arc(X-100+120,Y-200+180,25,30,PI,TWO_PI);arc(X-100+120,Y-200+180,25,10,0,PI);arc(X-100+80,Y-200+260,25,30, PI, TWO_PI);arc(X-100+80,Y-200+260,25,10,0,PI);arc(X-100+120,Y-200+260,25,30,PI,TWO_PI);arc(X-100+120,Y-200+260,25,10,0,PI);arc(X-100+80,Y-200+105,20,10,PI,TWO_PI);arc(X-100+80,Y-200+105,20,10,0,PI);arc(X-100+120,Y-200+105,20,10,PI,TWO_PI);arc(X-100+120,Y-200+105,20,10,0,PI);arc(X-100+80,Y-200+185,20,10,PI,TWO_PI);arc(X-100+80,Y-200+185,20,10,0,PI);arc(X-100+120,Y-200+185,20,10,PI,TWO_PI);arc(X-100+120,Y-200+185,20,10,0,PI);arc(X-100+80,Y-200+265,20,10,PI,TWO_PI);arc(X-100+80,Y-200+265,20,10,0,PI);arc(X-100+120,Y-200+265,20,10,PI,TWO_PI);arc(X-100+120,Y-200+265,20,10,0,PI);fill(#F5E905);triangle(X-100+90,Y-200+115, X-100+110,Y-200+115, X-100+100,Y-200+125);quad(X-100+100,Y-200+100, X-100+90,Y-200+115, X-100+100,Y-200+120, X-100+110,Y-200+115);triangle(X-100+90,Y-200+195, X-100+110,Y-200+195, X-100+100,Y-200+205);quad(X-100+100,Y-200+180, X-100+90,Y-200+195,X-100+ 100,Y-200+200, X-100+110,Y-200+195);triangle(X-100+90,Y-200+275, X-100+110,Y-200+275, X-100+100,Y-200+285);quad(X-100+100,Y-200+260, X-100+90,Y-200+275, X-100+100,Y-200+280, X-100+110,Y-200+275);fill(0);circle(X-100+85,Y-200+95,5);circle(X-100+125,Y-200+95,5);circle(X-100+85,Y-200+175,5);circle(X-100+125,Y-200+175,5);circle(X-100+85,Y-200+255,5);circle(X-100+125,Y-200+255,5);
    }
    else if(faceChoice == 42) //Zach J
    {
      fill(246,255,0);fill(246,255,0);ellipse(X-450+450,Y-450+450,200,200);noStroke();fill(255);ellipse(X-450+410,Y-450+420,50,50);ellipse(X-450+490,Y-450+420,50,50);fill(0);rect(X-450+400,Y-450+500,100,20);ellipse(X-450+410,Y-450+420,20,20);ellipse(X-450+490,Y-450+420,20,20);
    }
    else if(faceChoice == 43) //Shawn H
    {
      fill(0,100,0);stroke(0);square(X-50,Y-50,100);fill(100,0,0);circle(X+20,Y-25,30);circle(X-25,Y-25,30);fill(#080707);ellipse(X-25,Y-25,-12,25);ellipse(X+20,Y-25,-12,25);fill(#484734);rect(X-30,Y+20,60,20);fill(#E8DE0E);rect(X-15,Y+20,10,5);rect(X+5,Y+20,10,5);fill(0,100,0);square(X-65,Y-10,20);square(X+45,Y-10,20);
    }
    else if(faceChoice == 44) //Spencer B
    {
      noStroke();fill(#D7D2B5);rect(X+20, Y-45, 5, 25);rect(X-7, Y-60, 5, 40);fill(#EEE8C7);ellipse(X-5, Y-55, 20, 10);ellipse(X+22, Y-45, 20, 10);fill(#7d6E55);rect(X-65, Y-20, 130, 40);circle(X+65, Y, 40);fill(#405D3E);circle(X+35, Y-10, 20);circle(X+25, Y-10, 20);circle(X+15, Y-10, 20);circle(X+5, Y-10, 20);circle(X-5, Y-10, 20);circle(X-15, Y-10, 20);fill(#AB9B81);circle(X-65, Y, 40);stroke(5);stroke(#7d6E55);circle(X-65, Y, 30);circle(X-65, Y, 20);circle(X-65, Y, 10);
    }
    else if(faceChoice == 45) //Josh W
    {
      noStroke();float size = 180;while(size > 100){fill(10,20,10,40);ellipse(X,Y,size,size);size /= 1.1;}while(size > 50){fill(10,20,10,40);ellipse(X,Y,size,size);fill(255,240,180,140);ellipse(X-size/5,Y-size/20,size/10,size/10);ellipse(X+size/5,Y-size/20,size/10,size/10);ellipse(X,Y+size/5,size/5,size/10);size /= 1.1;}    
    }
    else if(faceChoice == 46) //Emory R
    {
      stroke(0);fill(159,129,112);rect(X-65,Y-75,110,130);fill(248,240,227);quad(X-55,Y-85,X-65,Y-75,X+45,Y-75,X+55,Y-85);quad(X+55,Y-85,X+45,Y-75,X+45,Y+55,X+55,Y+45);line(X+49,Y-78,X+49,Y+51);line(X+52,Y-81,X+52,Y+49);noStroke();fill(187,133,47);rect(X-15,Y-5,10,50);rect(X-25,Y+5,30,10);textSize(30);textAlign(LEFT);text("Holy",X-55,Y-46);text("Bible",X-46,Y-15);
    }
    else if(faceChoice == 47) //Landon M
    {
      noStroke();fill(0);rect(X-40, Y+100, 20,10);rect(X+80, Y+100, 20,10);fill(#835E40);rect(X-40,Y+0,20,100);rect(X+80,Y+0,20,100);rect(X-20,Y+0,100,40);rect(X-80,Y-20,60,20);rect(X-60,Y-30,40,10);rect(X-60,Y-40,30,10);fill(250);rect(X-20,Y+20,10,10);rect(X+0,Y+10,10,10);rect(X+20,Y+20,10,10);rect(X+40,Y+10,10,10);rect(X+60,Y+20,10,10);fill(255);rect(X-20,Y+40,100,10);fill(0);rect(X-50,Y-30,10,10);fill(255);rect(X-50,Y-30,5,5);fill(0);rect(X-80,Y-20,7,7);fill(#F0D2C6);rect(X-40,Y-50,10,10);rect(X-40,Y-100,10,10);rect(X-20,Y-100,10,10);rect(X+0,Y-100,10,10);rect(X+20,Y-100,10,10);rect(X-50,Y-60,40,10);rect(X-20,Y-80,10,20);rect(X-40,Y-90,70,10);
    }
    else if(faceChoice == 48) //Lance H
    {
      noStroke();fill(155,92,175);rect(X-90,Y-61,180,122);fill(255);circle(X-40,Y-30,50);circle(X+60,Y-30,50);fill(0);circle(X-20,Y-30,10);circle(X+80,Y-30,10);fill(155,92,175);triangle(X-90,Y+90,X-60,Y+60,X-90,Y+60);triangle(X-60,Y+60,X-30,Y+90,X+0,Y+60);triangle(X+0,Y+60,X+30,Y+90,X+60,Y+60);triangle(X+60,Y+60,X+90,Y+90,X+90,Y+60);arc(X+0,Y-60,180,70, PI, PI*2);
    }
    else if(faceChoice == 49) //Kasey F
    {
      rect(X-50,Y+90,30,40);rect(X+20,Y+90,30,40);fill(200,200,0);circle(X+0,Y+0,200);fill(0);square(X-70,Y-60,50);square(X+30,Y-60,50);rect(X-60,Y+50,120,20);circle(X-35,Y+150,50);circle(X+35,Y+150,50);
    }
    else if(faceChoice == 50) //Gabby D
    {
      stroke(0);fill(250,231,88);circle(X-0,Y-0,300);strokeWeight(5);line(X-130,Y-70,X+130,Y-70);fill(255);strokeWeight(1);circle(X-65,Y-30,75);circle(X+60,Y-30,75);fill(113,95,86);quad(X-0,Y-150, X-0,Y-105 ,X-130,Y-85, X-130,Y-135);quad(X-0,Y-150, X-0,Y-105 ,X+120,Y-90, X+110,Y-135);fill(89,153,170);circle(X-50,Y-20,35);circle(X+75,Y-20,35);fill(250,231,88);arc(X-0,Y+80,120,35,1,PI);fill(183,240,225,160);ellipse(X-65,Y-30,100,85);ellipse(X+60,Y-30,100,85);
    }
    else if(faceChoice == 51) //Katherine K
    {
      fill(0);ellipse(X+0,Y-30,120,140);quad(X-59,Y-40, X-65,Y+90, X+65,Y+90, X+59,Y-40);fill(255);ellipse(X+0,Y-30,100,130);fill(#CF9FFF);triangle(X-22,Y-69,X-36,Y-52,X-26,Y-53);triangle(X+24,Y-70,X+37,Y-53,X+25,Y-54);triangle(X-37,Y-22,X-29,Y-22,X-27,Y-5);triangle(X+29,Y-22,X+39,Y-22,X+26,Y-5);fill(0);ellipse(X-30,Y-40,20,10);ellipse(X+30,Y-40,20,10);ellipse(X-30,Y-30,10,5);ellipse(X+30,Y-30,10,5);ellipse(X+0,Y+8,30,10);fill(#CF9FFF);ellipse(X-1,Y+18,20,5);
    }
    else if(faceChoice == 52) //Beth H
    {
      noStroke();fill(0,150,0);circle(X - 35,Y -0,20);circle(X + 35,Y - 0,20);fill(250,250,250);rect(X - 35,Y - 75,70,80,20);fill(0);rect(X - 35,Y - 25,70,50,20);noStroke();fill(0,150,0);circle(X - 15,Y - 0,30);circle(X + 15,Y - 0,30);circle(X + 0,Y + 25,40);noStroke();fill(250,250,250);triangle(X - 8,Y + 25,X - 13,Y +15,X - 5,Y + 15);triangle(X - 2,Y + 25,X - 3,Y + 15,X + 5,Y + 15);triangle(X + 12,Y + 25,X + 7,Y + 15,X + 15,Y + 15);fill(0);triangle(X - 0,Y - 0,X - 33,Y - 15,X + 35,Y - 15);fill(0);circle(X - 15,Y - 5,15);circle(X +15,Y - 5,15);fill(40,50,60);rect(X - 35,Y - 25,70,10);triangle(X - 16,Y - 19,X - 1,Y - 47,X + 16,Y - 20);fill(150,0,150);ellipse(X - 0,Y - 20,15,10);ellipse(X - 25,Y - 20,15,10);ellipse(X + 25,Y - 20,15,10);
    }
    else if(faceChoice == 53) //Zach D (edited from original)
    {
      noStroke();fill(#FDFFA5);rect(X+20,Y-17.5,60,25);quad(X+80,Y-17.5, X+90,Y-27.5, X+90,Y+20, X+80,Y+8);fill(100);rect(X-0,Y-25,30,40);fill(#0D0BB9);beginShape();vertex(X-90, Y-35);vertex(X-90, Y+25);bezierVertex(X-75,Y-0, X-25,Y-0, X-10, Y+25);vertex(X+0, Y+15);vertex(X+0, Y-25);vertex(X-10, Y-35);bezierVertex(X-25,Y-10, X-75,Y-10, X-90, Y-35);endShape();
    }
    else if(faceChoice == 54) //Devin R
    {
      noStroke ();fill(255,0,0);rect(X - 50,Y-50 ,75,115,100);rect (X-50,Y+45,30,50,100 );rect (X-5,Y+45,30,50,100 );rect (X-60,Y-40,30,80);fill (255,255,255);ellipse (X+25,Y-0,65,40);
    }
    else if(faceChoice == 55) //Kanon C
    {
      stroke(0);strokeWeight(4);fill(#10FF00);ellipse(X-250+131, Y-250+149, 50, 60);ellipse(X-250+193, Y-250+108, 55, 70);drawEar();stroke(0);strokeWeight(4);fill(#10FF00);ellipse(X-250+250, Y-250+250, 300, 280);fill(#FEFF03);beginShape();vertex(X-250+260, Y-250+110);bezierVertex(X-250+260, Y-250+100, X-250+260, Y-250+35, X-250+250, Y-250+35);bezierVertex(X-250+260, Y-250+35, X-250+270, Y-250+70, X-250+270, Y-250+70);vertex(X-250+280, Y-250+40);vertex(X-250+290, Y-250+80);bezierVertex(X-250+290, Y-250+80, X-250+300, Y-250+50, X-250+310, Y-250+50);bezierVertex(X-250+300, Y-250+50, X-250+295, Y-250+115, X-250+295, Y-250+115);endShape();strokeWeight(2);fill(#1963FC);ellipse(X-250+260, Y-250+85, 15, 15);ellipse(X-250+300, Y-250+90, 15, 15);fill(#37E5ED);ellipse(X-250+279, Y-250+90, 15, 20);strokeWeight(2);fill(255);ellipse(X-250+150, Y-250+240, 75, 70);ellipse(X-250+350, Y-250+225, 75, 70);noStroke();fill(#013401);ellipse(X-250+135, Y-250+255, 25, 20);ellipse(X-250+370, Y-250+225, 25, 20);stroke(0);strokeWeight(2);fill(#AAFF36);rect(X-250+210, Y-250+280, 80, 60, 100);stroke(0);strokeWeight(2);fill(#AAFF36);ellipse(X-250+250, Y-250+250, 150, 125);noStroke();fill(#013401);ellipse(X-250+220, Y-250+255, 25, 60);ellipse(X-250+290, Y-250+250, 20, 50);strokeWeight(3);stroke(#013401);noFill();curve(X-250+120, Y-250+250,X-250+120, Y-250+200, X-250+170, Y-250+200, X-250+170, Y-250+250);curve(X-250+320, Y-250+230,X-250+320, Y-250+180, X-250+360, Y-250+180, X-250+360, Y-250+230);
    }
    else if(faceChoice == 56) //Cora G
    {
      fill(#E5BD19);rect(X-20,Y+45,10,20);rect(X+10,Y+45,10,20);fill(#FFFEF2);rect(X-5,Y-80,10,30);fill(#2B96AA);rect(X-20,Y-60,40,30,10);fill(#303058);circle(X,Y,100);fill(#E5BD19);ellipse(X-22,Y+70,30,20);ellipse(X+22,Y+70,30,20);fill(#FFFEF2);ellipse(X-20,Y-15,25,40);ellipse(X+20,Y-15,25,40);
    }
    else if(faceChoice == 57) //Devin O
    {
      fill(255);circle(X,Y,150);fill(#0A0A0A);rect(X-30,Y-80,61,31);rect(X+30,Y-70,21,21);rect(X-50,Y-70,21,21); rect(X-70,Y-50,41,61); rect(X+0,Y-50,31,31); rect(X-30,Y-20,31,31); rect(X-70,Y+10,21,41); rect(X+0,Y+30,21,21);rect(X+50,Y-60,11,11);rect(X-60,Y-60,11,11);rect(X-30,Y-50,11,31);rect(X-20,Y-30,21,11);rect(X-80,Y-30,11,61);rect(X+70,Y-30,11,61);rect(X+60,Y-50,11,21);rect(X-50,Y+10,11,11);rect(X+0,Y-20,21,11);rect(X+0,Y-20,11,21);rect(X-30,Y+70,61,11);rect(X+30,Y+60,21,11);rect(X+40,Y+50,21,11);rect(X+50,Y+40,21,11);rect(X+60,Y+30,11,11);rect(X-50,Y+60,41,11);rect(X-60,Y+50,31,11);
    }
    else if(faceChoice == 58) //Lily M
    {
      //noStroke();fill(#0D0D0D);square(X-270+20,80+Y-240,21);fill(#0D0D0D);square(X-270+20,100+Y-240,21);fill(#0D0D0D);square(X-270+20,300+Y-240,21);fill(#0D0D0D);square(X-270+20,320+Y-240,21);fill(#0D0D0D);square(X-270+40,60+Y-240,21);fill(#0D0D0D);square(X-270+40,80+Y-240,21);fill(#0D0D0D);square(X-270+40,100+Y-240,21);fill(#0D0D0D);square(X-270+40,280+Y-240,21);fill(#FFFFFF);square(X-270+40,300+Y-240,21);fill(#0D0D0D);square(X-270+40,320+Y-240,21);fill(#0D0D0D);square(X-270+60,60+Y-240,21);fill(#0D0D0D);square(X-270+60,80+Y-240,21);fill(255,100);square(X-270+60,100+Y-240,21);fill(#0D0D0D);square(X-270+60,260+Y-240,21);fill(#FFFFFF);square(X-270+60,280+Y-240,21);fill(#39B2B7);square(X-270+60,300+Y-240,21);fill(#0D0D0D);square(X-270+60,320+Y-240,21);fill(#0D0D0D);square(X-270+80,60+Y-240,21);fill(#0D0D0D);square(X-270+80,80+Y-240,21);fill(#0D0D0D);square(X-270+80,240+Y-240,21);fill(#FFFFFF);square(X-270+80,260+Y-240,21);fill(#39B2B7);square(X-270+80,280+Y-240,21);fill(#0D0D0D);square(X-270+80,300+Y-240,21);fill(#0D0D0D);square(X-270+100,80+Y-240,21);fill(#0D0D0D);square(X-270+100,100+Y-240,21);fill(#0D0D0D);square(X-270+100,200+Y-240,21);fill(#0D0D0D);square(X-270+100,220+Y-240,21);fill(#0D0D0D);square(X-270+100,240+Y-240,21);fill(#0D0D0D);square(X-270+100,260+Y-240,21);fill(#39B2B7);square(X-270+100,280+Y-240,21);fill(#0D0D0D);square(X-270+100,300+Y-240,21);fill(#0D0D0D);square(X-270+120,100+Y-240,21);fill(#0D0D0D);square(X-270+120,120+Y-240,21);fill(#0D0D0D);square(X-270+120,180+Y-240,21);fill(#FF0D0D);square(X-270+120,200+Y-240,21);fill(#FFFFFF);square(X-270+120,220+Y-240,21);fill(#FF0D0D);square(X-270+120,240+Y-240,21);fill(#FF0D0D);square(X-270+120,260+Y-240,21);fill(#0D0D0D);square(X-270+120,280+Y-240,21);fill(#0D0D0D);square(X-270+120,300+Y-240,21);fill(#0D0D0D);square(X-270+140,120+Y-240,21);fill(#0D0D0D);square(X-270+140,140+Y-240,21);fill(#0D0D0D);square(X-270+140,160+Y-240,21);fill(#FFFF58);square(X-270+140,180+Y-240,21);fill(#FFFF58);square(X-270+140,200+Y-240,21);fill(#FFFF58);square(X-270+140,220+Y-240,21);fill(#FFFF58);square(X-270+140,240+Y-240,21);fill(#FFFF58);square(X-270+140,260+Y-240,21);fill(#FFFF58);square(X-270+140,280+Y-240,21);fill(#FFFF58);square(X-270+140,300+Y-240,21);fill(#0D0D0D);square(X-270+140,320+Y-240,21);fill(#0D0D0D);square(X-270+140,420+Y-240,21);fill(#0D0D0D);square(X-270+140,440+Y-240,21);fill(#0D0D0D);square(X-270+160,60+Y-240,21);fill(#0D0D0D);square(X-270+160,80+Y-240,21);fill(#0D0D0D);square(X-270+160,160+Y-240,21);fill(#0D0D0D);square(X-270+160,180+Y-240,21);fill(#FFFF58);square(X-270+160,200+Y-240,21);fill(#FFFF58);square(X-270+160,220+Y-240,21);fill(#FFFF58);square(X-270+160,240+Y-240,21);fill(#FFFF58);square(X-270+160,260+Y-240,21);fill(#FFFF58);square(X-270+160,280+Y-240,21);fill(#FFFF58);square(X-270+160,300+Y-240,21);fill(#FFFF58);square(X-270+160,320+Y-240,21);fill(#0D0D0D);square(X-270+160,340+Y-240,21);fill(#0D0D0D);square(X-270+160,400+Y-240,21);fill(#FFFFFF);square(X-270+160,420+Y-240,21);fill(#0D0D0D);square(X-270+160,440+Y-240,21);fill(#0D0D0D);square(X-270+180,40+Y-240,21);fill(#0D0D0D);square(X-270+180,60+Y-240,21);fill(#0D0D0D);square(X-270+180,80+Y-240,21);fill(#0D0D0D);square(X-270+180,140+Y-240,21);fill(#FFFF58);square(X-270+180,160+Y-240,21);fill(#FFFF58);square(X-270+180,180+Y-240,21);fill(#FFFF58);square(X-270+180,200+Y-240,21);fill(#FFFF58);square(X-270+180,220+Y-240,21);fill(#FFFF58);square(X-270+180,240+Y-240,21);fill(#FFFF58);square(X-270+180,260+Y-240,21);fill(#FFFF58);square(X-270+180,280+Y-240,21);fill(#FFFF58);square(X-270+180,300+Y-240,21);fill(#FFFF58);square(X-270+180,320+Y-240,21);fill(#0D0D0D);square(X-270+180,340+Y-240,21);fill(#0D0D0D);square(X-270+180,380+Y-240,21);fill(#FFFFFF);square(X-270+180,400+Y-240,21);fill(#39B2B7);square(X-270+180,420+Y-240,21);fill(#0D0D0D);square(X-270+180,440+Y-240,21);fill(#0D0D0D);square(X-270+200,40+Y-240,21);fill(#0D0D0D);square(X-270+200,60+Y-240,21);fill(255,100);square(X-270+200,80+Y-240,21);fill(#0D0D0D);square(X-270+200,140+Y-240,21);fill(#FFFF58);square(X-270+200,160+Y-240,21);fill(#0D0D0D);square(X-270+200,180+Y-240,21);fill(#0D0D0D);square(X-270+200,200+Y-240,21);fill(#FFFF58);square(X-270+200,220+Y-240,21);fill(#FFFF58);square(X-270+200,240+Y-240,21);fill(#FF0D0D);square(X-270+200,260+Y-240,21);fill(#FF0D0D);square(X-270+200,280+Y-240,21);fill(#FF0D0D);square(X-270+200,300+Y-240,21);fill(#FFFF58);square(X-270+200,320+Y-240,21);fill(#0D0D0D);square(X-270+200,340+Y-240,21);fill(#0D0D0D);square(X-270+200,360+Y-240,21);fill(#FFFFFF);square(X-270+200,380+Y-240,21);fill(#FFFFFF);square(X-270+200,400+Y-240,21);fill(#39B2B7);square(X-270+200,420+Y-240,21);fill(#0D0D0D);square(X-270+200,440+Y-240,21);fill(#0D0D0D);square(X-270+220,40+Y-240,21);fill(#0D0D0D);square(X-270+220,60+Y-240,21);fill(#0D0D0D);square(X-270+220,140+Y-240,21);fill(#0D0D0D);square(X-270+220,160+Y-240,21);fill(#0D0D0D);square(X-270+220,180+Y-240,21);fill(#FFFF58);square(X-270+220,200+Y-240,21);fill(#FFFF58);square(X-270+220,220+Y-240,21);fill(#FF0D0D);square(X-270+220,240+Y-240,21);fill(#FFFFFF);square(X-270+220,260+Y-240,21);fill(#FF0D0D);square(X-270+220,280+Y-240,21);fill(#FF0D0D);square(X-270+220,300+Y-240,21);fill(#0D0D0D);square(X-270+220,320+Y-240,21);fill(#FFFFFF);square(X-270+220,340+Y-240,21);fill(#0D0D0D);square(X-270+220,360+Y-240,21);fill(#FFFFFF);square(X-270+220,380+Y-240,21);fill(#39B2B7);square(X-270+220,400+Y-240,21);fill(#39B2B7);square(X-270+220,420+Y-240,21);fill(#0D0D0D);square(X-270+220,440+Y-240,21);fill(#0D0D0D);square(X-270+240,60+Y-240,21);fill(#0D0D0D);square(X-270+240,80+Y-240,21);fill(#0D0D0D);square(X-270+240,100+Y-240,21);fill(#0D0D0D);square(X-270+240,120+Y-240,21);fill(#0D0D0D);square(X-270+240,140+Y-240,21);fill(#0D0D0D);square(X-270+240,160+Y-240,21);fill(#FFFF58);square(X-270+240,180+Y-240,21);fill(#FFFF58);square(X-270+240,200+Y-240,21);fill(#FFFF58);square(X-270+240,220+Y-240,21);fill(#FF0D0D);square(X-270+240,240+Y-240,21);fill(#FF0D0D);square(X-270+240,260+Y-240,21);fill(#FF0D0D);square(X-270+240,280+Y-240,21);fill(#FF0D0D);square(X-270+240,300+Y-240,21);fill(#0D0D0D);square(X-270+240,320+Y-240,21);fill(#FFFFFF);square(X-270+240,340+Y-240,21);fill(#FFFFFF);square(X-270+240,360+Y-240,21);fill(#0D0D0D);square(X-270+240,380+Y-240,21);fill(#39B2B7);square(X-270+240,400+Y-240,21);fill(#0D0D0D);square(X-270+240,420+Y-240,21);fill(#0D0D0D);square(X-270+260,180+Y-240,21);fill(#FFFF58);square(X-270+260,200+Y-240,21);fill(#FFFF58);square(X-270+260,220+Y-240,21);fill(#FFFF58);square(X-270+260,240+Y-240,21);fill(#FF0D0D);square(X-270+260,260+Y-240,21);fill(#FF0D0D);square(X-270+260,280+Y-240,21);fill(#0D0D0D);square(X-270+260,300+Y-240,21);fill(#0D0D0D);square(X-270+260,320+Y-240,21);fill(#FFFFFF);square(X-270+260,340+Y-240,21);fill(#0D0D0D);square(X-270+260,360+Y-240,21);fill(#0D0D0D);square(X-270+260,380+Y-240,21);fill(#0D0D0D);square(X-270+260,400+Y-240,21);fill(#0D0D0D);square(X-270+260,420+Y-240,21);fill(#0D0D0D);square(X-270+280,80+Y-240,21);fill(#0D0D0D);square(X-270+280,100+Y-240,21);fill(#0D0D0D);square(X-270+280,120+Y-240,21);fill(#0D0D0D);square(X-270+280,140+Y-240,21);fill(#0D0D0D);square(X-270+280,160+Y-240,21);fill(#0D0D0D);square(X-270+280,180+Y-240,21);fill(#0D0D0D);square(X-270+280,200+Y-240,21);fill(#FFFF58);square(X-270+280,220+Y-240,21);fill(#FFFF58);square(X-270+280,240+Y-240,21);fill(#FFFF58);square(X-270+280,260+Y-240,21);fill(#0D0D0D);square(X-270+280,280+Y-240,21);fill(#0D0D0D);square(X-270+280,300+Y-240,21);fill(#FFFF58);square(X-270+280,320+Y-240,21);fill(#0D0D0D);square(X-270+280,340+Y-240,21);fill(#0D0D0D);square(X-270+280,360+Y-240,21);fill(#0D0D0D);square(X-270+280,380+Y-240,21);fill(#0D0D0D);square(X-270+300,40+Y-240,21);fill(#0D0D0D);square(X-270+300,60+Y-240,21);fill(#FFFFFF);square(X-270+300,80+Y-240,21);fill(#FFFFFF);square(X-270+300,100+Y-240,21);fill(#FFFFFF);square(X-270+300,120+Y-240,21);fill(#FFFFFF);square(X-270+300,140+Y-240,21);fill(#FFFFFF);square(X-270+300,160+Y-240,21);fill(#FFFFFF);square(X-270+300,180+Y-240,21);fill(#FFFFFF);square(X-270+300,200+Y-240,21);fill(#FFFF58);square(X-270+300,220+Y-240,21);fill(#FFFF58);square(X-270+300,240+Y-240,21);fill(#FFFF58);square(X-270+300,260+Y-240,21);fill(#0D0D0D);square(X-270+300,280+Y-240,21);fill(#0D0D0D);square(X-270+300,300+Y-240,21);fill(#0D0D0D);square(X-270+300,320+Y-240,21);fill(#0D0D0D);square(X-270+300,340+Y-240,21);fill(#0D0D0D);square(X-270+320,20+Y-240,21);fill(#FFFFFF);square(X-270+320,40+Y-240,21);fill(#FFFFFF);square(X-270+320,60+Y-240,21);fill(#39B2B7);square(X-270+320,80+Y-240,21);fill(#39B2B7);square(X-270+320,100+Y-240,21);fill(#39B2B7);square(X-270+320,120+Y-240,21);fill(#39B2B7);square(X-270+320,140+Y-240,21);fill(#39B2B7);square(X-270+320,160+Y-240,21);fill(#0D0D0D);square(X-270+320,180+Y-240,21);fill(#0D0D0D);square(X-270+320,200+Y-240,21);fill(#0D0D0D);square(X-270+320,220+Y-240,21);fill(#0D0D0D);square(X-270+320,240+Y-240,21);fill(#FFFF58);square(X-270+320,260+Y-240,21);fill(#FFFF58);square(X-270+320,280+Y-240,21);fill(#0D0D0D);square(X-270+320,300+Y-240,21);fill(#0D0D0D);square(X-270+320,320+Y-240,21);fill(#0D0D0D);square(X-270+320,340+Y-240,21);fill(#0D0D0D);square(X-270+340,20+Y-240,21);fill(#39B2B7);square(X-270+340,40+Y-240,21);fill(#39B2B7);square(X-270+340,60+Y-240,21);fill(#39B2B7);square(X-270+340,80+Y-240,21);fill(#39B2B7);square(X-270+340,100+Y-240,21);fill(#39B2B7);square(X-270+340,120+Y-240,21);fill(#0D0D0D);square(X-270+340,140+Y-240,21);fill(#0D0D0D);square(X-270+340,160+Y-240,21);fill(#0D0D0D);square(X-270+340,200+Y-240,21);fill(#FFFFFF);square(X-270+340,220+Y-240,21);fill(#39B2B7);square(X-270+340,240+Y-240,21);fill(#0D0D0D);square(X-270+340,260+Y-240,21);fill(#0D0D0D);square(X-270+340,280+Y-240,21);fill(#0D0D0D);square(X-270+340,300+Y-240,21);fill(#FFFF58);square(X-270+340,320+Y-240,21);fill(#FFFF58);square(X-270+340,340+Y-240,21);fill(#0D0D0D);square(X-270+340,360+Y-240,21);fill(#0D0D0D);square(X-270+360,40+Y-240,21);fill(#0D0D0D);square(X-270+360,60+Y-240,21);fill(#0D0D0D);square(X-270+360,80+Y-240,21);fill(#0D0D0D);square(X-270+360,100+Y-240,21);fill(#0D0D0D);square(X-270+360,120+Y-240,21);fill(#0D0D0D);square(X-270+360,180+Y-240,21);fill(#FFFFFF);square(X-270+360,200+Y-240,21);fill(#39B2B7);square(X-270+360,220+Y-240,21);fill(#0D0D0D);square(X-270+360,240+Y-240,21);fill(#467E81);square(X-270+360,260+Y-240,21);fill(#0D0D0D);square(X-270+360,280+Y-240,21);fill(#FFFF58);square(X-270+360,300+Y-240,21);fill(#FFFF58);square(X-270+360,320+Y-240,21);fill(#0D0D0D);square(X-270+360,340+Y-240,21);fill(#0D0D0D);square(X-270+360,360+Y-240,21);fill(#0D0D0D);square(X-270+380,160+Y-240,21);fill(#FFFFFF);square(X-270+380,180+Y-240,21);fill(#467E81);square(X-270+380,200+Y-240,21);fill(#39B2B7);square(X-270+380,220+Y-240,21);fill(#0D0D0D);square(X-270+380,240+Y-240,21);fill(#467E81);square(X-270+380,260+Y-240,21);fill(#39B2B7);square(X-270+380,280+Y-240,21);fill(#0D0D0D);square(X-270+380,300+Y-240,21);fill(#0D0D0D);square(X-270+380,320+Y-240,21);fill(#0D0D0D);square(X-270+380,340+Y-240,21);fill(#0D0D0D);square(X-270+380,360+Y-240,21);fill(#0D0D0D);square(X-270+400,140+Y-240,21);fill(#FFFFFF);square(X-270+400,160+Y-240,21);fill(#39B2B7);square(X-270+400,180+Y-240,21);fill(#39B2B7);square(X-270+400,200+Y-240,21);fill(#467E81);square(X-270+400,220+Y-240,21);fill(#0D0D0D);square(X-270+400,240+Y-240,21);fill(#467E81);square(X-270+400,260+Y-240,21);fill(#467E81);square(X-270+400,280+Y-240,21);fill(#0D0D0D);square(X-270+400,300+Y-240,21);fill(#0D0D0D);square(X-270+400,320+Y-240,21);fill(#FFFF58);square(X-270+400,340+Y-240,21);fill(#0D0D0D);square(X-270+400,360+Y-240,21);fill(#0D0D0D);square(X-270+420,140+Y-240,21);fill(#FFFFFF);square(X-270+420,160+Y-240,21);fill(#467E81);square(X-270+420,180+Y-240,21);fill(#39B2B7);square(X-270+420,200+Y-240,21);fill(#0D0D0D);square(X-270+420,220+Y-240,21);fill(#467E81);square(X-270+420,240+Y-240,21);fill(#467E81);square(X-270+420,260+Y-240,21);fill(#39B2B7);square(X-270+420,280+Y-240,21);fill(#0D0D0D);square(X-270+420,300+Y-240,21);fill(#FFFF58);square(X-270+420,320+Y-240,21);fill(#0D0D0D);square(X-270+420,340+Y-240,21);fill(#0D0D0D);square(X-270+440,120+Y-240,21);fill(#FFFFFF);square(X-270+440,140+Y-240,21);fill(#39B2B7);square(X-270+440,160+Y-240,21);fill(#467E81);square(X-270+440,180+Y-240,21);fill(#39B2B7);square(X-270+440,200+Y-240,21);fill(#0D0D0D);square(X-270+440,220+Y-240,21);fill(#467E81);square(X-270+440,240+Y-240,21);fill(#467E81);square(X-270+440,260+Y-240,21);fill(#0D0D0D);square(X-270+440,280+Y-240,21);fill(#0D0D0D);square(X-270+440,300+Y-240,21);fill(#0D0D0D);square(X-270+440,320+Y-240,21);fill(#0D0D0D);square(X-270+460,120+Y-240,21);fill(#FFFFFF);square(X-270+460,140+Y-240,21);fill(#39B2B7);square(X-270+460,160+Y-240,21);fill(#39B2B7);square(X-270+460,180+Y-240,21);fill(#0D0D0D);square(X-270+460,200+Y-240,21);fill(#0D0D0D);square(X-270+460,240+Y-240,21);fill(#0D0D0D);square(X-270+460,260+Y-240,21);fill(#FFFF58);square(X-270+460,280+Y-240,21);fill(#FFFF58);square(X-270+460,300+Y-240,21);fill(#0D0D0D);square(X-270+460,320+Y-240,21);fill(#0D0D0D);square(X-270+480,120+Y-240,21);fill(#FFFFFF);square(X-270+480,140+Y-240,21);fill(#39B2B7);square(X-270+480,160+Y-240,21);fill(#0D0D0D);square(X-270+480,180+Y-240,21);fill(#0D0D0D);square(X-270+480,260+Y-240,21);fill(#FFFF58);square(X-270+480,280+Y-240,21);fill(#0D0D0D);square(X-270+480,300+Y-240,21);fill(#0D0D0D);square(X-270+500,140+Y-240,21);fill(#0D0D0D);square(X-270+500,160+Y-240,21);fill(#0D0D0D);square(X-270+500,260+Y-240,21);fill(#0D0D0D);square(X-270+500,280+Y-240,21);
      image(bee,X,Y);
    }
    else if(faceChoice == 59) //Rylee O
    {
      fill(0);rect(X-90, Y-110, 180, 180);rect(X-80, Y+70, 160, 41);rect(X-110, Y-20, 40, 60);noStroke();fill(244, 153, 186);rect(X-80, Y-100, 100, 160);noStroke();fill(239, 113, 160);rect(X+20, Y-100, 60, 160);stroke(182, 89, 108);fill(244, 153, 186);rect(X+30, Y-10, 50, 40);fill(244, 153, 186);rect(X-100, Y-10, 20, 40);noStroke();fill(224, 0, 36);rect(X-70, Y+60, 140, 40);rect(X-30, Y+80, 30, 20);fill(0);rect(X-60, Y-70, 20, 40);rect(X-20, Y-70, 20, 40);fill(226, 0, 82);rect(X-80, Y-30, 20, 10);rect(X+0, Y-30, 20, 10);fill(0);rect(X-40, Y-20, 20, 10);
    }
    else if(faceChoice == 60) //Jade B
    {
      noStroke();fill(251,167,241);rect(X,Y,51,11);rect(X-15,Y+11,81,11);rect(X-25,Y+21,101,11);rect(X-35,Y+31,121,11);rect(X-45,Y+41,141,31);rect(X-55,Y+71,161,61);rect(X-55,Y+131,21,15);rect(X-15,Y+131,31,15);rect(X+35,Y+131,31,15);rect(X+85,Y+131,21,15);rect(X-55,Y+141,11,11);rect(X-5,Y+141,21,11);rect(X+35,Y+141,21,11);rect(X+95,Y+141,11,11);fill(255);rect(X-35,Y+41,21,11);rect(X-45,Y+51,41,31);rect(X-35,Y+81,21,11);fill(64,114,198);rect(X-45,Y+61,21,21);fill(255);rect(X+31,Y+41,21,11);rect(X+21,Y+51,41,31);rect(X+31,Y+81,21,11);fill(64,114,198);rect(X+21,Y+61,21,21);
    }
    else if(faceChoice == 61) //Gaston F
    {
      stroke(0);fill(224,232,28);rect(X-120+10,Y-150+10,220,200);fill(255,255,255);rect(X-120+60,Y-150+50,30,30);rect(X-120+150,Y-150+50,30,30);fill(0,0,200);rect(X-120+70,Y-150+60,10,10);rect(X-120+160,Y-150+60,10,10);fill(230,232,28);rect(X-120+120,Y-150+100,40,10);line(X-120+60,Y-150+170,X-120+190,Y-150+170);fill(255);rect(X-120+100,Y-150+170,20,20);rect(X-120+130,Y-150+170,20,20);fill(255);rect(X-120+10,Y-150+210,220,20);fill(150,75,0);rect(X-120+10,Y-150+230,220,20);fill(0);rect(X-120+20,Y-150+235,50,10);rect(X-120+170,Y-150+235,50,10);fill(250,0,0);rect(X-120+120,Y-150+220,10,30);fill(224,232,28);rect(X-120+90,Y-150+250,10,60);rect(X-120+150,Y-150+250,10,60);fill(0);rect(X-120+60,Y-150+310,40,10);rect(X-120+150,Y-150+310,40,10);fill(167,163,34);ellipse(X-120+30,Y-150+40,10,10);ellipse(X-120+210,Y-150+40,10,10);ellipse(X-120+30,Y-150+170,10,10);ellipse(X-120+30,Y-150+195,20,20);
    }
    else if(faceChoice == 62) //Josh W
    {
      fill(210,20,20);stroke(210,20,20);strokeWeight(5);ellipse(X,Y-30,100,90);rect(X-50,Y-30,100,80);ellipse(X,Y+30,100,90);line(X, Y, X, Y+80);line(X-8, Y, X-8, Y+78);line(X-16, Y, X-16, Y+78);line(X-32, Y, X-32, Y+69);line(X-4, Y, X-4, Y+83);line(X-6, Y, X-6, Y+76);line(X-19, Y, X-19, Y+79);line(X-25, Y, X-25, Y+75);line(X-28, Y, X-28, Y+78);line(X-36, Y, X-36, Y+78);line(X-49, Y, X-49, Y+63);line(X-24, Y, X-24, Y+67);line(X-26, Y, X-26, Y+66);line(X-39, Y, X-39, Y+69);line(X-44, Y, X-44, Y+65);line(X, Y, X, Y+80);line(X+8, Y, X+8, Y+81);line(X+14, Y, X+14, Y+79);line(X+32, Y, X+32, Y+69);line(X+4, Y, X+4, Y+81);line(X+6, Y, X+6, Y+76);line(X+19, Y, X+19, Y+78);line(X+25, Y, X+25, Y+76);line(X+28, Y, X+28, Y+78);line(X+34, Y, X+34, Y+79);line(X+49, Y, X+49, Y+65);line(X+24, Y, X+24, Y+76);line(X+26, Y, X+26, Y+72);line(X+39, Y, X+39, Y+65);line(X+45, Y, X+45, Y+68);fill(255);strokeWeight(0);ellipse(X-30, Y-70, 20,20);ellipse(X+30, Y-70, 20,20);fill(0);ellipse(X-30, Y-70, 5,5);ellipse(X+30, Y-70, 5,5);
    }
    else if(faceChoice == 63) //Jacob W
    {
      fill(250,250,250);circle(X+10*scale,Y+70*scale,489*scale);fill(0,0,0);rect(X-200*scale,Y+100*scale,40*scale,40*scale);rect(X-150*scale,Y+150*scale,40*scale,40*scale);rect(X-100*scale,Y+200*scale,40*scale,40*scale);rect(X-30*scale,Y+250*scale,40*scale,40*scale);rect(X+40*scale,Y+200*scale,40*scale,40*scale);rect(X+100*scale,Y+150*scale,40*scale,40*scale);rect(X+150*scale,Y+100*scale,40*scale,40*scale);fill(223,30,20);circle(X-10*scale,Y+100*scale,40*scale);stroke(0);fill(200,79,0);line(X-153*scale,Y-77*scale,X-74*scale,Y+25*scale);line(X-56*scale,Y-67*scale,X-166*scale,Y+12*scale);line(X+43*scale,Y-101*scale,X+103*scale,Y+0*scale);line(X+123*scale,Y-69*scale,X+24*scale,Y-34*scale);fill(121,120,120);rect(X-40*scale,Y-169*scale,61*scale,30*scale);rect(X-30*scale,Y-191*scale,45*scale,30*scale);circle(X-10*scale,Y-250*scale,130*scale);fill(0,0,0);circle(X-10*scale,Y-250*scale,100*scale);
    }
    else if(faceChoice == 64) //Kyra 
    {
      fill(#FFB486);stroke(#DE976B);rect(X-10,Y+40,20,20,4);fill(#E8A47A);noStroke();rect(X-10,Y+40,20,13,4);fill(#FFB486);stroke(#DE976B);ellipse(X-46,Y+10,32,35);fill(#E8A47A);ellipse(X-46,Y+10,15,15);fill(#FFB486);stroke(#DE976B);ellipse(X+46,Y+10,32,35);fill(#E8A47A);ellipse(X+46,Y+10,15,15);stroke(#DE976B);ellipse(X-0,Y-0,100,95);fill(0);stroke(0);ellipse(X-25,Y-0,30,25);fill(#FFB486);stroke(#FFB486);ellipse(X-25,Y+1.5,35,25);fill(0);stroke(0);ellipse(X+25,Y-0,30,25);fill(#FFB486);stroke(#FFB486);ellipse(X+25,Y+1.5,35,25);fill(0);stroke(0);ellipse(X-25,Y+10,20,15);fill(255);ellipse(X-20,Y+10,9,9);fill(#FFB486);noStroke();rect(X-35,Y-2,25,10);fill(0);stroke(0);ellipse(X+25,Y+10,20,15);fill(255);noStroke();ellipse(X+30,Y+10,8,8);fill(#FFB486);noStroke();rect(X+15,Y-2,25,10);fill(0);rect(X-10,Y+33,20,.50);fill(#E3C755);stroke(#B7A148);triangle(X-55,Y-40, X-0,Y-47, X-30,Y-30);triangle(X+5,Y-25, X-0,Y-50, X-20,Y-0);triangle(X+50,Y-40, X-4,Y-50, X+20, Y-35);triangle(X-20,Y-60, X-0,Y-47, X-40, Y-50);triangle(X+20,Y-60, X-0,Y-47, X-0,Y-60);
    }
    else if(faceChoice == 65) //Cora F
    {
      stroke(0);fill(254, 213, 93);circle(X+5, Y+5, 190);fill(0);quad(X-95+6, Y-95+73, X-95+193, Y-95+74, X-95+197, Y-95+106, X-95+3, Y-95+105);fill(196, 202, 206);quad(X-95+32, Y-95+73, X-95+47, Y-95+73, X-95+47, Y-95+105, X-95+32, Y-95+105);fill(196, 202, 206);quad(X-95+152, Y-95+73, X-95+166, Y-95+73, X-95+166, Y-95+106, X-95+152, Y-95+106);fill(255);circle(X+5, Y+5, 90);fill(101, 67, 33);circle(X+5, Y+5, 45);fill(0);circle(X+5, Y+5, 22);noFill();curve(X-95+39, Y-95+67, X-95+39, Y-95+147, X-95+155, Y-95+147, X-95+155, Y-95+67);
    }
    else if(faceChoice == 66) //Jackson Burch
    {
      noStroke();fill(255);rect(X-40,Y-60,80,100);fill(245);rect(X-40,Y-60,80,20);fill(0);rect(X-40,Y-40,20,20);rect(X+20,Y-40,20,20);fill(255,255,0);rect(X-40,Y-20,80,20);fill(255,160,0);rect(X-40,Y,80,20);fill(255,0,0);rect(X-20,Y+20,40,40);
    }
    else if(faceChoice == 67) //David Sherrill
    {
      noStroke();fill(faceRed, faceGreen, faceBlue);rect(X-80, Y-80, 160, 160);fill(#F2D2BD);rect(X-60, Y-40, 120, 100);fill(0);rect(X-60, Y-20, 20, 20);rect(X+40, Y-20, 20, 20);fill(255);rect(X-40, Y-20, 20, 20);rect(X+20, Y-20, 20, 20);fill(#FFC0CB);rect(X-20, Y+40, 40, 20);fill(#AA336A);rect(X-20, Y+20, 40, 20);fill(faceRed, faceGreen, faceBlue);rect(X-61, Y+19, 22, 42);rect(X+39, Y+19, 22, 42);
    }
    else if(faceChoice == 68) //Reed Krablin
    {
      fill(0);circle(X+0,Y+0,300);fill(255);circle(X+0,Y+0,250);fill(0);strokeWeight(2);rect(X-65,Y-70,20,150);rect(X-75,Y-20,50,20);rect(X-95,Y-30,20,50);rect(X-5,Y+30,80,10);rect(X-5,Y+40,10,30);rect(X-5,Y+70,80,10);rect(X+65,Y+40,10,30);rect(X-35,Y+10,120,10);rect(X+45,Y-10,10,20);rect(X-15,Y-20,80,10);rect(X+5,Y-60,20,70);rect(X-15,Y-80,80,20);
    }
    else if(faceChoice == 69) //Keshawn Thornton
    {
      push();translate(X-85,Y-150);fill(50);beginShape();vertex(0, 220);  vertex(10, 215);vertex(30, 210);vertex(40, 160);vertex(40, 80);vertex(50, 30);  vertex(60, 75);  vertex(80, 70);  vertex(100, 70);  vertex(120, 75);  vertex(130, 30);  vertex(140, 80);  vertex(135, 160);  vertex(135, 200);  vertex(140, 210);  vertex(160, 220);  endShape(); fill(190, 170, 130);  beginShape();  vertex(50, 160);  vertex(73, 170);  vertex(82,173);  vertex(90, 170);  vertex(120, 160);  vertex(115, 200);  vertex(100, 210);  vertex(70, 210);  vertex(55, 200); vertex(50, 160); endShape();  fill(200, 200, 0);  arc(68, 128, 25, 20, PI*0.2, PI*1.1, CHORD);  arc(105, 128, 25, 20, PI*-0.1, PI*0.8, CHORD);  noFill();  curve(70, 203, 70, 183, 100, 185, 100, 205);  line(78, 190, 88, 191);  stroke(0);  line(78, 133, 69, 167);  line(94,133,97,165);  line(85,139,82,173);  pop();
    }
    else if(faceChoice == 70) //Sabra Morris
    {
      noStroke();fill(255);push();translate( X, Y);rotate( -millis() * TWO_PI / 2000 );ellipse( +0, +0,160,160);fill(0);arc( +0, +0,160,160, -HALF_PI, HALF_PI);arc(  +0,  -40, 80,80, PI*0.45, PI*1.55);fill(255);arc( +0, +40,80,80, -PI*0.45, PI*1.55);circle( +0, -40,20);fill(0);circle( +0, +40,20);pop();
    }
    else if(faceChoice == 71) //Bryce Coleman
    {
      fill(252,0,0); square(X-30,Y-20,60); fill(255,255,255); rect(X-10,Y+10,20,30); fill(95,74,14); triangle(X-30,Y-20, X+0,Y-70, X+30,Y-20); fill(255); square(X-10,Y-50,10); square(X-0,Y-50,10); square(X-10,Y-40,10); square(X-0,Y-40,10); fill(95,74,14); circle(X+7,Y+25,5);
    }
    else if(faceChoice == 72) //Michaela Kahrig
    {
      fill(0);noStroke();rect(X-65,   Y-75   ,131,101);  rect(X-55,   Y-85   ,111,11);  rect(X-45,   Y-95   ,91,11);  rect(X-35,   Y-105   ,71,11);  rect(X-55,   Y+25   ,111,21);  rect(X-45,   Y+45   ,91,11);  rect(X-35,   Y+55   ,71,31);  rect(X-25,   Y+85   ,51,11);  rect(X-15,   Y+95   ,31,11);   fill(255);  rect(X-55   , Y-45  ,111,51);  rect(X-45   , Y-65 ,91,21);  rect(X-25  ,  Y-75 ,51,11);  rect(X-45   ,Y+5   ,91,11);  rect(X-35   ,Y+15   ,71,21);  rect(X-25   ,Y+35   ,51,41);  rect(X-15   ,Y+75   ,31,11);  rect(X-5   ,Y+85   ,11,11);  fill(1);  rect( X-15  ,Y-45   ,11,31);  rect(X-25   ,Y-35   ,11,31);  rect(X-35   ,Y-25   ,11,21);  rect(X-45   ,Y-15   ,11,11);  rect(X+5   ,Y-45   ,11,31);  rect( X+15  , Y-35  ,11,31);  rect(X+25  ,Y-25   ,11,21);  rect( X+35  ,Y-15   ,11,11);  rect(X-5   , Y-5  ,11,11);  rect(X-15   ,Y+15   ,31,51);  rect(X-5   ,Y+65   ,11,11);
    }
    else if(faceChoice == 73) //Owen Keathley
    {
      noStroke();fill(25, 125, 0);  rect(X-80, Y-80, 160, 160);  fill(25, 75, 0);  rect(X-80, Y-80, 160, 20);  rect(X-80, Y-60, 80, 20);  rect(X+40, Y-60, 40, 20);  rect(X-80, Y-40, 20, 20);  rect(X-20, Y+20, 40, 20);  fill(0);  rect(X-60, Y, 40, 20);  rect(X+20, Y, 40, 20);
    }
    else if(faceChoice == 74) //Madelyn Scott
    {
      textAlign(CENTER); textSize(13); stroke(5);  fill(0, 200, 0);  ellipse(X-21, Y-15, 4, 13);  ellipse(X+21, Y-15, 4, 13);  fill(37, 134, 224);  rect(X-20, Y-30, 40, 30);  fill(37, 134, 224);  rect(X-10, Y+0, 20, 10);  fill(37, 134, 224);  rect(X-30, Y+10, 60, 70);  fill(250, 177, 32);  rect(X-40, Y+20, 10, 50);  rect(X+30, Y+20, 10, 50);  fill(250, 177, 32);  rect(X-20, Y+80, 10, 20);  rect(X+10, Y+80, 10, 20);  fill(124, 28, 255);  rect(X-20, Y+20, 40, 20);  fill(255, 233, 90);  rect(X-20, Y+50, 10, 10);  rect(X+0, Y+50, 10, 10);  fill(255, 69, 69);  rect(X-10, Y+50, 10, 10);  rect(X+10, Y+50, 10, 10);  fill(0, 200, 0);  circle(X-15, Y+100, 15);  circle(X+15, Y+100, 15);  fill(0);  circle(X-10, Y-20, 2);  circle(X+10, Y-20, 2);  rect(X-10, Y-10, 20, .9);  fill(0, 200, 0);  rect(X-12, Y-37, 3, 7);  rect(X+8, Y-37, 3, 7);  fill(0);  stroke(5);  text("BOBBY", X-0, Y+35);
    }
    else if(faceChoice == 75) //Angel Flowers
    {
      noStroke();fill(255);square(X-80,Y-80,10);  fill(#C15023);  rect(X-80, Y-70, 10, 140);  rect(X-70, Y-80, 140, 10);  fill(0);  rect(X+70, Y-80, 10, 150);  rect(X-80, Y+70, 160, 10);  fill(#F09F07);  square(X-70, Y-70, 140);  fill(0);  square(X-60, Y-60, 10);  square(X-60, Y+50, 10);  square(X+50, Y-60, 10);  square(X+50, Y+50, 10);  fill(0);  square(X+0, Y+40, 20);  square(X+0, Y+10, 20);  rect(X+10, Y-30, 30, 40);  rect(X-10, Y-40, 20, 10);  rect(X-30, Y-40, 20, 40);  fill(#C15023);  square(X-10, Y+30, 20);  square(X-10, Y+0, 20);  rect(X+0, Y-10, 30, 10);  rect(X+10, Y-40, 20, 30);  rect(X-30, Y-50, 50, 10);  rect(X-40, Y-40, 20, 30);
    }
    else if(faceChoice == 76) //Valenzia Lenz
    {
      noStroke();fill(#DE5AC8);rect(X-80,Y-80,160,180);fill(0);rect(X-80,Y-20,20,20);noStroke();fill(255);rect(X-60,Y-20,20,20);fill(0);rect(X+60,Y-20,20,20);noStroke();fill(255);rect(X+40,Y-20,20,20);fill(#F5B7EB);rect(X-40,Y+0,80,60);fill(#E066DA);rect(X-40,Y+20,80,20);fill(#B93692);rect(X-40,Y+20,20,20);rect(X+20,Y+20,20,20);fill(0);rect(X-78,Y-30,35,5);noStroke();fill(0);rect(X+44,Y-30,35,5);noStroke();
    }
    else if(faceChoice == 77) //Colton Amato
    { 
      noStroke();fill(30);rect(X-80,Y-80,160,160);  fill(0);  rect(X-80,Y-80,20,40);  rect(X+60,Y-80,20,40);  rect(X-40,Y-80,80,20);  rect(X-20,Y-60,40,20);  rect(X-60,Y-40,20,40);  square(X-80,Y-20,20);  rect(X+40,Y-40,20,40);  square(X+60,Y-20,20);  rect(X-60,Y+20,40,20);  rect(X+20,Y+20,40,20);  square(X-80,Y+40,20);  square(X+60,Y+40,20);  rect(X-60,Y+60,120,20);  fill(237,140,255);  square(X-80,Y+0,20);  square(X-40,Y+0,20);  square(X+20,Y+0,20);  square(X+60,Y+0,20);  fill(170,27,171);  square(X-60,Y+0,20);  square(X+40,Y+0,20);
    }
    else if(faceChoice ==78) //Mariana Lopez
    {
      noStroke();fill(255,0,1);rect(X-30,Y-55,70,91);rect(X-50,Y-45,20,71);rect(X-70,Y-45,20,61);rect(X+40,Y-45,40,71);rect(X+80,Y-35,10,51);fill(249,151,44);rect(X-30,Y-30,70,51);rect(X-50,Y-25,20,31);rect(X-40,Y+5,10,11);rect(X+40,Y-25,10,41);rect(X+50,Y-25,10,31);fill(255,255,1);rect(X-20,Y-25,50,31);rect(X -40,Y-15,20,21);rect(X+30,Y-15,10,21);rect(X+40,Y-15,10,11);fill(255);rect(X-10,Y-10,30,11);fill(1);rect(X-20,Y-10,10,21);rect(X+20,Y-10,10,21);fill(#199414);rect(X-10,Y+35,30,81);rect(X,Y+35,30,71);rect(X-50,Y+55,20,61); rect(X-30,Y+65,20,51);rect(X+10,Y+65,30,51);rect(X+40,Y+65,40,41);rect(X+60,Y+55,20,11);
    }
    else if(faceChoice == 79) //Shane Whitehurst
    {
      fill(#FFFFFF);  rect(X-105, Y-65, 210, 130);  fill(#FF0000);  rect(X-35,Y-65, 140, 10);  rect(X-35,Y-45, 140, 10);  rect(X-35,Y-25, 140, 10);  rect(X-105,Y-5, 210, 10);  rect(X-105,Y+15, 210, 10);  rect(X-105,Y+35, 210, 10);  rect(X-105,Y+55, 210, 10);  fill(#000EF7);  rect(X-105,Y-65, 84, 60);
    }
    else if(faceChoice == 80) //Zoey Rippeto
    {
      fill(#030303);  triangle(X-40, Y-40, X-30, Y-60, X-20, Y-40);  triangle(X+20, Y-40, X+30, Y-60, X+40, Y-40);  fill(#030303);  rect(X-40, Y-40, 80, 80);  fill(#C6DB2C);  rect(X-30, Y-30, 20, 20);  fill(0);  rect(X-25, Y-25, 10, 10);  fill(#C6DB2C);  rect(X+10, Y-30, 20, 20);  fill(0);  rect(X+15, Y-25, 10, 10);  fill(#FAC5C5);  rect(X-10, Y+0, 20, 15);  noFill();  stroke(#625959);  strokeWeight(2);  curve(X-30, Y-10, X-30, Y+20, X+30, Y+20, X+30, Y-10);
    }
    else if(faceChoice == 81) //Davion Sabbs
    {
      fill(0,200,0);square(X-50,Y-50,100);fill(0);rect(X-40,Y-40,20,10);rect(X+20,Y-40,20,10);rect(X-10,Y-20,20,10);fill(200,0,200);rect(X-40,Y+0,80,40);fill(255);rect(X-20,Y+0,20,30);rect(X+10,Y+0,20,30);
    }
    else if(faceChoice == 82) //Graham Stuart
    {
      fill(255,209,220);rect(X-25,Y-80,30,20);fill(125,125,125);rect(X-25,Y-60,30,10);fill(255,255,0);rect(X-25,Y-50,30,120);fill(166,138,109);triangle(X-25,Y+70,X+5,Y+70,X-10,Y+90);fill(0,0,0);triangle(X-14,Y+85,X-6,Y+85,X-10,Y+90);line(X-15,Y-50,X-15,Y+70);line(X-5,Y-50,X-5,Y+70);
    }
    else if(faceChoice == 83) //Imani Johnson
    {
      fill(200,0,200);square(X-50,Y-50,110);fill(0);rect(X-45,Y-30,30,10);rect(X+10,Y-30,30,10);fill(0);rect(X-45,Y+10,90,30);fill(0);rect(X-10,Y-10,20,10);fill(200,100,0);square(X-15,Y-80,30);fill(255);rect(X-40,Y+10,30,30);rect(X+5,Y+10,30,30);
    }
    else if(faceChoice == 84) //Kya Flowers
    {
      fill(255,0,0);  ellipse(X-40,Y-10, 50,50);  ellipse(X+30,Y-10, 50,50);  triangle(X-60,Y+10,X+0,Y+100,X+50,Y+10);  noStroke();  beginShape();  vertex(X-20,Y -20);  vertex(X-5, Y+0);  vertex(X+10,Y -25);  vertex(X+25,Y +25);  vertex(X-35,Y +25);  endShape();  strokeWeight(5);  stroke(255,0,0);  line(X-57,Y +8,X +47,Y +8);  fill(255);  noStroke();  push();  translate(X+30,Y+0);  rotate(2);  ellipse(0,0,20,5);  ellipse(25,0,15,10);  pop();
    }
    else if(faceChoice == 85) //Izabelle Ashley
    {
      fill(139,206,255);rect(X-50,Y-50,100,100);fill(#FFA0C4);circle(X-25,Y-10,20);circle(X+25,Y-10,20);fill(255);circle(X-20,Y-20,20);circle(X+20,Y-20,20);fill(0);circle(X-17,Y-17,5);circle(X+17,Y-17,5);fill(0);arc(X-0,Y+10,20,20,0,PI);fill(255);fill(0);quad(X-20,Y-37,X-12,Y-30,X-13,Y-28,X-21,Y-30);quad(X+12,Y-28,X+20,Y-35, X+22,Y-30,X+14,Y-26);
    }
    else if(faceChoice == 86) //Isabella Wallace
    {
      fill(#369FD6);  rect(X-70, Y-110, 140, 230);  fill(#FAF2F9);  rect(X-50, Y-80, 40, 40);  fill(#E359D1);  rect(X-40, Y-70, 15, 25);  fill(#FAF2F9);  rect(X+10,Y-80, 40, 40);  fill(#E359D1);  rect(X+23, Y-70, 15, 25);  fill(#16D671);  rect(X-10,Y-30, 20, 40);  fill(#E359D1);  rect(X-50,Y+50, 100, 30);  line(X-30, Y+50, X-30, Y+80);  line(X-10,Y+50, X-10, Y+80);  line(X+10, Y+50, X+10, Y+80);  line(X+30, Y+50, X+30, Y+80);
    }
    else if(faceChoice == 87) //Trey Parker
    {
      stroke(0); strokeWeight(1);fill(255,217,23);triangle(X-80,Y-30,X+80,Y-30,X+0,Y+150);fill(93,73,18);rect(X-80,Y-60,160,30);fill(229,0,0);ellipse(X+0,Y+90,50,20);fill(229,0,0);arc(X+50,Y+30,50,20, HALF_PI, PI*1.62, CHORD);fill(229,0,0);ellipse(X+0,Y-20,50,20);fill(229,0,0);arc(X-40,Y+30,50,20,PI*-0.74,PI*0.64, CHORD);fill(229,0,0);arc(X-25,Y+130,50,20,PI*-0.34,PI*0.24, CHORD );stroke(0,200,0);noFill();strokeWeight(3);curve(X-5,Y+0, X-35,Y-10, X-25,Y+10, X+5,Y+10);curve(X+5,Y+20 ,X-25,Y+10, X-15,Y+30, X+15,Y+10);curve(X+45,Y+40 ,X+15,Y+30, X+25,Y+50, X+50,Y+30);curve(X+55,Y+60 ,X+25,Y+50, X+35,Y+70, X+60,Y+50);
    }
    else if(faceChoice == 88) //Shayla Hibbs
    {
      fill(240, 180, 140);  rect(X-45, Y-55, 90, 10);  fill(220, 130, 20);  triangle(X-45,Y -45, X+45, Y-45,X +0, Y+95);  fill(230, 50, 10);  circle(X-25, Y-25, 20);  circle(X+5, Y-35, 20);  circle(X+25, Y-5, 20);  circle(X+5, Y+5, 20);  circle(X+10,Y +30, 20);  arc(X-5, Y+65, 20, 20, -PI*0.74, PI*0.52, CHORD);  arc(X-15,Y +30, 20, 20, -PI*0.77, PI*0.56, CHORD);  fill(0);  circle(X-20,Y +10, 10);  circle(X+10,Y -20, 10);  circle(X+20,Y +10, 10);  circle(X-10, Y+50, 10);  circle(X+10,Y +50, 10);  fill(110, 90, 90);  circle(X-20,Y +10, 5);  circle(X+10,Y -20, 5);  circle(X+20,Y +10, 5);  circle(X-10, Y+50, 5);  circle(X+10, Y+50, 5);
    }
    else if(faceChoice == 89) //Alexia Christman
    {
      fill(#FCFFAF);stroke(0);rect( X-100, Y-125,200,250);fill(#E0FFCB);noStroke();circle( X+10, Y-75,30);circle( X-30, Y+25,45);circle( X+80, Y+110,25);circle( X+75, Y+15,25);circle( X-60, Y-70,40);fill(#E9BFFF);noStroke();rect( X-100, Y+75,201,50);fill(#FAA9F2);rect( X-100, Y+105, 201,10);fill( (X-155)%255, (Y-130)%255,255);circle( X-60, Y-75,50);circle( X+50, Y-75,50);fill(0);circle( X-60, Y-75,30);circle( X+50, Y-75,30);fill((X/3)%255,(Y/3)%255,241);circle( X-60, Y-75,15);circle( X+50, Y-75,15);fill(0);textSize(30);textAlign(CENTER);text("Mrs.Sponge",  X-0, Y+0,30);textAlign(LEFT);
    }
    else if(faceChoice == 90) //Mylea Dozier
    {
      stroke(#FC87B2);  fill(#FAA2AF);  push();  translate(X-30,Y+35);  rotate(1);  ellipse(0,0,25,43);  pop();  ellipse(X+20,Y+35,25,43);  stroke(#EAD7B4);  fill(#F7EBD4);  circle(X-43,Y+45,20);  circle(X+25,Y+53,20);  fill(#F7EBD4);  stroke(#EAD7B4);  circle(X+62,Y-5,20);  circle(X+47,Y-5,25);  stroke(#FC87B2);  fill(#FAA2AF);  ellipse(X-40,Y-70,15,30);  noStroke();  fill(#F7EBD4);  ellipse(X-40,Y-70,6,16);  stroke(#FC87B2);  fill(#FAA2AF);  ellipse(X+0,Y+7,90,80);  ellipse(X-20,Y-40,60,60);  noStroke();  fill(#191B1C);  ellipse(X-44,Y-52,8,12);  stroke(#FC87B2);  fill(#FAA2AF);  ellipse(X+0,Y-70,15,30);  noStroke();  fill(#F7EBD4);  ellipse(X+0,Y-70,6,16);  noStroke();  fill(#F7EBD4);  ellipse(X-20,Y+18,45,45);  stroke(#EAD7B4);  ellipse(X-35,Y-30,48,42);  noStroke();  ellipse(X+20,Y-10,45,40);  ellipse(X+20,Y+10,17,30);  fill(#8FD9F5);  ellipse(X+20,Y-11,40,38);  ellipse(X+20,Y+10,13,25);  fill(#F7EBD4);  circle(X+20,Y+11,5);  circle(X+20,Y+18,5);  fill(#191B1C);  ellipse(X-12,Y-51,8,12);  fill(#FCE5EA);  circle(X-2,Y-35,15);  fill(#191B1C);  ellipse(X-34,Y-39,2,4);  ellipse(X-54,Y-39,2,4);  fill(#191B1C);  ellipse(X-8,Y-52,4,2);  stroke(#FC87B2);  fill(#FAA2AF);  push();  translate(X-5,Y+45);  rotate(.5);  ellipse(0,0,25,43);  pop();  push();  translate(X+35,Y+45);  rotate(-.7);  ellipse(0,0,25,43);  pop();  stroke(#FC87B2);  fill(#FCE5EA);  circle(X-26,Y-70,18);  circle(X-26,Y-80,15);  circle(X-26,Y-88,13);  circle(X-26,Y-95,10);  line(X-28,Y-62,X-28,Y-100);  stroke(#EAD7B4);  fill(#F7EBD4);  circle(X-10,Y+55,20);  circle(X+42,Y+55,20);
    }
    else if(faceChoice == 91) //Maka'lyn Cox
    {
      fill(#AF6E0B);circle(X+0, Y+0, 270);fill(45, 35, 15);noStroke();for (int i = 0; i < chipCount; i++){push();translate(X+0, Y+0);rotate(chipRotation[i]);circle(0, chipDist[i], 10);pop();}fill(0);circle(X-60, Y-40, 80);circle(X+60, Y-40, 80);fill(255);circle(X-45,Y-60, 30);circle(X+75, Y-60, 30);circle(X-65, Y-40, 15);circle(X+55, Y-40, 15);strokeWeight(2);fill(0);arc(X+0, Y+50,110, 80, 0, PI);strokeWeight(1);noFill();stroke(0);strokeWeight(2);arc(X-65, Y+50, 20, 20, -HALF_PI, HALF_PI);arc(X+65, Y+50, 20, 20, HALF_PI, HALF_PI*3);
    }
    else if(faceChoice == 92) //Letitia Hall
    {
      fill(0);circle(X+20,Y-70,50);fill(200,0,0);circle(X+0,Y+0,130);fill(255);circle(X+10,Y-90,10);circle(X+40,Y-80,10);strokeWeight(2);fill(00);line(X-20,Y+60,X+20,Y-60);fill(00);circle(X+20,Y+10,20);circle(X-50,Y-20,20);circle(X+50,Y+10,20);circle(X-20,Y-50,20);circle(X-10,Y-20,20);circle(X+30,Y-30,20);circle(X-30,Y+20,20);circle(X+10,Y+50,20);stroke(0);noFill();curve(X-40,Y-120, X+10,Y-120, X+20,Y-90, X+10,Y-90);curve(X+95,Y-65, X+55,Y-105, X+20,Y-80, X+25,Y-75);
    }
    else if(faceChoice == 93) //Weston Wicker
    {
      stroke(180, 130, 42);  strokeWeight(48);  noFill();  circle(X+0, Y+0, 62);  stroke(110, 60, 2);  strokeWeight(40);  noFill();  circle(X+0, Y+0, 60);  fill(250, 42, 229);  noStroke();  pickColor(sprink[0]);  ellipse(X-30, Y-30, 5, 10);  pickColor(sprink[1]);  ellipse(X-20,Y -5, 5, 10);  pickColor(sprink[2]);  ellipse(X-35, Y-15, 5, 10);  pickColor(sprink[3]);  ellipse(X-25, Y+15, 5, 10);  pickColor(sprink[4]);  ellipse(X-15, Y+5, 5, 10);  pickColor(sprink[5]);  ellipse(X+0, Y-30, 5, 10);  pickColor(sprink[6]);  ellipse(X+10, Y-20, 5, 10);  pickColor(sprink[7]);  ellipse(X+15, Y+20, 5, 10);  pickColor(sprink[8]);   ellipse(X+35, Y+0, 5, 10);  pickColor(sprink[9]);   ellipse(X+40, Y-20, 5, 10);  pickColor(sprink[10]);   ellipse(X+5, Y+40, 5, 10);  pickColor(sprink[11]);   ellipse(X-5, Y+30, 5, 10);  pickColor(sprink[12]);   ellipse(X+35, Y+20, 5, 10);
    }
    else if(faceChoice == 94) //Savannah Newton
    {
      fill(#3B2610);  triangle(X-120, Y-80, X-40, Y-100, X+0, Y+0);  triangle(X-240, Y+0,  X-120, Y-80, X+0, Y+0);  triangle(X-240,Y+0, X-90,Y+50,X+0, Y+0);  triangle(X-90, Y+50,X-10,Y+130,X+0, Y+0);  triangle(X+120,Y-80, X+40, Y-100, X+0,Y+0);  triangle(X+240, Y+0, X+120, Y-80, X+0, Y+0);  triangle(X+240, Y+0, X+90, Y+50, X+0, Y+0);  triangle(X+90, Y+50, X+10, Y+130, X+0, Y+0);  fill(200, 170, 140);  ellipse(X+0, Y+0, 40, 70);  ellipse(+0, -32, 25, 5);
    }
    else if(faceChoice == 95) //Lizbeth Garcia
    {
      push();fill(133,222,51);circle(X+0, Y+0, 160);noFill();strokeWeight(3);arc(X+0,Y+0,120,120,0,PI);strokeWeight(1);fill(255);circle(X+0,Y-10,100);fill(19, 176, 214);circle(X-10,Y -20, 50);fill(0);circle(X-10,Y-20, 30);fill(220,224,27);translate(-10,-10);triangle(X-30, Y-60, X-28, Y-75,X -15, Y-65);triangle(X+50,Y-60, X+60, Y-69, X+65, Y-50);pop();
    }
    else if(faceChoice == 96) //Chauncey Johnson
    {
      fill(165,93,94);rect(X-100,Y-100,200,200);fill(0,0,0);rect(X-80,Y-80,158,25);fill(255,255,255);square(X-80,Y-45,30);fill(16,165,9);square(X-50,Y-45,30);fill(16,165,9);square(X+20,Y-45,30);fill(255,255,255);square(X+50,Y-45,30);fill(165,93,94);rect(X-20,Y-15,40,90);square(X-50,Y+45,30);square(X+20,Y+45,30);
    }
    else if(faceChoice == 97) //Landon Smith
    {
      noStroke(); fill(0, 0, 255); rect(X-40, Y-85, 80, 20);   rect(X-60, Y-65, 120, 20);   rect(X-80, Y-45, 160, 130);    noStroke();    fill(0, 0, 255);    rect(X-80, Y+75, 40, 20);    rect(X-20, Y+75, 40, 20);    rect(X+40, Y+75, 40, 20);    noStroke();    fill(#F5A1A1);    rect(X-50, Y-35, 30, 30);   rect(X+20, Y-35, 30, 30);   noStroke();    fill(#F5A1A1);    rect(X-70, Y+25, 10, 10);   rect(X+60, Y+25, 10, 10);   rect(X-60, Y+15, 10, 10);   rect(X-50, Y+25, 20, 10);   rect(X-30, Y+15, 20, 10);   rect(X-10, Y+25, 20, 10);   rect(X+10, Y+15, 20, 10);   rect(X+30, Y+25, 20, 10);   rect(X+50, Y+15, 10, 10);
    }
    else if(faceChoice == 98) //Alex Whiting
    {
      fill(255);noStroke();beginShape();vertex(X-150,Y-100);bezierVertex(X-150,Y-200, X-100,Y-200, X-100,Y-100);bezierVertex(X-100,Y-150, X-125,Y-160, X-125,Y-100);endShape();beginShape();vertex(X+150,Y-100);bezierVertex(X+150,Y-200, X+100,Y-200, X+100,Y-100);bezierVertex(X+100,Y-150, X+125,Y-160, X+125,Y-100);endShape();fill(255);beginShape();vertex(X-150, Y -100);vertex(X-150,Y +0);vertex(X-50,Y +0);vertex(X-25,Y -25);vertex(X+25,Y -25);vertex(X+50,Y +0);vertex(X+150,Y +0);vertex(X+150,Y -100);endShape();fill(255,0,0,200);rect(X-100,Y-70, 70, 40);fill(0,0,255,200);rect(X+30,Y-70, 70, 40);
    }
    else if(faceChoice == 99) //Zach Osburn
    {
      fill(210, 180, 140);  triangle(X-60.0,Y-60.0, X+0,Y+60.0, X+40.0,Y-60.0);  fill(234, 2 , 6);  triangle(X-55,Y-60.0, X+0,Y+55, X+35,Y-60.0);  fill(251,219,101);  triangle(X-57,Y-60.0,X +0,Y+55, X+34,Y-60.0);  fill(215, 192, 163);  rect(X-61,Y-65, 105, 20.0, 10.0);  fill(170,55,17);  circle(X-30.0,Y-40.0, 10.0);  circle(X+10.0,Y-40.0, 10.0);  fill(139,75,6);  rect(X-10.0,Y-20.0, 5,10, 10.0);  arc(X-7.4,Y-15, 10.0,10.0, 0,PI);
    }
    else if(faceChoice == 100) //Cade Norton
    {
      fill(0);  rect(X-60,Y,30,5);  rect(X + 30, Y, 30,5);  fill(255);  circle(X,Y-50,50);  circle(X,Y,60);  circle(X,Y+60,70);  fill(0);  circle(X,Y,20);  circle(X,Y+45,20);  circle(X,Y+75,20);  circle(X-15,Y-50,6);  circle(X-8,Y-44,6);  circle(X,Y-40,6);  circle(X+8,Y-44,6);  circle(X+12,Y-50,6);  stroke(0);  fill(255);  circle(X-10,Y-60,10);  circle(X+10,Y-60,10);  fill(0);  circle(X-10,Y-60,3);  circle(X+10,Y-60,3);  fill(240,107,5);  triangle(X-2,Y-45 ,X-2,Y-55,X+40,Y-50);  fill(0);  ellipse(X-5,Y-76,2,5);  ellipse(X,Y-76,2,5);  ellipse(X+5,Y-76,2,5);
    }
    else if(faceChoice == 101) //Ella Johnston
    {
      fill(#795716);ellipse(X-26.0,Y-46.0,30.0,26.0);fill(#795716);ellipse(X+22.0,Y-46.0,30.0,26.0);fill(#C49743);ellipse(X-26.0,Y-22.0,24.0, 19);ellipse(X+22.0,Y-22.0,24.0,19);fill(#795716);ellipse(X+0,Y+0,100.0,98.0);fill(250,250,250);ellipse(X+14.0,Y-24.0,16.0,16.0);ellipse(X-16.0,Y-24.0, 16.0,16.0);fill(0);ellipse(X+13,Y-24.0,10.0,10.0);ellipse(X-15,Y-24.0,10.0,10.0);fill(0);ellipse(X+19,Y-20.0,2.0,2.0);ellipse(X-15,Y-20.0,2.0,2.0);fill(#C49743);ellipse(X+1,Y+19,63,60.0);fill(0);ellipse(X+1,Y-1,18.0,16.0);noFill();arc(X+1,Y+23,40.0,20.0, 0,PI);
    }
    else if(faceChoice == 102) //Michael Burch
    {
      noStroke(); fill(41, 25, 0);  rect(X-80, Y-80, 21, 21);  rect(X-40, Y-80, 21, 21);  rect(X+60, Y-60, 21, 21); rect(X+20, Y-40, 21, 21);rect(X-40, Y-20, 21, 21); rect(X+0, Y-20, 41, 21);  rect(X-80, Y+0, 161, 21); rect(X-80, Y+20, 21, 61); rect(X+60, Y+20, 21, 61); fill(56, 35, 0);  rect(X-60, Y-80, 21, 21);  rect(X-80, Y-60, 61, 21); rect(X-40, Y-40, 21, 21); fill(31, 20, 0);  rect(X+60, Y-80, 21, 21);  rect(X+40, Y-60, 21, 21);  rect(X-60, Y+20, 21, 21); rect(X+40, Y+20, 21, 21); fill(128, 128, 128);  rect(X+20, Y-80, 41, 21);  rect(X-20, Y-20, 21, 21);  fill(153, 153, 153);  rect(X-20, Y-80, 41, 21);  rect(X-20, Y-60, 61, 21);  rect(X-80, Y-40, 41, 21); rect(X-20, Y-40, 41, 21);  rect(X+40, Y-40, 41, 21);  fill(168, 168, 168);  rect(X-40, Y+20, 81, 21);  rect(X-60, Y+40, 21, 41); rect(X+40, Y+40, 21, 41); fill(103, 103, 103);  rect(X-20, Y+40, 41, 21); rect(X-40, Y+60, 21, 21);  rect(X+20, Y+60, 21, 21);  fill(88, 88, 88);  rect(X-20, Y+60, 41, 21);  fill(0);  rect(X-80, Y-20, 21, 21);  rect(X+60, Y-20, 21, 21); rect(X-40, Y+40, 21, 21); rect(X+20, Y+40, 21, 21); fill(255);  rect(X-60, Y-20, 21, 21);  rect(X+40, Y-20, 21, 21);
    }
    else if(faceChoice == 103) //Wednesday Kelley
    {
      noStroke();    fill(227, 212, 94);    rect(X-10, Y-60, 40, 11);    rect(X-30, Y-50, 80, 11);    rect(X-40, Y-40, 100, 11);    rect(X-50, Y-30, 120, 11);    fill(232, 46, 0);    rect(X-50, Y-30, 120, 11);    fill(227, 212, 94);    rect(X-80, Y-20, 180, 11);    fill(0);    rect(X-70, Y-10, 30, 11);    square(X-30, Y-10, 11);    square(X-10, Y-10, 11);    square(X+20, Y-10, 11);    rect(X+50, Y-10, 30, 11);    square(X-60, Y+0, 11);    square(X+0, Y+0, 11);    square(X+60, Y+0, 11);    square(X-70, Y+10, 11);    square(X+70, Y+10, 11);    square(X-60, Y+30, 11);    square(X+60, Y+30, 11);    square(X-50, Y+40, 11);    square(X+50, Y+40, 11);    fill(222, 191, 134);    square(X-40, Y-10, 11);    square(X-20, Y-10, 11);    square(X+0, Y-10, 11);    square(X+10, Y-10, 11);    square(X+30, Y-10, 11);    square(X+40, Y-10, 11);    square(X-50, Y+0, 11);    square(X-10, Y+0, 11);    square(X+10, Y+0, 11);    square(X+50, Y+0, 11);    square(X-60, Y+10, 11);    square(X-50, Y+10, 11);    square(X-10, Y+10, 11);    square(X+0, Y+10, 11);    square(X+10, Y+10, 11);    square(X+50, Y+10, 11);    square(X+60, Y+10, 11);    square(X-60, Y+20, 11);    square(X-50, Y+20, 11);    square(X-10, Y+20, 11);    square(X+0, Y+20, 11);    square(X+10, Y+20, 11);    square(X+50, Y+20, 11);    square(X+60, Y+20, 11);    rect(X-50, Y+30, 80, 11);   square(X+50, Y+30, 11);    rect(X-40, Y+40, 90, 11);   fill(209, 135, 135);    square(X+40, Y+30, 11);  square(X+30, Y+30, 11);  fill(224, 222, 222);    square(X-40, Y+10, 11);   square(X-30, Y+10, 11);   square(X-20, Y+10, 11);   square(X-30, Y+0, 11);    square(X-20, Y+0, 11);    square(X-40, Y+20, 11);    square(X-30, Y+20, 11);    square(X-20, Y+20, 11);    square(X+20, Y+10, 11);    square(X+30, Y+10, 11);    square(X+40, Y+10, 11);    square(X+30, Y+20, 11);    square(X+20, Y+20, 11);    square(X+40, Y+20, 11);    square(X+30, Y+0, 11);    square(X+40, Y+0, 11);    fill(250, 250, 250);    square(X+20, Y+0, 11);    square(X-40, Y+0, 11);
    }
    else if(faceChoice == 104) //Braeden Fouts
    {
      beginShape();fill(215,215,0);vertex(X-20,Y-100);vertex(X+20,Y-100);vertex(X+60,Y-80);vertex(X+80,Y-60);vertex(X+100,Y-20);vertex(X+100,Y+20);vertex(X+80,Y+60);vertex(X+60,Y+80);vertex(X+20,Y+100);vertex(X-20,Y+100);vertex(X-60,Y+80);vertex(X-80,Y+60);vertex(X-100,Y+20);vertex(X-100,Y-20);vertex(X-80,Y-60);vertex(X-60,Y-80);vertex(X-20,Y-100);endShape();noFill();stroke(150,50,0);beginShape();vertex(X-90,Y-40);vertex(X-70,Y-20);vertex(X-20,Y-20);vertex(X-20,Y-70);vertex(X-40,Y-90);endShape();beginShape();vertex(X+90,Y-40);vertex(X+70,Y-20);vertex(X+20,Y-20);vertex(X+20,Y-70);vertex(X+40,Y-90);endShape();beginShape();vertex(X-90,Y+40);vertex(X-70,Y+20);vertex(X+70,Y+20);vertex(X+90,Y+40);endShape();beginShape();vertex(X-85,Y-10);vertex(X-75,Y-10);vertex(X-70,Y-5);vertex(X-70,Y+5);vertex(X-75,Y+10);vertex(X-85,Y+10);vertex(X-90,Y+5);vertex(X-90,Y-5);vertex(X-85,Y-10);endShape();beginShape();vertex(X-7.5,Y-85);vertex(X-10,Y-80);vertex(X-10,Y-75);vertex(X-5,Y-70);vertex(X,Y-75);vertex(X+5,Y-70);vertex(X+10,Y-75);vertex(X+10,Y-80);vertex(X+7.5,Y-85);endShape();beginShape();vertex(X+70,Y+10);vertex(X+70,Y-10);vertex(X+90,Y+10);vertex(X+90,Y-10);endShape();stroke(0);fill(215,0,0);beginShape();vertex(X-60,Y+80);vertex(X-20,Y+60);vertex(X-40,Y+80);vertex(X,Y+90);vertex(X+40,Y+80);vertex(X+40,Y+90);vertex(X+20,Y+100);vertex(X-20,Y+100);vertex(X-60,Y+80);endShape();fill(100,100,215);beginShape();vertex(X+40,Y+90);vertex(X+40,Y+80);vertex(X+20,Y+60);vertex(X+60,Y+80);vertex(X+40,Y+90);endShape();fill(235,170,95);beginShape();vertex(X-20,Y+60);vertex(X-20,Y+50);vertex(X-40,Y+10);vertex(X-30,Y);vertex(X-20,Y-20);vertex(X,Y-30);vertex(X+20,Y-20);vertex(X+30,Y);vertex(X+40,Y+10);vertex(X+20,Y+50);vertex(X+20,Y+60);vertex(X+40,Y+80);vertex(X,Y+90);vertex(X-40,Y+80);vertex(X-20,Y+60);endShape();line(X-20,Y+70,X-20,Y+50);line(X+20,Y+70,X+20,Y+50);line(X-20,Y+50,X,Y+60);line(X+20,Y+50,X,Y+60);fill(185,120,45);beginShape();vertex(X-40,Y+70);vertex(X-30,Y+50);vertex(X-40,Y+30);vertex(X-50,Y);vertex(X-40,Y-30);vertex(X-30,Y-40);vertex(X,Y-50);vertex(X+30,Y-40);vertex(X+40,Y-30);vertex(X+50,Y);vertex(X+40,Y+30);vertex(X+30,Y+50);vertex(X+40,Y+70);vertex(X+20,Y+60);vertex(X+20,Y+50);vertex(X+40,Y+10);vertex(X+30,Y);vertex(X+20,Y-20);vertex(X,Y-30);vertex(X-20,Y-20);vertex(X-30,Y);vertex(X-40,Y+10);vertex(X-20,Y+50);vertex(X-20,Y+60);vertex(X-40,Y+70);endShape();line(X-30,Y,X-30,Y+30);line(X+30,Y,X+30,Y+30);line(X,Y-50,X,Y-30);stroke(0);line(X-40,Y+30,X-20,Y+50);line(X,Y-50,X-40,Y-30);line(X,Y-40,X-43.33,Y-19);line(X,Y-30,X-46.66,Y-6);line(X-26.66,Y-6,X-47.5,Y+4);line(X-30,Y,X-46,Y+13.33);line(X-36.66,Y+18,X-43,Y+22);line(X-32,Y+26.66,X-40,Y+30);line(X-26.66,Y+35,X-35,Y+39);line(X-23.33,Y+42,X-31.5,Y+46);line(X-20,Y+50,X-32.5,Y+56);line(X+20,Y+50,X+40,Y+30);line(X,Y-50,X+40,Y-30);line(X,Y-40,X+43.33,Y-19);line(X,Y-30,X+46.66,Y-6);line(X+26.66,Y-6,X+47.5,Y+4);line(X+30,Y,X+46,Y+13.33);line(X+36.66,Y+18,X+43,Y+22);line(X+32,Y+26.66,X+40,Y+30);line(X+26.66,Y+35,X+35,Y+39);line(X+23.33,Y+42,X+31.5,Y+46);line(X+20,Y+50,X+33,Y+56);
    }
    else if(faceChoice == 105) //Emaleigh Hammonds
    {
      stroke(0);fill( 250, 0, 0);strokeWeight(4);line(X+90, Y-37.5, X+122.5, Y-52.5);line(X+100, Y+0, X+135, Y+0);line(X+72.5, Y+55, X+110, Y+80);line(X-90, Y-37.5, X-122.5, Y-52.5);line(X-100, Y-0, X-135, Y-0);line(X-78.5, Y+55, X-107.5, Y+80);strokeWeight(2.5);stroke(0);circle(X+0, Y+0, 200);fill(0);circle(X-75, Y-25, 25);circle(X-50, Y+25, 25);circle(X+65, Y-25, 25);circle(X+50, Y+25, 25);circle(X+25, Y+75, 25);circle(X-25, Y+75, 25);fill(0);rect(X+0, Y-40, 5, 140);strokeWeight(5);line(X+90, Y-40, X-90, Y-40);noStroke();fill(255);circle(X-25, Y-75, 35);circle(X+25, Y-75, 35);fill(#99CAFC);circle(X+25, Y-75, 20);circle(X-25, Y-75, 20);fill(255);circle(X-30, Y-80, 5);circle(X+30, Y-80, 5);fill(0);circle(X+25, Y-75, 10);circle(X-25, Y-75, 10);stroke(0);strokeWeight(3);line(X-50, Y-87.5, X-65, Y-110);circle(X-67.5, Y-115, 15);line(X+50, Y-87.5, X+65, Y-110);circle(X+67.5, Y-115, 15);
    }
    else if(faceChoice == 106) //Carlee Hart
    {
      noStroke();fill(#B02FE8);rect(X-70,Y-30,11,41);square(X-60,Y+10,11);square(X-60,Y-40,11);square(X-50,Y-50,11);rect(X-50,Y+20,100,11);rect(X-40,Y-60,20,11);rect(X-20,Y-70,40,11);rect(X+20,Y-60,20,11);square(X+40,Y-50,11);square(X+50,Y-40,11);rect(X+60,Y-30,11,41);square(X+50,Y+10,11);fill(#E3E3E3);rect(X-50,Y-40,11,31);rect(X-40,Y-50,11,61);rect(X-30,Y-50,11,51);rect(X-20,Y-60,11,81);rect(X-10,Y-60,11,71);rect(X,Y-60,11,81);rect(X+10,Y-60,11,81);rect(X+20,Y-50,11,71);rect(X+30,Y-50,11,61);rect(X+40,Y-40,11,61);rect(X+50,Y-30,11,21);fill(#ADADAD);rect(X-60,Y-30,11,41);rect(X-50,Y-10,11,31);square(X-40,Y+10,11);rect(X-30,Y,11,21);square(X-10,Y+10,11);square(X+30,Y+10,11);square(X+40,Y-10,11);rect(X+50,Y-10,11,21);fill(#794AA0);rect(X,Y-20,20,11);fill(#B28BD3);square(X-30,Y-30,11);square(X+20,Y-40,11);  
    }
    else if(faceChoice == 107) //Harold Coronado
    {
      noStroke();if(outline == true && character == 1) drawSansOutline(X-(390/2)*sansSize,Y-(350/2)*sansSize, sansSize);if(character == 1) drawSans(X-(390/2)*sansSize,Y-(350/2)*sansSize, sansSize);else drawPapyrus(X-((390/2)-40)*papSize,Y-((350/2)-20)*papSize, papSize);if (mousePressed){ if (character == 1)mega = true; else spaget = true;}else { mega = false;spaget = false;}if(mega == true && character == 1) {if(sansFace == 0) {sansFace0(X-(390/2)*sansSize,Y-(350/2)*sansSize, sansSize);}if (sansFace == 1) {sansFace1(X-(390/2)*sansSize,Y-(350/2)*sansSize, sansSize);} if (sansFace == 2) {sansFace2(X-(390/2)*sansSize,Y+((350/2)-40)*sansSize, sansSize);}}if(spaget == true && character == 0){papforhead(X-((390/2)-40)*papSize,Y-((350/2)-20)*papSize,papSize);if(papFace == 0){papFace0(X-((390/2)-40)*papSize,Y-((350/2)-20)*papSize,papSize);}if(papFace == 1) {papFace1(X-((390/2)-40)*papSize,Y-((350/2)-20)*papSize,papSize);}if (papFace == 2) {papFace2(X-((390/2)-40)*papSize,Y-((350/2)-20)*papSize, papSize);}}if (sansSize < 1 || papSize < 1)h = 11;
    }
    else if(faceChoice == 108) //Canon Dorsey
    {
      noStroke();fill(#FFF9E5);quad(X+30-100,Y+70-150,X+180-100,Y+70-150,X+150-100,Y+250-150,X+60-100,Y+250-150);noStroke();fill(#9D876C);quad(X+35-100,Y+50-150,X+175-100,Y+50-150,X+180-100,Y+65-150,X+30-100,Y+65-150);rect(X+25-100,Y+65-150,160,10);noStroke();fill(#9D876C);quad(X+35-100,Y+130-150,X+175-100,Y+130-150,X+165-100,Y+200-150,X+45-100,Y+200-150);noStroke();fill(0);circle(X+70-100,Y+160-150,40);circle(X+140-100,Y+160-150,40);fill(255);circle(X+65-100,Y+150-150,10);circle(X+135-100,Y+150-150,10);circle(X+80-100,Y+170-150,5);circle(X+150-100,Y+170-150,5);noStroke();fill(0);rect(X+95-100,Y+175-150,20,10);stroke(0);strokeWeight(2);fill(255);ellipse(X+105-100,Y+185-150,18,10);
    }
    else if(faceChoice == 109) //Michael Rousseau
    {
      fill(0);circle(X+0, Y+0, 275);fill(255);circle(X-65,Y+50, 60);fill(0);circle(X-53,Y +35, 70);push();noStroke();translate(X+0,Y +0);fill(255);rotate(-HALF_PI);for (float i = 0; i < PI; i+= 0.03){rotate(0.03);circle(0, (i*550%137), 3);}pop();fill(255);arc(X+0,Y+0, 275, 275, PI, TWO_PI);fill(0);circle(X+60,Y-50, 60);fill(255);triangle(X+0, Y+0, X+50,Y+100, X+100,Y+0);triangle(X+120,Y+0,X+75, Y+90,X+40,Y+0 );triangle(X-20, Y+0,X+10,Y+60,X+50 ,Y+0);triangle(X+130,Y+0 ,X+110 ,Y+35,X+90,Y+0 );fill(0);triangle(X-42,Y-75,X-55,Y-10 ,X-30,Y-10);triangle(X-12,Y -60,X-20,Y-10,X -5, Y-10);triangle(X-70,Y -50,X-60,Y -10 ,X-80 ,Y-10);triangle(X+16,Y-50 ,X +8,Y-10 ,X+25 ,Y-10 );triangle(X-95,Y-35,X-90,Y-14,X-102 ,Y-5 );triangle(X-125,Y-5,X -110,Y-5, X-115, Y-30);rect(X+15, Y-10, 5, 10);rect(X-15,Y -10, 5, 10);rect(X-45,Y-10, 7, 10);rect(X-73,Y-10, 7, 10);rect(X-97, Y-10, 5, 10);rect(X-119, Y-10, 5, 10);
    }
    
    //Credit
    if( !destroyed && dist(X,Y,mouseX,mouseY) < 100 )
    {
      fill(255,100);
      textSize(30);
      textAlign(CENTER);
      text(creator,X,Y+100);
    }
  }
}
