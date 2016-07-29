PImage fighterImg;
PImage bgImg;
PImage bg2Img;
PImage EnemyImg;
PImage hpImg;
PImage TImg;

int x;
int y;
int w;
int n;
int q;
int p;
int bg2ImgX,bgImgX;
int enemyX,enemyY;
int treasureX,treasureY;


float enemyW=61;
float fighterW=51;
float treasureW=41;
float hp=floor(random(30,215));
float fighterX=640-fighterW,fighterY=floor(random(10,458));
float speed=3;

void setup(){
  size(640,480);
  x = 0;
  
  fighterImg = loadImage("IMG/fighter.png");
  bgImg = loadImage("IMG/bg1.png");
  bg2Img = loadImage("IMG/bg2.png");
  EnemyImg = loadImage("IMG/enemy.png");
  hpImg = loadImage("IMG/hp.png");
  TImg = loadImage("IMG/treasure.png");
  
  y = floor(random(500));
  w = floor(random(300));
  q = floor(random(200));
  
  colorMode(RGB);
color(234,34,34);

treasureX=floor(random(10,600));
treasureY=floor(random(10,308));
bgImgX=641;
bg2ImgX=0;
enemyX=0;
enemyY=floor(random(10,308));
}

void draw(){
  //bg
  image(bgImg,bgImgX-641,0);
  image(bg2Img,bg2ImgX-641,0);
  
  image(bgImg,n,0);
  
  
  image(fighterImg,580,220);
  image(EnemyImg,x,130);
  x %= 640;
  
  stroke(255);
  fill(#ff0000);
  rect(5,5,q,20);
  
  image(hpImg,0,0);
  image(TImg,y,w);
  x += 2;
  n += 1;
  
  bgImgX++;
  bgImgX%=1282;
  bg2ImgX++;
  bg2ImgX%=1282;
  enemyX+=3;
  enemyX%=640; 
}
