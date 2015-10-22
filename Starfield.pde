double x, y, angle;
NormalParticle[] bob;
void setup()
{
	noStroke();
	background(0);
	size(500,500);
	x=250;
	y=250;
	angle=0;
	bob = new NormalParticle[40];
  	for (int i=0; i< bob.length; i++)
  	{
  	  bob[i] = new NormalParticle(x,y,Math.random()*3);
  	}
}
void draw()
{
	background(0);
	for (int i=0; i< bob.length; i++)
	{
		bob[i].move();
		bob[i].show();
	}
}
class NormalParticle
{
	double myX,myY,speed;
	int c;
	NormalParticle(double x, double y, double angle)
	{
		myX=x;
		myY=y;
		speed=2;
	}
	void move()
	{
		x = myX + (Math.cos((float)angle)*speed);
		y = myY + (Math.sin((float)angle)*speed);
		System.out.println(myX);
		myX=x;
		myY=y;
	}
	void show()
	{
		fill(255);
		ellipse((float)myX,(float)myY,10,10);
	}
}
interface Particle
{
	
}
class OddballParticle //uses an interface
{
	
}
class JumboParticle //uses inheritance
{
	
}

