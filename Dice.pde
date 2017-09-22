int total = 0;
int totalSum = 0;
void setup()
{
  size(600,700);
  noLoop();
  background(255);
}
void draw()
{
  background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  for(int x = 0; x < 601; x = x + 55)
  {
    for(int y =0; y < 601; y = y + 55)
    {

      Die uno = new Die(x,y);
      uno.show();
      uno.roll();

    }
  }
}
void mousePressed()
{
  totalSum = totalSum + total;
  redraw();
  
  total = 0;

}
class Die //models one single dice cube
{
  
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    if(totalSum <= 500)
    {
      totalSum = total;
    }
      
    fill(255);
    rect(dieX, dieY,49,49,10);
    fill(255,0,0);
    textSize(40);
    rect(20,610,250,70);
    fill(0);
    text("Total: " + total,40,660);
    fill(255,0,0);
    textSize(20);
    rect(320,610,260,70);
    fill(0);
    text("Total of All: " + totalSum,340,660);
  }
  void roll()
  {
    dieRoll = (int)(Math.random()*6)+1;
    if(dieRoll == 1)
    {
      fill(0);
      ellipse(dieX+25,dieY+25,10,10);
      total = total + 1;
    }
    else if(dieRoll == 2)
    {
      fill(0);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      total = total + 2;
    }
    else if(dieRoll == 3)
    {
      fill(0);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      total = total + 3;
    }
    else if(dieRoll == 4)
    {
      fill(0);
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      total = total + 4;
    }
    else if(dieRoll == 5)
    {
      fill(0);
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      total = total + 5;
    }
    else
    {
      fill(0);
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
      total = total + 6;
    }
  }
  

}