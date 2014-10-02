void setup()
{
  size(500,500);
  background(0);
}
void draw()
{
  //your code here
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
       colour[a] = 0;
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
          
        } 
    }
  }
  void wrap()
  {
    //your code here
  }
}


