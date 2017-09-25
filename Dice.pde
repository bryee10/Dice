int total = 0;
int totalSum = 0;
void setup()
{
  size(600,700);
  noLoop();
  background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
}
void draw()
{
  //changes background every click
  background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  //rows and columns
  for(int x = 0; x < 601; x = x + 55)
  {
    for(int y = 0; y < 601; y = y + 55)
    {
      //creates new die from class Die
      Die uno = new Die(x,y);
      uno.show();
      uno.roll();
      uno.totalandtotalSumBox();
    }
  }
}int total = 0;
int totalSum = 0;
void setup()
{
  size(600,700);
  noLoop();
  background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
}
void draw()
{
  //changes background every click
  background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  //rows and columns
  for(int x = 0; x < 601; x = x + 55)
  {
    for(int y = 0; y < 601; y = y + 55)
    {
      //creates new die from class Die
      Die uno = new Die(x,y);
      uno.show();
      uno.roll();
      uno.totalandtotalSumBox();
    }
  }
}
void mousePressed()
{
  redraw(); 
  //reset total
  total = 0;
}
class Die //draws one die
{
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    //die background
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    rect(dieX, dieY,49,49,10);
  }
  void roll()
  {
    //die dots
    //roll number
    dieRoll = (int)(Math.random()*6)+1;
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    //drawing the dots depending on dieRoll number
    if(dieRoll == 1)
    {
      ellipse(dieX+25,dieY+25,10,10);
      total = total + 1;
      totalSum = totalSum + 1;
    }
    else if(dieRoll == 2)
    {
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      total = total + 2;
      totalSum = totalSum + 2;
    }
    else if(dieRoll == 3)
    {
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      total = total + 3;
      totalSum = totalSum + 3;
    }
    else if(dieRoll == 4)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      total = total + 4;
      totalSum = totalSum + 4;  
    }
    else if(dieRoll == 5)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      total = total + 5;
      totalSum = totalSum + 5;
    }
    else
    {
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
      total = total + 6;
      totalSum = totalSum + 6; 
    }
  }
  void totalandtotalSumBox()
  {
    //total box and num
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    textSize(35);
    rect(20,610,250,70);
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    text("Total: " + total,30,660);
    
    //totalSum box and num
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    textSize(35);
    rect(280,610,300,70);
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    text("All Rolls: " + totalSum,290,660);
  }
}
void mousePressed()
{
  redraw(); 
  //reset total
  total = 0;
}
class Die //draws one die
{
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    //die background
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    rect(dieX, dieY,49,49,10);
  }
  void roll()
  {
    //die dots
    //roll number
    dieRoll = (int)(Math.random()*6)+1;
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    //drawing the dots depending on dieRoll number
    if(dieRoll == 1)
    {
      ellipse(dieX+25,dieY+25,10,10);
      total = total + 1;
      totalSum = totalSum + 1;
    }
    else if(dieRoll == 2)
    {
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      total = total + 2;
      totalSum = totalSum + 2;
    }
    else if(dieRoll == 3)
    {
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      total = total + 3;
      totalSum = totalSum + 3;
    }
    else if(dieRoll == 4)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      total = total + 4;
      totalSum = totalSum + 4;  
    }
    else if(dieRoll == 5)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      total = total + 5;
      totalSum = totalSum + 5;
    }
    else
    {
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
      total = total + 6;
      totalSum = totalSum + 6; 
    }
  }
  void totalandtotalSumBox()
  {
    //total box and num
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    textSize(35);
    rect(20,610,250,70);
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    text("Total: " + total,30,660);
    
    //totalSum box and num
    stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    textSize(35);
    rect(280,610,300,70);
    fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
    text("All Rolls: " + totalSum,290,660);
  }
}