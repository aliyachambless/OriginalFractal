int tSize = 400;
public void setup(){
	size(500,500);
	background(0);
}
public void draw(){
	Fractal(250 - tSize/2, 450, tSize);
	tSize += 5;
	if(tSize > 1200)
		tSize = 400;
}
public void Fractal(int x, int y, int len){
	if(len >= 2){
		noStroke();
		fill(255, len/3, len/8);
		triangle(x, y, x+len, y, x+len/2, (int)(y-(Math.sqrt(3)*len/2)));
		Fractal(x + len/6, (int)(y-(Math.sqrt(3)*len/2)), len/3);
		Fractal(x + 3*len/6, (int)(y-(Math.sqrt(3)*len/2)), len/3);
		Fractal(x + len/3, y, len/3);
	}
	else{
		noStroke();
		fill(255, len/3, len/8);
		triangle(x, y, x+len, y, x+len/2, (int)(y-(Math.sqrt(3)*len/2)));
	}
}