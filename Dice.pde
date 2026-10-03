 void setup()
  {
    size(500,500);
      noLoop();
  }
  void draw()
  {
      int total=0;
      background(180,250,250);
      for(int j =50; j<=400; j=j+175)
        {
          for(int i=50; i<=400;i=i+175)
          {
            Die bob = new Die(j,i);
            bob.show();
            bob.roll();
            total=total+bob.dots;
          }
        }
        text("Total = " +total,250,30);
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      
      int myX;
      int myY;
      int dots;
      
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
      }
      void roll()
      {
        fill(0);
         dots = ((int)(Math.random()*6)+1);
         if (dots == 1)
           ellipse(myX+27.5, myY+27.5,5,5);
         else if(dots==2)
         {
           ellipse(myX+15, myY+27.5,5,5);
           ellipse(myX+40, myY+27.5,5,5);
         }
        else if (dots==3)
          {
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+27.5, myY+27.5,5,5);
            ellipse(myX+45, myY+45,5,5);
          }
        else if (dots==4)
         {
           ellipse(myX+15, myY+15,5,5);
           ellipse(myX+40, myY+15,5,5);
           ellipse(myX+15,myY+40,5,5);
           ellipse(myX+40,myY+40,5,5);
         }
        else if (dots==5)
         {
           ellipse(myX+15, myY+15,5,5);
           ellipse(myX+40, myY+15,5,5);
           ellipse(myX+15,myY+40,5,5);
           ellipse(myX+40,myY+40,5,5);
           ellipse(myX+27.5,myY+27.5,5,5);
         }
        else
         {
           ellipse(myX+15, myY+15,5,5);
           ellipse(myX+40, myY+27.5,5,5);
           ellipse(myX+15, myY+27.5,5,5);
           ellipse(myX+40, myY+15,5,5);
           ellipse(myX+15,myY+40,5,5);
           ellipse(myX+40,myY+40,5,5);
         }
      }
      void show()
      {
          fill(250,252,250);
          rect(myX,myY,55,55);
      }
  }
