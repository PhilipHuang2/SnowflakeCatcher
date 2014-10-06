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
void mouseDragged()
{
  //your code here
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
    flakeY = 0;
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
    strokeWeight(5);
    stroke(colour[0],colour[1],colour[2]);
    point(flakeX, flakeY);
  }
  void lookDown()
  {
    if(get(flakeX,flakeY+5) == red)
    {
        stuck = true;
    } 
  }
  void erase()
  {
    strokeWeight(5);
    stroke(0);
    point(flakeX,flakeY);
  }
  void move()
  {
    if(stuck == true)
    {

    }
    else 
    {
        flakeY++;
        if(flakeX <5 || flakeX > 495 )
        {
             flakeX = 250 + 235*(flakeX-6)/abs(flakeX -6);
        } 
        else
          flakeX = flakeX +(int)(Math.random()*4-2);
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


