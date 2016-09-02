
	// int startX = 150;
	// Lightning l1 = new Lightning((int)(Math.random)*500),0,150,0);

/*
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
*/
Bolt l1;
Bolt l2;
Bolt l3;
Bolt l4;
Bolt l5;

void setup()
{
  size(500,500);
  strokeWeight(5);
	l1 = new Bolt((int)(Math.random()*500),0,150,0);
	l2 = new Bolt((int)(Math.random()*500),0,150,0);
	l3 = new Bolt((int)(Math.random()*500),0,150,0);
	l4 = new Bolt((int)(Math.random()*500),0,150,0);
	l5 = new Bolt((int)(Math.random()*500),0,150,0);
	
	background(0);

}
void draw()
{


l1.show();
l2.show();
l3.show();
l4.show();
l5.show();

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
	ellipse(230,350,10,10);
	ellipse(275,350,10,10);
	fill(238,128,99); //nose
	ellipse(250,375,40,40);
	noFill();
	stroke(110,171,92); //eyebrow
	strokeWeight(5);
	arc(230, 310, 15, 20, PI, 2*PI);
	arc(270, 310, 15, 20, PI, 2*PI);
	noStroke();
	fill(110,171,92); //mouth
	ellipse(250,400, 20,20);
	}
void mouseDragged()
{

l1.drag();
l2.drag();
l3.drag();
l4.drag();
l5.drag();
background(0);

	//happy person
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
	strokeWeight(5);
	arc(230, 310, 15, 15, PI, 2*PI);
	arc(270, 310, 15, 15, PI, 2*PI);
	arc(250,400,20,20,0, PI); //mouth

}

class Bolt

{
	int startA, startB, endA, endB;

	Bolt(int x1, int y1, int x2, int y2)
	{
		startA = x1;
		startB = y1;
		endA = x2;
		endB = y2;
	}

	void show()
	{
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255),200);

	while ( endB <= 500){
		endA = startA + (int)(Math.random()*18) - 9;
		endB = startB + (int)(Math.random()*9);

		line(startA,startB,endA,endB);

		startA = endA;
		startB = endB;
	}
	}	

	void drag()
	{
		startA = (int)(Math.random() * 500);
		startB = 0;
		endA = 150;
		endB = 0;

	}
}