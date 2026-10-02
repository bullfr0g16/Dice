 void setup()
  {
    size(500,500);
      noLoop();
  }
  void draw()
  {
      background(180,250,250);
      Die bob = new Die(50,50);
      bob.show();
      bob.roll();
      
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
          myX=y;
          myY=y;
      }
      void roll()
      {
        fill(0);
         dots = ((int)(Math.random()*6)+1);
         if (dots == 1)
           ellipse(myX+10, myY+10,5,5);
         if(dots==2)
         {
           ellipse(myX+10, myY+10,5,5);
           ellipse(myX+45, myY+10,5,5);
         }
        if (dots==3)
          {
            ellipse(myX+45, myY+10,5,5);
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+45, myY+45,5,5);
          }
        if (dots==4)
         {
           ellipse(myX+10, myY+10,5,5);
           ellipse(myX+45, myY+10,5,5);
           ellipse(myX+10,myY+45,5,5);
           ellipse(myX+45,myY+45,5,5);
         }
        if (dots==5)
         {
           ellipse(myX+32,myY+32,5,5);
           ellipse(myX+10, myY+10,5,5);
           ellipse(myX+45, myY+10,5,5);
           ellipse(myX+10,myY+45,5,5);
           ellipse(myX+45,myY+45,5,5);
         }
        else
         {
           ellipse(myX+10, myY+10,5,5);
           ellipse(myX+45, myY+32,5,5);
           ellipse(myX+10, myY+32,5,5);
           ellipse(myX+45, myY+10,5,5);
           ellipse(myX+10,myY+45,5,5);
           ellipse(myX+45,myY+45,5,5);
         }
      }
      void show()
      {
          fill(250,252,250);
          rect(myX,myY,55,55);
      }
  }
