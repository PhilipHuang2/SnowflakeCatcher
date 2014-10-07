SnowFlake [] Philip;
void setup()
{
  size(500,500);
  background(0);
  Philip = new SnowFlake[50];
  for (int a = 0;  a < Philip.length; ++a) 
  {
    Philip[a] = new SnowFlake();
  }
}
void draw()
{
    for (int a = 0;  a < Philip.length; ++a) 
  {
      Philip[a].erase();
      Philip[a].wrap();
      
      Philip[a].move();

      Philip[a].lookDown(); 
      
      Philip[a].show();
  }
}
void keyPressed()
{
  background(0);
}
void mouseDragged()
{
  fill(255,0,0);
  noStroke();
  ellipse(mouseX,mouseY,10,10);
}

class SnowFlake
{
  int flakeX, flakeY;
  int[] colour = new int[3];
  color red;
  boolean stuck;
  SnowFlake()
  {
    flakeX = (int)(Math.random()*501);
    flakeY = (int)(Math.random()*-500);
    for(int a = 0; a < colour.length; a++)
    {
       colour[a] = 255;
    }
    red = color(255,0,0);
    stuck = false;

    // skyBlue = (28,107,160)
  }
  void show()
  {
    strokeWeight(14);
    stroke(colour[0],colour[1],colour[2]);
    point(flakeX, flakeY);
  }
  void lookDown()
  {
    if(get(flakeX,flakeY+14) == red)
    {
        stuck = true;
    } 
    else
      stuck = false;
  }
  void erase()
  {
    stroke(0);
    strokeWeight(18);
    stroke(5);
    point(flakeX,flakeY);
  }
  void move()
  {
    if(stuck == true)
    {

    }
    else 
    {
     
        flakeY=flakeY + (int)(Math.random()*3);
        if(flakeX <5 || flakeX > 495 )
        {
             flakeX = 250 + 235*(flakeX-6)/abs(flakeX -6);
        } 
        else
          flakeX = flakeX +(int)((Math.random()*8)-4);
    }
  }
  void wrap()
  {
    if(flakeY >= 500)
    {
      flakeY = 0;
    }
  }
}


