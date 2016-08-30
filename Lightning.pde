	int startX = 150;
	int startY = 0;
	int endX = 150;
	int endY = 0;

void setup()
{
  size(500,500);
  strokeWeight(25);
  background(85,105,220);
}
void draw()
{
stroke((int)(Math.random()*114), (int)(Math.random()*188), (int)(Math.random()*80),20);
while ( endY <= 500){
	endX = startX + (int)(Math.random()*18) - 9;
	endY = startY + (int)(Math.random()*9);

	line(startX,startY,endX,endY);

	startX = endX;
	startY = endY;
	}
}

void mousePressed()
{
startX = (int)(Math.random() * 500);
startY = 0;
endX = 150;
endY = 0;
}

