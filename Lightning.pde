	int startX = 150;
	int startY = 0;
	int endX = 150;
	int endY = 0;

	int startX1 = 150;
	int startY1 = 0;
	int endX1 = 150;
	int endY1 = 0;

	int startX2 = 150;
	int startY2 = 0;
	int endX2 = 150;
	int endY2 = 0;

void setup()
{
  size(500,500);
  strokeWeight(10);
  background(0);
}
void draw()
{
stroke((int)(Math.random()*114), (int)(Math.random()*188), (int)(Math.random()*80),150);
while ( endY <= 500){
	endX = startX + (int)(Math.random()*18) - 9;
	endY = startY + (int)(Math.random()*9);

	line(startX,startY,endX,endY);

	startX = endX;
	startY = endY;
	}

stroke((int)(Math.random()*255), (int)(Math.random()*195), (int)(Math.random()*0),80);
while ( endY1 <= 500){
	endX1 = startX1 + (int)(Math.random()*18) - 9;
	endY1 = startY1 + (int)(Math.random()*9);

	line(startX1,startY1,endX1,endY1);

	startX1 = endX1;
	startY1 = endY1;
	}

stroke((int)(Math.random()*199), (int)(Math.random()*0), (int)(Math.random()*57),80);
while ( endY <= 500){
	endX = startX + (int)(Math.random()*18) - 9;
	endY = startY + (int)(Math.random()*9);

	line(startX,startY,endX,endY);

	startX = endX;
	startY = endY;
	}
//scared person
noStroke();
fill(217,215,72); //body
quad(175, 350, 150, 500, 350, 500, 325, 350);
fill(218,247,166); //head
ellipse(250, 350, 150, 150);
fill(255); //white part of the eye
ellipse(230,350,50,50);
ellipse(275,350,50,50);
fill(160,220,222); //irises
ellipse(230,350,35,35);
ellipse(275,350,35,35);
fill(238,128,99); //nose
ellipse(250,375,40,40);
noFill();
stroke(110,171,92); //eyebrow
arc(230, 350, 65, 40, PI, 2*PI);
}
void mouseDragged()
{
startX = (int)(Math.random() * 500);
startY = 0;
endX = 150;
endY = 0;

startX1 = (int)(Math.random() * 500);
startY1 = 0;
endX1 = 150;
endY1 = 0;

startX2 = (int)(Math.random() * 500);
startY2 = 0;
endX2 = 150;
endY2 = 0;


background(0);
}