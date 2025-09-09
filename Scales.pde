void setup() {
  size(500, 500);  //feel free to change the size
  background(150,100,100);
  noLoop();//stops the draw() function from repeating
}
int yy = 0;
int xx = 0;
void draw(){
  for(yy = 515; yy >= -10; yy -= 25)
    {
      for(xx = 515; xx >= 0; xx -= (int)random(12,18))
      {scale(xx,yy);
      println(xx);
      println(yy);}
  fill(0,0,0,15);
  rect(0,0,500,500);
  
}
}
void scale(int x, int y) {
  float X = random(-3,3);
  float Y = random(-3,3);
  fill(random(15,75),random(230,255),random(40,75));
  pushMatrix();
  translate(x,y);
  rotate(-PI/2 + random(-0.2, 0.2));
  for(float size = 1; size >= 0; size -= 0.1)
    bezier(size * X,size * Y, size * (45 + random(-3,3)), size * (40 + random(-3,3)), size * (60 + random(-3,3)),size * (-45 + random(-3,3)),size * X,size * Y);
    fill(random(15,75),random(230,255),random(40,75));
  popMatrix();
};
