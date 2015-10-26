NormalParticle[] bob;
void setup()
{
	noStroke();
	background(0);
	size(500,500);
	
	bob = new NormalParticle[200];
  	for (int i=0; i< bob.length; i++)
  	{
  	  bob[i] = new NormalParticle(250,250);
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
	double myX,myY,speed,angle;
	int c;
	NormalParticle(int x, int y)
	{
		myX=x;
		myY=y;
		speed=Math.random()*10+0.001;
		angle = Math.cos(Math.random()*2)*Math.PI*2;
	}
	void move()
	{
		myX = myX + (Math.cos((float)angle)*speed);
		myY = myY + (Math.sin((float)angle)*speed);
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

