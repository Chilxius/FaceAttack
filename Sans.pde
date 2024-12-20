float h = 10;
int mLeft = (390/2)+5;
int outX = -10;
int longer = 20;
int counter = 0;
boolean mega = false;
boolean spaget = false;

//settings
float sansSize = .5;
float papSize = .5;
int papX = 50;
int papY = 5;
boolean outline = true;

void drawPapyrus(float x, float y, float size) {
  beginShape();
  fill(250);
  //white fill
  rect(x+80*size,y+20*size,120*size,h*size);
  rect(x+70*size,y+30*size,140*size,h*size);
  rect(x+60*size,y+40*size,160*size,h*size);
  rect(x+50*size,y+50*size,180*size,h*size);
  rect(x+40*size,y+60*size,200*size,h*size);
  rect(x+40*size,y+70*size,200*size,h*size);
  rect(x+40*size,y+80*size,200*size,h*size);
  rect(x+40*size,y+90*size,200*size,h*size);
  
  rect(x+40*size,y+100*size,200*size,h*size);
  rect(x+40*size,y+110*size,200*size,h*size);
  rect(x+40*size,y+120*size,200*size,h*size);
  rect(x+40*size,y+130*size,200*size,h*size);
  rect(x+40*size,y+140*size,200*size,h*size);
  rect(x+40*size,y+150*size,190*size,h*size);
  rect(x+40*size,y+160*size,190*size,h*size);
  rect(x+40*size,y+170*size,190*size,h*size);
  rect(x+40*size,y+180*size,190*size,h*size);
  rect(x+40*size,y+190*size,190*size,h*size);
  rect(x+50*size,y+200*size,180*size,h*size);
  
  rect(x+70*size,y+210*size,160*size,h*size);
  rect(x+70*size,y+220*size,160*size,h*size);
  rect(x+70*size,y+230*size,160*size,h*size);
  rect(x+80*size,y+240*size,150*size,h*size);
  rect(x+90*size,y+250*size,140*size,h*size);
  rect(x+90*size,y+260*size,140*size,h*size);
  rect(x+90*size,y+270*size,140*size,h*size);
  rect(x+80*size,y+280*size,140*size,h*size);
  rect(x+80*size,y+290*size,140*size,h*size);
  rect(x+80*size,y+300*size,130*size,h*size);
  rect(x+80*size,y+310*size,120*size,h*size);
  rect(x+80*size,y+320*size,110*size,h*size);
  
  fill(0);

  //outline
  rect(x+80*size,y+10*size,120*size,h*size);
  rect(x+70*size,y+20*size,h*size,h*size);
  rect(x+60*size,y+30*size,h*size,h*size);
  rect(x+50*size,y+40*size,h*size,h*size);
  rect(x+40*size,y+50*size,h*size,h*size);
  rect(x+30*size,y+60*size,h*size,130*size);
  
  rect(x+40*size,y+140*size,h*size,h*size);
  rect(x+50*size,y+150*size,h*size,20*size);
  rect(x+60*size,y+140*size,h*size,h*size);
  
  rect(x+40*size,y+170*size,h*size,30*size);
  rect(x+50*size,y+190*size,h*size,20*size);
  rect(x+60*size,y+170*size,h*size,40*size);
  rect(x+70*size,y+200*size,h*size,40*size);
  rect(x+80*size,y+240*size,h*size,h*size);
    

  rect(x+70*size,y+300*size,h*size,20*size);
  rect(x+80*size,y+320*size,110*size,h*size);
  rect(x+190*size,y+310*size,h*size,h*size);
  rect(x+200*size,y+300*size,h*size,h*size);
  rect(x+210*size,y+280*size,h*size,20*size);
  rect(x+220*size,y+160*size,h*size,120*size);
  rect(x+230*size,y+150*size,h*size,h*size);
  rect(x+210*size,y+140*size,20*size,h*size);
  rect(x+210*size,y+130*size,h*size,h*size);
  rect(x+240*size,y+60*size,h*size,90*size);  
  
  rect(x+230*size,y+50*size,h*size,h*size);
  rect(x+220*size,y+40*size,h*size,h*size);
  rect(x+210*size,y+30*size,h*size,h*size);
  rect(x+200*size,y+20*size,h*size,h*size);
  rect(x+190*size,y+10*size,h*size,h*size);

  //features
  //left eye
  rect(x+80*size,y+70*size,h*size,80*size);
  rect(x+90*size,y+60*size,h*size,90*size);
  rect(x+100*size,y+70*size,h*size,70*size);
  
  //left eyebrow
  rect(x+80*size,y+40*size,h*size,h*size);
  rect(x+90*size,y+30*size,h*size,h*size);
  rect(x+100*size,y+40*size,h*size,h*size);
  
  //right eye
  rect(x+160*size,y+90*size,h*size,50*size);
  rect(x+170*size,y+80*size,h*size,70*size);
  rect(x+180*size,y+90*size,h*size,60*size);
  
  //left eyebrow
  rect(x+160*size,y+60*size,h*size,h*size);
  rect(x+170*size,y+50*size,h*size,h*size);
  rect(x+180*size,y+60*size,h*size,h*size);
 
  //nose
  rect(x+110*size,y+150*size,h*size,30*size);
  rect(x+120*size,y+140*size,h*size,30*size);
  rect(x+130*size,y+160*size,h*size,20*size);
    
  //mouth
  rect(x+80*size,y+210*size,100*size,h*size);
  rect(x+180*size,y+200*size,h*size,h*size);
  
  //top teeth dividers
  rect(x+100*size,y+210*size,h*size,40*size);
  rect(x+130*size,y+210*size,h*size,40*size);
  rect(x+160*size,y+210*size,h*size,40*size);
  rect(x+190*size,y+180*size,h*size,80*size);
  rect(x+200*size,y+150*size,h*size,100*size);
  rect(x+180*size,y+240*size,h*size,h*size);
  
  //mouth black part
  rect(x+90*size,y+250*size,120*size,h*size);

  rect(x+90*size,y+260*size,120*size,h*size);
  rect(x+90*size,y+270*size,110*size,h*size);
  rect(x+80*size,y+280*size,h*size,20*size);   
  rect(x+100*size,y+280*size,h*size,30*size);
  rect(x+80*size,y+290*size,30*size,h*size);

  //bottom teeth dividers
  rect(x+120*size,y+280*size,h*size,20*size);
  rect(x+140*size,y+280*size,h*size,20*size);
  rect(x+160*size,y+280*size,h*size,20*size);
  rect(x+180*size,y+280*size,h*size,h*size);
  rect(x+170*size,y+290*size,h*size,h*size);
  
  rect(x+100*size,y+300*size,70*size,h*size);
endShape();

}

void papforhead(float x, float y, float size) {
  //white
  fill(250);
  rect(x+80*size,y+20*size,120*size,h*size);
  rect(x+70*size,y+30*size,140*size,h*size);
  rect(x+60*size,y+40*size,160*size,h*size);
  rect(x+50*size,y+50*size,180*size,h*size);
  rect(x+40*size,y+60*size,200*size,h*size);
  rect(x+40*size,y+70*size,200*size,h*size);
  rect(x+40*size,y+80*size,200*size,h*size);
  rect(x+40*size,y+90*size,200*size,h*size);
  
  rect(x+40*size,y+100*size,200*size,h*size);
  rect(x+40*size,y+110*size,200*size,h*size);
  rect(x+40*size,y+120*size,200*size,h*size);
  rect(x+40*size,y+130*size,150*size,h*size);
  rect(x+80*size,y+140*size,20*size,h*size);
  rect(x+170*size,y+140*size,20*size,h*size);
  
}

void drawPapOutline(float x, float y, float size) {
  fill(250);
  beginShape();
  //whiteoutline
  rect(x+80*size,y+0*size,120*size,h*size);
  rect(x+70*size,y+10*size,140*size,h*size);
  rect(x+60*size,y+20*size,160*size,h*size);
  rect(x+50*size,y+30*size,180*size,h*size);
  rect(x+40*size,y+40*size,200*size,h*size);
  rect(x+30*size,y+50*size,220*size,h*size);
  rect(x+20*size,y+60*size,240*size,h*size);
  rect(x+20*size,y+70*size,240*size,h*size);
  rect(x+20*size,y+80*size,240*size,h*size);
  rect(x+20*size,y+90*size,240*size,h*size);
  rect(x+20*size,y+100*size,240*size,h*size);
  rect(x+20*size,y+110*size,240*size,h*size);
  rect(x+20*size,y+120*size,240*size,h*size);
  rect(x+20*size,y+130*size,240*size,h*size);
  rect(x+20*size,y+140*size,240*size,h*size);
  rect(x+20*size,y+150*size,230*size,h*size);
  rect(x+20*size,y+160*size,220*size,h*size);
  rect(x+20*size,y+170*size,220*size,h*size);
  rect(x+20*size,y+180*size,220*size,h*size);
  rect(x+30*size,y+190*size,210*size,h*size);
  rect(x+40*size,y+200*size,200*size,h*size);
  rect(x+50*size,y+210*size,190*size,h*size);
  rect(x+60*size,y+220*size,180*size,h*size);
  rect(x+60*size,y+230*size,180*size,h*size);
  rect(x+70*size,y+240*size,170*size,h*size);
  rect(x+80*size,y+250*size,160*size,h*size);
  rect(x+80*size,y+260*size,160*size,h*size);
  rect(x+80*size,y+270*size,160*size,h*size);
  rect(x+70*size,y+280*size,160*size,h*size);
  rect(x+70*size,y+290*size,160*size,h*size);
  rect(x+60*size,y+300*size,160*size,h*size);
  rect(x+60*size,y+310*size,150*size,h*size);
  rect(x+70*size,y+320*size,130*size,h*size);
  rect(x+80*size,y+330*size,110*size,h*size);
endShape();
}

void papFace0(float x, float y, float size) {
  
  //blushing PAP
  fill(250);
  rect(x+60*size,y+140*size,h*size,h*size);
  
  fill(0);
  rect(x+60*size,y+150*size,h*size,h*size);
  //left eye
  rect(x+80*size,y+60*size,30*size,h*size);
  rect(x+70*size,y+70*size,h*size,50*size);
  rect(x+80*size,y+90*size,h*size,h*size);
  rect(x+90*size,y+70*size,h*size,50*size);
  rect(x+100*size,y+70*size,h*size,40*size);
  rect(x+80*size,y+110*size,h*size,20*size);
  rect(x+110*size,y+70*size,h*size,60*size);
  rect(x+80*size,y+130*size,30*size,h*size);

  //right eye
  rect(x+150*size,y+80*size,h*size,50*size);
  rect(x+160*size,y+70*size,30*size,h*size);
  rect(x+190*size,y+80*size,h*size,50*size);
  rect(x+160*size,y+130*size,30*size,h*size);
  
  rect(x+170*size,y+80*size,h*size,40*size);
  rect(x+180*size,y+80*size,h*size,30*size);
  rect(x+160*size,y+100*size,h*size,20*size);
  
  //blushes
  fill(240,120,170);
  //left Blush
  rect(x+60*size,y+160*size,30*size,h*size);
  rect(x+70*size,y+170*size,20*size,h*size);
  //right blush
  rect(x+160*size,y+160*size,40*size,h*size);
  rect(x+160*size,y+170*size,40*size,h*size); 
}

void papFace1(float x, float y, float size) {
//crazy pap    
  //features
  fill(0);
  //left eye
  rect(x+60*size,y+90*size,h*size,30*size);  
  rect(x+70*size,y+120*size,h*size,h*size);
  rect(x+80*size,y+130*size,20*size,h*size);
  rect(x+100*size,y+120*size,h*size,h*size);
  rect(x+110*size,y+90*size,h*size,30*size);
  rect(x+100*size,y+80*size,h*size,h*size);
  rect(x+80*size,y+70*size,20*size,h*size);
  rect(x+70*size,y+80*size,h*size,h*size);
  //left pupil
  rect(x+80*size,y+90*size,20*size,20*size);
  //right eye
  rect(x+(60+80)*size,y+90*size,h*size,30*size);  
  rect(x+(80+80)*size,y+130*size,20*size,h*size);
  rect(x+(70+80)*size,y+120*size,h*size,h*size);
  rect(x+(100+80)*size,y+120*size,h*size,h*size);
  rect(x+(110+80)*size,y+90*size,h*size,30*size);
  rect(x+(100+80)*size,y+80*size,h*size,h*size);
  rect(x+(80+80)*size,y+70*size,20*size,h*size);
  rect(x+(70+80)*size,y+80*size,h*size,h*size);  
  //right pupel
  rect(x+(80+80)*size,y+100*size,20*size,20*size);
    
  //eyebrows
  rect(x+110*size,y+70*size,h*size,h*size);
  rect(x+100*size,y+60*size,h*size,h*size);
  rect(x+90*size,y+50*size,h*size,h*size);
  rect(x+80*size,y+40*size,h*size,h*size);
    
  rect(x+140*size,y+70*size,h*size,h*size);  
  rect(x+150*size,y+60*size,h*size,h*size);  
  rect(x+160*size,y+50*size,h*size,h*size);  
  rect(x+170*size,y+40*size,h*size,h*size);  
}

void papFace2(float x, float y, float size) {
    fill(250);
    rect(x+60*size,y+140*size,h*size,h*size);
  
    fill(0);
    rect(x+60*size,y+150*size,h*size,h*size);
    
    rect(x+60*size,y+130*size,h*size,h*size);
    rect(x+60*size,y+50*size,h*size,h*size);
    rect(x+70*size,y+60*size,h*size,80*size);  
    rect(x+80*size,y+70*size,h*size,70*size);
    rect(x+90*size,y+80*size,h*size,h*size);
    rect(x+100*size,y+90*size,h*size,h*size);
    
    rect(x+140*size,y+90*size,70*size,h*size);
    rect(x+160*size,y+90*size,h*size,40*size);
    rect(x+170*size,y+90*size,h*size,40*size);
    rect(x+150*size,y+130*size,40*size,h*size);
}


void drawSans(float x, float y, float size) {
  beginShape();
  //back-bone +outX
  fill(250);
  rect(x+120*size,y+10*size,(80+80)*size,h*size);
  rect(x+100*size,y+20*size,(100+110)*size,h*size);
  rect(x+80*size,y+30*size,(120+120)*size,h*size);
  rect(x+60*size,y+40*size,(140+140)*size,h*size);
  rect(x+50*size,y+50*size,(150+150)*size,h*size);
  rect(x+40*size,y+60*size,(170+150)*size,h*size);
  rect(x+30*size,y+70*size,(170+170)*size,h*size);

  rect(x+20*size,y+80*size,(180+170)*size,h*size);
  rect(x+20*size,y+90*size,(180+170)*size,h*size);
  rect(x+20*size,y+100*size,(180+170)*size,h*size);

  rect(x+10*size,y+110*size,(190+180)*size,h*size);
  rect(x+10*size,y+120*size,(190+180)*size,h*size);
  rect(x+10*size,y+130*size,(190+180)*size,h*size);
  rect(x+10*size,y+140*size,(190+180)*size,h*size);
  rect(x+10*size,y+150*size,(190+180)*size,h*size);
  rect(x+10*size,y+160*size,(190+180)*size,h*size);

  rect(x+20*size,y+170*size,(180+170)*size,h*size);
  rect(x+20*size,y+180*size,(180+170)*size,h*size);
  rect(x+30*size,y+190*size,(170+160)*size,h*size);

  rect(x+40*size,y+200*size,(160+150)*size,h*size);
  rect(x+40*size,y+210*size,(160+150)*size,h*size);
  rect(x+40*size,y+220*size,(170+150)*size,h*size);
  
  rect(x+30*size,y+230*size,(170+160)*size,h*size);
  rect(x+30*size,y+240*size,(170+170)*size,h*size);
  rect(x+30*size,y+250*size,(170+170)*size,h*size);
  rect(x+30*size,y+260*size,(170+170)*size,h*size);
  rect(x+30*size,y+270*size,(170+170)*size,h*size);
  rect(x+30*size,y+280*size,(170+170)*size,h*size);
  
  rect(x+40*size,y+290*size,(170+150)*size,h*size);
  rect(x+50*size,y+300*size,(160+140)*size,h*size);
  rect(x+60*size,y+310*size,(160+110)*size,h*size);
  rect(x+80*size,y+320*size,(160+70)*size,h*size);
  rect(x+100*size,y+330*size,(160+30)*size,h*size);
  
  //facial features
  //Left Eye 
  fill(0);
  rect(x+80*size,y+110*size,60*size,h*size);
  rect(x+60*size,y+120*size,90*size,h*size);
  rect(x+50*size,y+130*size,110*size,h*size);
  
  rect(x+40*size,y+140*size,120*size,h*size);
  rect(x+40*size,y+150*size,120*size,h*size);
  rect(x+40*size,y+160*size,120*size,h*size);
  
  rect(x+50*size,y+170*size,100*size,h*size);
  rect(x+60*size,y+180*size,90*size,h*size);
  rect(x+80*size,y+190*size,70*size,h*size);
  rect(x+130*size,y+200*size,h*size,h*size);
  rect(x+110*size,y+210*size,20*size,h*size);
  
  //right eye
  rect(x+(mLeft+60)*size,y+110*size,60*size,h*size);
  rect(x+(mLeft+50)*size,y+120*size,90*size,h*size);
  rect(x+(mLeft+40)*size,y+130*size,110*size,h*size);
  rect(x+(mLeft+40)*size,y+140*size,120*size,h*size);
  rect(x+(mLeft+40)*size,y+150*size,120*size,h*size);
  rect(x+(mLeft+40)*size,y+160*size,120*size,h*size);
  rect(x+(mLeft+40)*size,y+170*size,120*size,h*size);
  rect(x+(mLeft+50)*size,y+180*size,100*size,h*size);
  rect(x+(mLeft+50)*size,y+190*size,80*size,h*size);
  rect(x+(mLeft+60)*size,y+200*size,h*size,h*size);
  rect(x+(mLeft+70)*size,y+210*size,20*size,h*size);
  //puipils
  
  //left pupil
  fill(250);
  rect(x+90*size,y+150*size,20*size,h*size);
  rect(x+90*size,y+160*size,20*size,h*size);
  
  //right puipl
  rect(x+(mLeft+80)*size,y+150*size,20*size,h*size);
  rect(x+(mLeft+80)*size,y+160*size,20*size,h*size);
  
  int moveX = 10;
  //nose
  fill(0);
  rect(x+(190+moveX)*size,y+170*size,h*size,h*size);
  
  rect(x+(180+moveX)*size,y+180*size,30*size,h*size);
  rect(x+(180+moveX)*size,y+190*size,30*size,h*size);
  
  rect(x+(170+moveX)*size,y+200*size,50*size,h*size);
  rect(x+(170+moveX)*size,y+210*size,50*size,h*size);
  rect(x+(170+moveX)*size,y+220*size,50*size,h*size);
  
  //mouth
  rect(x+(80+moveX)*size,y+220*size,h*size,h*size);
  rect(x+(80+moveX)*size,y+230*size,h*size,h*size);
  rect(x+(70+moveX)*size,y+240*size,30*size,h*size);
  
  rect(x+(50+moveX)*size,y+250*size,20*size,h*size); 
  rect(x+(80+moveX)*size,y+250*size,h*size,h*size); 
  rect(x+(100+moveX)*size,y+250*size,20*size,h*size);
  
  rect(x+(90+moveX)*size,y+260*size,20*size,h*size);
  rect(x+(120+moveX)*size,y+260*size,(80+80)*size,h*size);
  
  rect(x+(100+moveX)*size,y+270*size,h*size,h*size);
  rect(x+(120+moveX)*size,y+270*size,h*size,30*size);
  rect(x+(110+moveX)*size,y+280*size,20*size,h*size);
  
  //first teeth line
  rect(x+(150+moveX)*size,y+270*size,h*size,30*size);
  rect(x+(190+moveX)*size,y+270*size,h*size,30*size);
  rect(x+(230+moveX)*size,y+270*size,h*size,30*size);
  rect(x+(260+moveX)*size,y+270*size,h*size,30*size);
  
  rect(x+(mLeft+80+moveX)*size,y+250*size,40*size,h*size);
  rect(x+(mLeft+90+moveX)*size,y+240*size,h*size,30*size);
  rect(x+(mLeft+80+moveX)*size,y+270*size,h*size,h*size);
  rect(x+(mLeft+70+moveX)*size,y+280*size,h*size,h*size);
  
  rect(x+(130+moveX)*size,y+300*size,130*size,h*size);
  endShape();
}

void drawSansOutline(float x, float y, float size) {
//black outline
  fill(0);
  beginShape();
  rect(x+120*size,y+0*size,160*size,h*size);
  rect(x+(120-10+outX)*size,y+10*size,(80+110+longer)*size,h*size);
  rect(x+(100-10+outX)*size,y+20*size,(100+120+longer)*size,h*size);
  rect(x+(80-10+outX)*size,y+30*size,(120+140+longer)*size,h*size);
  rect(x+(60+outX)*size,y+40*size,(140+140+longer)*size,h*size);
  rect(x+(50+outX)*size,y+50*size,(150+150+longer)*size,h*size);
  rect(x+(40+outX)*size,y+60*size,((170+150)+longer)*size,h*size);
  rect(x+(30+outX)*size,y+70*size,((170+170)+longer)*size,h*size);

  rect(x+(20+outX)*size,y+80*size,(180+170+longer)*size,h*size);
  rect(x+(20+outX)*size,y+90*size,(180+170+longer)*size,h*size);
  rect(x+(20+outX)*size,y+100*size,(180+170+longer)*size,h*size);

  rect(x+(10+outX)*size,y+110*size,(190+180+longer)*size,h*size);
  rect(x+(10+outX)*size,y+120*size,(190+180+longer)*size,h*size);
  rect(x+(10+outX)*size,y+130*size,(190+180+longer)*size,h*size);
  rect(x+(10+outX)*size,y+140*size,(190+180+longer)*size,h*size);
  rect(x+(10+outX)*size,y+150*size,(190+180+longer)*size,h*size);
  rect(x+(10+outX)*size,y+160*size,(190+180+longer)*size,h*size);

  rect(x+(20+outX)*size,y+170*size,(180+170+longer)*size,h*size);
  rect(x+(20+outX)*size,y+180*size,(180+170+longer)*size,h*size);
  rect(x+(30+outX)*size,y+190*size,(170+160+longer)*size,h*size);

  rect(x+(40+outX)*size,y+200*size,(160+150+longer)*size,h*size);
  rect(x+(40+outX)*size,y+210*size,(160+150+longer)*size,h*size);
  rect(x+(40+outX)*size,y+220*size,((170+150)+longer)*size,h*size);
  
  rect(x+(30+outX)*size,y+230*size,(170+160+longer)*size,h*size);
  rect(x+(30+outX)*size,y+240*size,((170+170)+longer)*size,h*size);
  rect(x+(30+outX)*size,y+250*size,((170+170)+longer)*size,h*size);
  rect(x+(30+outX)*size,y+260*size,((170+170)+longer)*size,h*size);
  rect(x+(30+outX)*size,y+270*size,((170+170)+longer)*size,h*size);
  rect(x+(30+outX)*size,y+280*size,((170+170)+longer)*size,h*size);
  
  rect(x+(40+outX)*size,y+290*size,((170+150)+longer)*size,h*size);
  rect(x+(50+outX)*size,y+300*size,(160+140+longer)*size,h*size);
  rect(x+(60+outX)*size,y+310*size,(160+120+longer)*size,h*size);
  rect(x+(80-10+outX)*size,y+320*size,(160+90+longer)*size,h*size);
  rect(x+(100-10+outX)*size,y+330*size,(160+50+longer)*size,h*size);
  rect(x+100*size,y+340*size,190*size,h*size);
  endShape();
}


void sansFace0(float x, float y, float size) {
      fill(#7adff6);
       
      rect(x+(mLeft+80)*size,y+130*size,30*size,h*size);
      rect(x+(mLeft+70)*size,y+140*size,50*size,h*size);
      rect(x+(mLeft+60)*size,y+150*size,70*size,h*size);
      rect(x+(mLeft+70)*size,y+160*size,50*size,h*size);
      rect(x+(mLeft+80)*size,y+170*size,30*size,h*size);
      
      fill(0);
      rect(x+90*size,y+150*size,20*size,h*size);
      rect(x+90*size,y+160*size,20*size,h*size);
      rect(x+(mLeft+90)*size,y+150*size,h*size,h*size);
    }
void sansFace1(float x, float y,float size) {
  
      fill(250);
      rect(x+50*size,y+210*size,100*size,h*size);
      rect(x+50*size,y+200*size,100*size,h*size);
      rect(x+50*size,y+190*size,100*size,h*size);
      rect(x+50*size,y+190*size,100*size,h*size);
      rect(x+50*size,y+180*size,100*size,h*size);
    
      rect(x+(mLeft+50)*size,y+210*size,100*size,h*size);
      rect(x+(mLeft+50)*size,y+200*size,100*size,h*size);
      rect(x+(mLeft+50)*size,y+190*size,100*size,h*size);
      rect(x+(mLeft+50)*size,y+190*size,100*size,h*size);
      rect(x+(mLeft+50)*size,y+180*size,100*size,h*size);
    
      fill(0);
      //left pupil
      rect(x+90*size,y+150*size,20*size,h*size);
      rect(x+90*size,y+160*size,20*size,h*size);
        rect(x+130*size,y+180*size,h*size,h*size);
        rect(x+110*size,y+190*size,20*size,h*size);
    
      //right puipl
      rect(x+(mLeft+80)*size,y+150*size,20*size,h*size);
      rect(x+(mLeft+80)*size,y+160*size,20*size,h*size);
        rect(x+(mLeft+50)*size,y+180*size,h*size,h*size);
        rect(x+(mLeft+60)*size,y+190*size,20*size,h*size);
    
      //left pupil
      fill(250);
      rect(x+60*size,y+150*size,20*size,h*size);
      rect(x+60*size,y+160*size,20*size,h*size);
  
      //right puipl
      rect(x+(mLeft+50)*size,y+150*size,20*size,h*size);
      rect(x+(mLeft+50)*size,y+160*size,20*size,h*size);
      rect(x+(mLeft+80)*size,y+200*size,h*size,h*size);
        rect(x+(mLeft+70)*size,y+210*size,20*size,h*size);
  }
  void sansFace2(float x, float y, float size) {
  {
          fill(0);
      //left pupil
      rect(x+90*size,y-150*size,22*size,2+h*size);
      rect(x+90*size,y-160*size,22*size,2+h*size);

    
      //right puipl
      rect(x+(mLeft+80)*size,y-150*size,20*size,h*size);
      rect(x+(mLeft+80)*size,y-160*size,20*size,h*size);
    }
  }
