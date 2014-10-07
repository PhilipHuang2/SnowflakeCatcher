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

SnowFlake [] Philip;
public void setup()
{
  size(500,500);
  background(0);
  Philip = new SnowFlake[50];
  for (int a = 0;  a < Philip.length; ++a) 
  {
    Philip[a] = new SnowFlake();
  }
}
public void draw()
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
public void keyPressed()
{
  background(0);
}
public void mouseDragged()
{
  fill(255,0,0);
  noStroke();
  ellipse(mouseX,mouseY,10,10);
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
    flakeY = (int)(Math.random()*-500);
    for(int a = 0; a < colour.length; a++)
    {
       colour[a] = 255;
    }
    red = color(255,0,0);
    stuck = false;

    // skyBlue = (28,107,160)
  }
  public void show()
  {
    strokeWeight(14);
    stroke(colour[0],colour[1],colour[2]);
    point(flakeX, flakeY);
  }
  public void lookDown()
  {
    if(get(flakeX,flakeY+14) == red)
    {
        stuck = true;
    } 
    else
      stuck = false;
  }
  public void erase()
  {
    stroke(0);
    strokeWeight(18);
    stroke(5);
    point(flakeX,flakeY);
  }
  public void move()
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
  public void wrap()
  {
    if(flakeY >= 500)
    {
      flakeY = 0;
    }
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
