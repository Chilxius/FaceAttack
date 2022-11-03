//The game's enemies, which are faces drawn
//by my students and me.

//Edit the drawFace() method to add new faces.
//If they were using mouseX and mouseY, change it to X and Y (find and replace)
//Edit the changeFace() method based on the faces available.

class Face
{
  float X,Y;
  float speed;
  boolean destroyed,goingRight;
  int boomCounter, faceChoice;
  float width1,height1; //for one of the faces' code
  EnemyShot shot;
  
  public Face( float x, float y )
  {
    X = x;
    Y = y;
    speed = random(.5,2+activeFaces/10);
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
  
  public int changeFace()
  {
    return int(random(29)); //Change this number based on how many faces there are
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
  
  public void drawFace()
  {
    noStroke();
    if(destroyed)
      drawExplosion();
    else if(faceChoice == 0) //Ja'Shawn G
    {
      fill(#FFA600);rect(X-50,Y-80,20,40);rect(X+30,Y-80,20,40);fill(#FF0516);ellipse(X-0,Y-10,160,160);fill(#F7E00C);rect(X-30,Y+10,60,20);fill(#FFF700);rect(X-50,Y-40,40,20);rect(X+10,Y-40,40,20);fill(#FF0015);triangle(X-0,Y+0,X-10,Y+10,X-10,Y+10);
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
      stroke(20);fill(255);ellipse(X+5,Y-20, 20, 20);strokeWeight(3);line(X+5,Y-10,X+5,Y+23);line(X+5,Y+23,X+0,Y+50);line(X+5, Y+23, X+20,Y+50);line(X+4, Y-1,X-10,Y+10);line(X+4, Y-1, X+30, Y+10);
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
      noStroke();fill(0, 200, 0);rect(X-100+0, Y-50+0, 200, 100);fill(255);circle(X-100+40, Y-50+30, 40);circle(X-100+100, Y-50+30, 40);circle(X-100+160, Y-50+30, 40);fill(255, 150, 240);rotation = atan2( mouseY-(Y-20), mouseX-(X-60) );translate(X-100+40, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+40), -(Y-50+30));rotation = atan2( mouseY-(Y-30), mouseX-X );translate(X-100+100, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+100), -(Y-50+30));rotation = atan2( mouseY-(Y-10), mouseX-(X+60) );translate(X-100+160, Y-50+30);rotate( rotation ); circle(10.5,0,20);rotate( -rotation);translate(-(X-100+160), -(Y-50+30));fill(200, 0, 0);rect(X-100+50, Y-50+60, 100, 30);fill(0);rect(X-100+60, Y-50+70, 80, 10);fill(255);triangle(X-100+50, Y-50+60, X-100+60, Y-50+60, X-100+55, Y-50+70);triangle(X-100+70, Y-50+60, X-100+80, Y-50+60, X-100+75, Y-50+70);triangle(X-100+90, Y-50+60, X-100+100, Y-50+60, X-100+95, Y-50+70);triangle(X-100+110, Y-50+60, X-100+120, Y-50+60, X-100+115, Y-50+70);triangle(X-100+130, Y-50+60, X-100+140, Y-50+60, X-100+135, Y-50+70);triangle(X-100+60, Y-50+90, X-100+70, Y-50+90, X-100+65, Y-50+80);triangle(X-100+80, Y-50+90, X-100+90, Y-50+90, X-100+85, Y-50+80);triangle(X-100+100, Y-50+90, X-100+110, Y-50+90, X-100+105, Y-50+80);triangle(X-100+120, Y-50+90, X-100+130, Y-50+90, X-100+125, Y-50+80);triangle(X-100+140, Y-50+90, X-100+150, Y-50+90, X-100+145, Y-50+80);triangle(X-100+50, Y-50+75, X-100+50, Y-50+85, X-100+60, Y-50+80);triangle(X-100+150, Y-50+65, X-100+150, Y-50+75, X-100+140, Y-50+70);
    }
  }
}