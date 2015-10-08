/* please implement your assign1 code in this file. */

 PImage fighterImg;
  PImage treasureImg;
  PImage hpImg;
  PImage enemyImg;
  PImage bg1Img;
  PImage bg2Img;
  int x,y,x1,y1,x2,y2;
void setup () {
  size(640,480) ;  // must use this size.
  // your code
  fighterImg=loadImage("fighter.png");
 treasureImg=loadImage("treasure.png");
 hpImg=loadImage("hp.png");
 enemyImg=loadImage("enemy.png");
 bg1Img=loadImage("bg1.png");
 bg2Img=loadImage("bg2.png");
 x=floor(random(630));
 y=floor(random(20,480));
 x1=floor(random(185));
 y1=30;
 x2=0;
 y2=640;
 
}

void draw() {
  // your code
   background(0);
  image(bg1Img,x2,0);
  image(bg2Img,y2,0);
  fill(#FF0000);
  rect(15,5,x1,15);
  image(hpImg,0,0);
  image(fighterImg,590,240);
  image(treasureImg,x,y);
  image(enemyImg,y1,150);
  y1++;
  y1%=640;
  x2--;
  //x2%=640;
  y2--;
  //y2%=640;
  
    if( x2 == -640 && y2 == 0 ){
      x2 = 0;
      y2 = 640;
    }
  
}
