Particle[] bob;
void setup()
{
	noStroke();
	background(0);
	size(500,500);
	
	bob = new Particle[300];
  	for (int i=0; i< bob.length; i++)
  	{
  	  bob[i] = new OddBallParticle(250,250);
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
void mousePressed()
{
	bob = new Particle[300];
  	for (int i=0; i< bob.length; i++)
  	{
  	  bob[i] = new OddballParticle(mouseX,mouseY);
  	}
}
class NormalParticle implements Particle
{
	double myX,myY,speed,angle;
	int r,g,b, size;
	NormalParticle(int x, int y)
	{
		myX=x;
		myY=y;
		speed=Math.random()*8+0.001;
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
		fill(r,g,b,100);
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
	OddballParticle(int x, int y)
	{
		myX=x;
		myY=y;
		speed=Math.random()*8+0.001;
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
		fill(r,g,b,100);
		ellipse((float)myX,(float)myY,size,size);
	}
}
class JumboParticle //uses inheritance
{
	
}

