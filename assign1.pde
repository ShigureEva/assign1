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

void setup(){
  size(640,480);
  x = 0;
  
  fighterImg = loadImage("img/fighter.png");
  bgImg = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  EnemyImg = loadImage("img/enemy.png");
  hpImg = loadImage("img/hp.png");
  TImg = loadImage("img/treasure.png");
  
  y = floor(random(500));
  w = floor(random(300));
  q = floor(random(200));

}

void draw(){
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
}
