Particle[] bob;
int n;
double a = 0;
void setup()
{
	noStroke();
	background(0);
	size(500,500);
	
	bob = new Particle[900];
  	for (int i=0; i< bob.length; i++)
  	{
  		if (i>0 && i< bob.length/3)
  		{
  			bob[i] = new JumboParticle();
  		}
  		else if (i>bob.length/3 && i< bob.length*2/3)
  		{
  			bob[i] = new NormalParticle();
  		}
  		else
  		{
  			bob[i] = new OddballParticle();
  		}
  	}
  	n = 2*bob.length/3 + 1;
}
void draw()
{
	background(0);
	bob[0].move();
	bob[0].show();
	for (int i=0; i< 2*bob.length/3; i++)
	{
		bob[i].move();
		bob[i].show();
	}
	for (int i= 2*bob.length/3 + 1; i< n; i++)
	{
		bob[i].move();
		bob[i].show();
	}
	if ( n < bob.length )
	{
		n = n + 1;
	}
}
void mousePressed()
{
	n = 2*bob.length/3 + 1;
	a = 0;
	bob = new Particle[900];
  	for (int i=0; i< bob.length; i++)
  	{
  		if (i>0 && i< bob.length/3)
  		{
  			bob[i] = new JumboParticle();
  		}
  		else if (i>bob.length/3 && i< bob.length*2/3)
  		{
  			bob[i] = new NormalParticle();
  		}
  		else
  		{
  			bob[i] = new OddballParticle();
  		}
  	}
}
class NormalParticle implements Particle
{
	double myX,myY,speed,angle;
	int r,g,b, size;
	NormalParticle()
	{
		myX=250;
		myY=250;
		speed=Math.random()*4+0.001;
		angle = Math.cos(Math.random()*2)*Math.PI*2;
		size = (int)(Math.random()*30)+5;
		r = (int)(Math.random()*256);
		g = (int)(Math.random()*256);
		b = (int)(Math.random()*256);
	}
	public void move()
	{
		myX = myX + (Math.cos((float)angle)*speed);
		myY = myY + (Math.sin((float)angle)*speed);
	}
	public void show()
	{
		fill(r,g,b,80);
		ellipse((float)myX,(float)myY,size,size);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	double myX,myY,speed,angle;
	int r,g,b, size;
	OddballParticle()
	{
		myX=250;
		myY=250;
		speed=Math.random()*5+2.001;
		angle = Math.cos(a)*Math.PI*2;
		size = (int)(Math.random()*10)+18;
		r = (int)(Math.random()*256);
		g = (int)(Math.random()*256);
		b = (int)(Math.random()*256);
		a = a + 0.015;
	}
	public void move()
	{
		myX = myX + (Math.cos((float)angle)*speed);
		myY = myY + (Math.sin((float)angle)*speed);
	}
	public void show()
	{
		fill(r,g,b,200);
		ellipse((float)myX,(float)myY,size,size);
	}
}
class JumboParticle extends OddballParticle //uses inheritance
{
	JumboParticle()
	{
		speed = 2;
		size = 30;
	}
	public void show()
	{
		fill(r,g,b, 100);
		ellipse((float)myX,(float)myY,size,size);
	}
}

