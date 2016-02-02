public void setup(){
	size(500,500);
	background(0);
	noLoop();
}
public void draw(){
	Fractal(50, 450, 400);
}
public void Fractal(int x, int y, int len){
	if(len >= 2){
		noStroke();
		fill((int)(255*(Math.random())),200,100);
		triangle(x, y, x+len, y, x+len/2, (int)(y-(Math.sqrt(3)*len/2)));
		Fractal(x + len/6, y - (int)(y-(Math.sqrt(3)*len/2))/2, len/3);
		Fractal(x + 3*len/6, y - (int)(y-(Math.sqrt(3)*len/2))/2, len/3);
		Fractal(x + len/3, y, len/3);
	}
	else{
		noStroke();
		fill((int)(255*(Math.random())),200,50);
		triangle(x, y, x+len, y, x+len/2, (int)(y-(Math.sqrt(3)*len/2)));
	}
}