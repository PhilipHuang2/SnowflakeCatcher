import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SnowflakeCatcher extends PApplet {

public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  //your code here
}
public void mouseDragged()
{
  //your code here
}

class SnowFlake
{
  int flakeX, flakeY;
  int[] colour = new int[3];
  int red;
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
  public void show()
  {
    strokeWeight(5);
    stroke(colour[0],colour[1],colour[2]);
    point(flakeX, flakeY);
  }
  public void lookDown()
  {
    if(get(flakeX,flakeY+5) == red)
    {
        stuck = true;
    } 
  }
  public void erase()
  {
    strokeWeight(5);
    stroke(0);
  }
  public void move()
  {
    //your code here
  }
  public void wrap()
  {
    //your code here
  }
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SnowflakeCatcher" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
