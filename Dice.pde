int total = 0;
void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
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
	background(0);
	redraw();
	//background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
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
		fill(255);
		rect(dieX, dieY, 49,49,20);
		fill(0);
		textSize(100);
		text("total" + total,100,100);

	}
	void roll()
	{
		dieRoll = (int)(Math.random()*7);
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

