                          /* please implement your assign1 code in this file. */
  PImage fighterImg;
  PImage treasureImg;
  PImage hpImg;
  PImage enemyImg;
  PImage bg1Img;
  PImage bg2Img;
  PImage bg3Img;
  PImage bg4Img;
  int x,y,x1,y1,x2,y2,x3,y3;
 
void setup () {
  size(640,480) ;  // must use this size.
  // your code
 
 fighterImg=loadImage("img/fighter.png");
 treasureImg=loadImage("img/treasure.png");
 hpImg=loadImage("img/hp.png");
 enemyImg=loadImage("img/enemy.png");
 bg1Img=loadImage("img/bg1.png");//bg1
 bg2Img=loadImage("img/bg2.png");//bg2
 bg3Img=loadImage("img/bg1.png");//bg1
 bg4Img=loadImage("img/bg2.png");//bg2
 x=floor(random(600));
 y=floor(random(34,440));
 x1=floor(random(185));
 y1=30;
 x2=-640;//cordinate of bg1
 y2=0;//cordinate of bg2
 x3=-1920;
 y3=-1280;
 
}

void draw() {
  // your code
  background(0);
  image(bg1Img,x2,0);
  x2++;//bg1 move to right
  image(bg2Img,y2,0);
  y2++;//bg2 move to right
  image(bg1Img,x3,0);
  x3++;//bg1 move to right
  image(bg2Img,y3,0);
  y3++;//bg2 move to right
  //background cycle
  if(x2==0 && y2==640){
  x3=-1280;
  y3=-640;}
  if(x3==0 && y3==640){
  x2=-1280;
  y2=-640;}
  
  fill(#FF0000);
  rect(15,5,x1,15);
  image(hpImg,0,0);
  image(fighterImg,590,240);
  image(treasureImg,x,y);
  image(enemyImg,y1,150);
  y1+=5;
  y1%=640;
 } 
  
  
